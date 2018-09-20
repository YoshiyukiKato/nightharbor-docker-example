const {SimpleLoader} = require("nightharbor/loader");
const {SimpleReporter} = require("nightharbor/reporter");

module.exports = {
  loaders: [
    new SimpleLoader([
      { url: "https://google.com" }
    ])
  ],
  
  reporters: [
    new SimpleReporter()
  ],
  
  puppeteerConfig: {
    executablePath: process.env.CHROME_BIN || null,
    args: [
      '--no-sandbox',
      '--disable-gpu',
      '--disable-dev-shm-usage'
    ]
  }
};