const maxApi = require('max-api');
let {PythonShell} = require('python-shell')

let options = {
  mode: 'text',
  pythonPath: '/usr/bin/python',
  pythonOptions: ['-u'], // get print results in real-time
  scriptPath: '/Users/Pacour/Developer/Aufbau/MaxMSP Interfacing AxiDraw (Python)/Code',
  args: ['value1', 'value2', 'value3']
};

PythonShell.run('Hello.py', options, function (err, results) {
  if (err) throw err;
  // results is an array consisting of messages collected during execution
  maxApi.outlet(results);
});
