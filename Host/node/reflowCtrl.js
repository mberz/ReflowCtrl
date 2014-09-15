var util = require('util');
var events = require('events');
var clc = require('cli-color');
var HID = require('./lib/node-hid');

var controllers = HID.devices(0x16c0, 0x05df);

if(controllers.length > 1){
	console.error("You can not controll two or more ovens.");
	process.exit(1);
}
if(controllers.length < 1){
	console.error("There is no oven detected on your usb.");
	process.exit(1);
}

var oven = controllers.shift();

console.log("Using "+ clc.bold(oven.product) +" from "+ clc.bold(oven.manufacturer) +"");

var device = new HID.HID(oven.path);

device.on("data", function(data) {
	console.log( clc.blue(data) );
});

device.on("error", function(data) {
	console.error( clc.red(data) );
});

device.resume();
console.log(device);

device.write([0x01, 0x00, 0x00, 0x00]);

device.read(function(err, data){
	if(err){ console.log( clc.red(err) ); }
	console.log( clc.blue(data) );
});

console.log('features', device.getFeatureReport(0xf2, 17));
