var easyusb = require('easyusb');
var device = easyusb('0x16c0:0x05df');

console.log(device);
device.read(1, function(err, data) {
  if (err) {
    console.error(err);
    return device.close();
  }

  console.log('read data: ', data);
  device.close();
});

