var exec = require('cordova/exec');

var noop = function() {};

module.exports = {

  login: function(success, error) {

    success = success || noop;
    error = error || noop;

    exec(success, error, "Digits", "login", []);

  }

};
