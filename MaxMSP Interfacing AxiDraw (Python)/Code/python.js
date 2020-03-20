const maxApi = require('max-api');
let {
  PythonShell
} = require('python-shell')

let args = 'insert';

maxApi.addHandler('input', (xlin, ylin, xmov, ymov) => {
  //maxApi.outlet(vari);

  let options = {
    mode: 'text',
    pythonPath: '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3',
    pythonOptions: ['-u'], // get print results in real-time
    scriptPath: '/Users/Pacour/Developer/Aufbau/MaxMSP Interfacing AxiDraw (Python)/Code',
    args: [xlin, ylin, xmov, ymov]
  };

  PythonShell.run('Hello.py', options, function(err, results) {
    if (err) throw err;
    //results is an array consisting of messages collected during execution
    maxApi.outlet(results);
  });
});
