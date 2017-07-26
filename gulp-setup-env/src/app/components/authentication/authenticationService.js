(function () {
    'use strict';
    app.factory('authenticationService', authenticationService);
    authenticationService.$inject = ['$http', '$rootScope', '$q', '$cookieStore', 'Base64'];
    function authenticationService($http, $rootScope, $q, $cookieStore, Base64) {
        // constructor
        var authenticationService = function () {
        }

        //authenticationService.prototype.loginClientSide = function (username, password) {
        //    /* Use this for test at client side */
        //    var q = $q.defer();
        //    var response = { success: username === 'admin' && password === '@dmin' };
        //    if (!response.success) {
        //        response.message = 'Username or password is incorrect';
        //    }
        //    q.resolve(response);
        //    return q.promise;
        //};        

        authenticationService.prototype.login = function (username, password) {           
            /* Use this for test at server side: /api/user/authenticate */
            var q = $q.defer();            
            $http.post('/api/login', { username: username, password: password }).success(function (result) {
                q.resolve(result);
            }).error(function (result) {
                q.reject(result);
            });
            return q.promise;
        };

        authenticationService.prototype.setCredentials = function (user) {            
            $rootScope.globals = {
                currentUser: {
                    username: user.username,
                    authdata: user.token
                },
				authorized: true
            };			
            $http.defaults.headers.common['Authorization'] = $rootScope.globals.currentUser.authdata; // jshint ignore:line			
            $cookieStore.put('globals', $rootScope.globals);
        };

        authenticationService.prototype.clearCredentials = function () {
            $rootScope.globals = {};
            $cookieStore.remove('globals');
            $http.defaults.headers.common.Authorization = 'Basic ';
        };

        return new authenticationService;
    };
})();

(function () {
    'use strict';
    app.factory('Base64', Base64);

    function Base64() {
        /* jshint ignore:start */
        var keyStr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';

        return {
            encode: function (input) {
                var output = "";
                var chr1, chr2, chr3 = "";
                var enc1, enc2, enc3, enc4 = "";
                var i = 0;

                do {
                    chr1 = input.charCodeAt(i++);
                    chr2 = input.charCodeAt(i++);
                    chr3 = input.charCodeAt(i++);

                    enc1 = chr1 >> 2;
                    enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                    enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                    enc4 = chr3 & 63;

                    if (isNaN(chr2)) {
                        enc3 = enc4 = 64;
                    } else if (isNaN(chr3)) {
                        enc4 = 64;
                    }

                    output = output +
                        keyStr.charAt(enc1) +
                        keyStr.charAt(enc2) +
                        keyStr.charAt(enc3) +
                        keyStr.charAt(enc4);
                    chr1 = chr2 = chr3 = "";
                    enc1 = enc2 = enc3 = enc4 = "";
                } while (i < input.length);

                return output;
            },

            decode: function (input) {
                var output = "";
                var chr1, chr2, chr3 = "";
                var enc1, enc2, enc3, enc4 = "";
                var i = 0;

                // remove all characters that are not A-Z, a-z, 0-9, +, /, or =
                var base64test = /[^A-Za-z0-9\+\/\=]/g;
                if (base64test.exec(input)) {
                    window.alert("There were invalid base64 characters in the input text.\n" +
                        "Valid base64 characters are A-Z, a-z, 0-9, '+', '/',and '='\n" +
                        "Expect errors in decoding.");
                }
                input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

                do {
                    enc1 = keyStr.indexOf(input.charAt(i++));
                    enc2 = keyStr.indexOf(input.charAt(i++));
                    enc3 = keyStr.indexOf(input.charAt(i++));
                    enc4 = keyStr.indexOf(input.charAt(i++));

                    chr1 = (enc1 << 2) | (enc2 >> 4);
                    chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
                    chr3 = ((enc3 & 3) << 6) | enc4;

                    output = output + String.fromCharCode(chr1);

                    if (enc3 != 64) {
                        output = output + String.fromCharCode(chr2);
                    }
                    if (enc4 != 64) {
                        output = output + String.fromCharCode(chr3);
                    }

                    chr1 = chr2 = chr3 = "";
                    enc1 = enc2 = enc3 = enc4 = "";

                } while (i < input.length);

                return output;
            }
        };
        /* jshint ignore:end */
    }
})();