module.exports = {
  networks: {
    ganache: {
      protocol: 'http',
      host: 'localhost',
      port: 7545,
      gas: 5000000,
      gasPrice: 5e9,
      networkId: '5777',
    },
  },
};
