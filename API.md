# Website thumbnail generator - A 'Screenshot Webpage API' Documentation

Capture website snapshots effortlessly with our powerful URL screenshot API! Whether you need automated webpage capture, headless browser screenshots, or webpage thumbnail generation, our service has you covered. Simply integrate our API to seamlessly generate website images programmatically. Say goodbye to manual screenshotting and hello to effortless webpage snapshots with our intuitive tool. Try our website screenshot service today!

## Endpoints

### GET `/capture`

#### Query params:
 - url **REQUIRED**:
   
   An URL of website that you want to get screenshot. It is recommended encoded in base64.
   
 - fullpage **OPTIONAL**:
   
   `true` Defines that the screenshot will be of the fullpage
   
   !=`true` Defines that the screenshot will be 1280x720

 - download **OPTIONAL**:
   
   `true` Defines to the browser to download the screenshot
   
   !=`true` Defines to the browser only show the screenshot

#### Request Example:
GET https://api.screenshotwebpage.com/capture?url=https://www.github.com/

#### Response Example:
![A Response Example](https://api.screenshotwebpage.com/capture?url=https://www.github.com/)

#### Response Example When Error:
![A Response Example](https://api.screenshotwebpage.com/capture)
