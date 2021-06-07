const { environment } = require('@rails/webpacker')

const customCongig = {
  resolve:{
    fallback: {
      dgram: false,
      fs: false,
      net: false,
      tls: false,
      child_process: false
    }
  }
};

  environment.config.delete('node.dgram')
  environment.congig.delete('node.fs')
  environment.config.delete('node.net')
  environment.config.delete('node.tls')
  environment.config.delete('node.child_process')

  environment.config.merge(customConfig);

module.exports = environment
