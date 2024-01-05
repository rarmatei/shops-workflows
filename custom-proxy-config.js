const https = require('node:https');

const selfSignedConfig = (nxDefaultConfig) => ({
  ...nxDefaultConfig,
  proxy: false,
  httpsAgent: new https.Agent({
    rejectUnauthorized: false
  })
});

module.exports = {
  nxCloudProxyConfig: selfSignedConfig,
  fileServerProxyConfig: selfSignedConfig,
}
