app.run(['$rootScope', '$location', '$cookieStore', '$http', 'userService', 'authenticationService',
    function ($rootScope, $location, $cookieStore, $http, userService, authenticationService) {		
		// keep user logged in after page refresh
        $rootScope.globals = $cookieStore.get('globals') || {};
        $rootScope.settings = $cookieStore.get('settings') || {};
		if ($rootScope.globals.currentUser) {
			$http.defaults.headers.common['Authorization'] = $rootScope.globals.currentUser.authdata; // jshint ignore:line						
		}		
						
		$rootScope.$on('$locationChangeStart', function (event, next, current) {			
			// redirect to login page if not logged in
			if ($location.path() !== '/login' && !$rootScope.globals.currentUser) {
				$location.path('/login');				
			} else if ($location.path() === '') {
				$location.path('/login');				
			} else {
				console.log('app is running ...');				
				if ($rootScope.globals && $rootScope.globals.currentUser) {
					$rootScope.setupUI();
				}				
			}
		});

		// set up UI
		$rootScope.setupUI = function () {
			// get navigation
			userService.getMenu().then(function (result) {
				$rootScope.settings.navigation = result;				
			}, function (error) {
				console.log(error);
			});
			
			// get user profile
			userService.getProfile().then(function (result) {
				$rootScope.settings.profile = result;				
			}, function (error) {
				console.log(error);
			});
		}

		// logout
		$rootScope.logout = function () {
			authenticationService.clearCredentials();
		};
	}
]);