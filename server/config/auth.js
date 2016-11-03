var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var userService = require('../services/userService');

// Authenticate Service
var auth = {};
auth.setup = function (app) {

    app.use(passport.initialize());

    passport.use(new LocalStrategy(
        function (username, password, done) {
            var data = {
                success: userService.authenticate(username, password)
            };
            console.log('Verify Username & Password ...');
            return done(null, data);
        }
    ));
};

auth.verifySecurity = function () {
    console.log('verifySecurity() ...');
};

module.exports = auth;