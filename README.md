# Screenshot Webpage - API
API created to provide a easily way to get screenshot fast to webpages.

## How to use
In a computer with NodeJS in LTS version installed, follow theses steps:
- Execute `npm start` and;
- Enjoy it! :)

## How it work
We use the Playwright library to access the webpage and get a screenshot.

## Tips for DEVS
You can use `https://api.screenshotwebpage.com/capture/:encodedURL` and get the capture of the website.

Or you can use `https://api.screenshotwebpage.com/capture/:encodedURL?fullpage=true` to get the full page screenshot.

Or you can use `https://api.screenshotwebpage.com/capture/:encodedURL?download=true` to get the download link.

Being the :encodeURL the encoded URL of the website.
