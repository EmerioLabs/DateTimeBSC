const HDWalletProvider = require('@truffle/hdwallet-provider')
const secrets = require('./secrets.json')


module.exports = {
  networks: {
    development: {
      host: '127.0.0.1',
      port: 8545,
      network_id: '*'
    },
    testnet: {
      provider: () => new HDWalletProvider(secrets.mnemonic, 'https://data-seed-prebsc-1-s1.binance.org:8545', secrets.addressIndex),
      network_id: 97,
      confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true,
      networkCheckTimeout: 999999
    },
    bsc: {
      provider: () => new HDWalletProvider(secrets.mnemonic, 'https://bsc-dataseed.binance.org', secrets.addressIndex),
      network_id: 56,
      confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true,
      networkCheckTimeout: 999999
    }
  },
  mocha: {},
  compilers: {
    solc: {
      version: '0.8.9'
    }
  },
  plugins: [
    'truffle-plugin-verify'
  ],
  api_keys: {
    bscscan: secrets.api_keys.bscscan
  }
}
