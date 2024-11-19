const playwright = require("playwright")
(async() =>{
   const launchOptions = {
       headless: false,
     }
   const browser = await playwright["chromium"].launch(launchOptions)
   const context = await browser.newContext()
   const page = await context.newPage()
   await page.route(/(png|jpeg|jpg|svg)$/, route => route.abort())
   await page.route('**/*', async route => {
              const response = await route.fetch();
              let body = await response.text();
              body = body.replace('<title>', '<title>Modified Response: ');
              route.fulfill({
                      response,
                      body,
                      headers: {
                              ...response.headers(),
                              'content-type': 'text/html'
                      }
               })
   })
   await page.goto('https://zeiss.com');
   await browser.close()
})