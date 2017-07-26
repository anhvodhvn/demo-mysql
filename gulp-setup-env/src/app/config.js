var app = angular.module('cargo', [
	'ngCookies',
	'ui.router',
	'mega-menu',
	'cargo.directives.megaMenu',
	'cargo.directives.searchControl',
	'cargo.directives.customDirectives'
]);

app.config(function ($stateProvider) {
	$stateProvider
	.state('/', {
		url: '/',
		views: {
			'view': {
				templateUrl: '/app/views/home.tpl.html'
			}
		}
	})
	.state('brand', {
		url: '/brand',
		views: {
			'view': {
				templateUrl: '/app/components/brand/views/brand.tpl.html',
				controller: 'brandController'
			}
		}
	})
	.state('brandCreate', {
        url: '/brand/create',
        parentState: 'brand',
		views: {
			'view': {
				templateUrl: '/app/components/brand/views/brandDetail.tpl.html',
				controller: 'BrandDetailController'
			}
		}
	})
	.state('brandDetail', {
        url: '/brand/:brandId',
        parentState: 'brand',
		views: {
			'view': {
				templateUrl: '/app/components/brand/views/brandDetail.tpl.html',
				controller: 'BrandDetailController'
			}
		}
	})
	.state('product', {
		url: "/product",
		views: {
			"view": {
				templateUrl: "/app/components/product/views/product.tpl.html",
				controller: "ProductController",
				controllerAs: 'vm'
			}
		}
	}).state('productDetail', {
        url: "/product/:productID",
        parentState: 'product',
		views: {
			"view": {
				templateUrl: "/app/components/product/views/productDetail.tpl.html",
				controller: "productDetailController",
				controllerAs: 'vm'
			}
		}
	}).state('reviewProduct', {
		url: "/review/:productID",
		views: {
			"view": {
				templateUrl: "/app/components/product/views/productReview.tpl.html",
				controller: "productReviewController"
			}
		}
	})
    .state('cashIn', {
        url: "/cash/cashIn",
        views: {
            "view": {
                templateUrl: "/app/components/cash/views/cashIn.tpl.html",
                controller: "cashInController",
                controllerAs: 'vm'
            }
        }
    })
    .state('cashInDetail', {
        url: "/cash/cashIn/:transactionID",
        parentState: 'cashIn',
        views: {
            "view": {
                templateUrl: "/app/components/cash/views/cashInDetail.tpl.html",
                controller: "cashInDetailController",
                controllerAs: 'vm'
            }
        }
    })
	.state('cashOut', {
		url: "/cash/cashOut",
		views: {
			"view": {
				templateUrl: "/app/components/cash/views/cashOut.tpl.html",
				controller: "cashOutController",
				controllerAs: 'vm'
			}
		}
    })
    .state('cashOutDetail', {
        url: "/cash/cashOut/:transactionID",
        parentState: 'cashOut',
        views: {
            "view": {
                templateUrl: "/app/components/cash/views/cashOutDetail.tpl.html",
                controller: "cashOutDetailController",
                controllerAs: 'vm'
            }
        }
	})
	.state('cashReport', {
		url: "/cashReport",
		views: {
			"view": {
				templateUrl: "/app/components/cash/views/cashReport.tpl.html"
			}
		}
	})
	.state('inventory', {
		url: "/inventory",
		views: {
			"view": {
				templateUrl: "/app/components/inventory/views/inventory.tpl.html"
			}
		}
	})
	.state('stockIn', {
		url: "/stockIn",
		views: {
			"view": {
				templateUrl: "/app/components/inventory/views/stockIn.tpl.html",
				controller: "stockInController",
			}
		}
	})
	.state('stockOut', {
		url: "/stockOut",
		views: {
			"view": {
				templateUrl: "/app/components/inventory/views/stockOut.tpl.html",
				controller: "stockOutController",
			}
		}
	})
	.state('stockBalance', {
		url: "/stockBalance",
		views: {
			"view": {
				templateUrl: "/app/components/inventory/views/stockBalance.tpl.html"
			}
		}
	})
	.state('stockReport', {
		url: "/stockReport",
		views: {
			"view": {
				templateUrl: "/app/components/inventory/views/stockReport.tpl.html"
			}
		}
	})
	.state('account', {
		url: "/account",
		views: {
			"view": {
				templateUrl: "/app/components/account/views/account.tpl.html",
				controller: "accountController",
				controllerAs: 'vm'
			}
		}
	})
	.state('accountDetail', {
		url: '/account/:accountID',
		parentState: 'account',
		views: {
			"view": {
				templateUrl: "/app/components/account/views/accountDetail.tpl.html",
				controller: "accountDetailController",
				controllerAs: 'vm'
			}
		}
	})
	.state('user', {
		url: "/user",
		views: {
			"view": {
				templateUrl: "/app/components/user/views/user.tpl.html",
				controller: "UserController",
				controllerAs: 'vm'
			}
		}
	})
	.state('userDetail', {
		url: '/user/:userID',
		views: {
			"view": {
				templateUrl: "/app/components/user/views/userDetail.tpl.html",
				controller: "UserDetailController",
				controllerAs: 'vm'
			}
		}
	})
	.state('login', {
		url: '/login',
		views: {
			"view": {
				templateUrl: "/app/components/authentication/views/login.tpl.html",
				controller: "loginController"
			}
		},
		showMenus: false
	})
	.state('logout', {
		url: '/logout',
		views: {
			"view": {
				templateUrl: "/app/components/authentication/views/logout.tpl.html",
			}
		}
	})
	.state("search", {
		url: "/search",
		views: {
			"view": {
				templateUrl: "/app/components/search/views/search.tpl.html",
				controller: "searchController",
			}
		}
	})
	.state("help", {
		url: "/help",
		views: {
			"view": {
				templateUrl: "/app/views/help.tpl.html"
			}
		}
	})
	.state("sample", {
		url: "/sample",
		views: {
			"view": {
				templateUrl: "/app/views/main.tpl.html",
				controller: "mainController",
				controllerAs: 'vm'
			}
		}
	})
	.state("otherwise", {
		url: '/error',
		views: {
			"view": {
				templateUrl: "/app/views/error.tpl.html"
			}
		}
	});
});