var sys = require('sys'),
	 	child_process = require('child_process');

var vnc_endpoint = process.env.VNC_ENDPOINT || '127.0.0.1:5900';

console.log('Launching VNC Proxy on Endpoint: ' + vnc_endpoint);
var ps_proxy = child_process.spawn('./proxy/launch.sh', ['--vnc', vnc_endpoint]);

ps_proxy.stdout.on('data', function (data) {
  console.log('VNC_PROXY: ' + data);
});

ps_proxy.stderr.on('data', function (data) {
  console.error(data);
});

ps_proxy.on('close', function (code) {
  console.log('Proxy closed ' + code);
});