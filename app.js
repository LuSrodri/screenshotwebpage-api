require('dotenv').config();
const express = require('express')
const app = express();
const cors = require('cors');
app.disable('x-powered-by');
app.use(cors());
const port = process.env.PORT || 3000;
const { chromium } = require('playwright-chromium');
const { v4: uuidv4 } = require('uuid');

app.get('/capture/:encodedURL', async (req, res) => {
    const urlToCapture = req.params.encodedURL;
    const fullPage = ((req.query.fullpage && req.query.fullpage.toLowerCase() === 'true'));
    const download = ((req.query.download && req.query.download.toLowerCase() === 'true'));
    const id = uuidv4();
    const browser = await chromium.launch();
    const context = await browser.newContext();
    const page = await context.newPage();
    
    try {
        await page.goto(urlToCapture);
        await page.screenshot({ path: (id + '.png'), fullPage });

        if (download) res.download(`${__dirname}/${id}.png`, 'screenshotwebpage_com.png', {maxAge: (7*24*60*60*1000)});
        else res.sendFile(`${__dirname}/${id}.png`, {maxAge: (7*24*60*60*1000)});
    }
    catch (e) {
        console.log(e);
        res.statusCode = 404;

        res.sendFile(`${__dirname}/pageNotFound.png`, {maxAge: (30*24*60*60*1000)});
    }
    await browser.close();
    return;
});

app.listen(port, () => console.log(`App listening on port ${port}`));