var easyusb = require('easyusb');
var device = easyusb('0x16c0:0x05df');

device.read(function(err, data) {
  if (err) {
    console.error(err);
    return device.close();
  }

  console.log('read data: ', data);
  device.close();
});

