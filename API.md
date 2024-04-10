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
GET https://localhost:3000/capture?url=https://www.github.com/

#### Response Example:
![A Response Example](/screenshotwebpage_com.png)

#### Response Example When Error:
![A Response Example](/pageNotFound.png)
