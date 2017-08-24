﻿const Q = require('q');
const _ = require('lodash');
const config = require('../config/config');

// Constructor
const Factory = function(){	
}

Factory.prototype.getBrands = function (ctx) {
	let sql = `
		SELECT BrandId, Name, Description 
		FROM Brand 
		WHERE Deleted <> 1 
		ORDER BY BrandId DESC
	`;
	return ctx.queryCommand(sql);
}

Factory.prototype.getBrandById = function (ctx, brandId) {
	let sql = dbHelper.prepareQueryCommand(`SELECT BrandId, Name, Description FROM Brand WHERE BrandId = ?`, [brandId]);
	return ctx.queryCommand(sql);    
}

Factory.prototype.createBrand = function (ctx, brand) {
	let sql = dbHelper.prepareQueryCommand(``, []);
	return ctx.queryCommand(sql);
}

Factory.prototype.updateBrand = function (ctx, brand) {
	let sql = dbHelper.prepareQueryCommand(`UPDATE Brand SET Name = ?, Description = ? WHERE BrandId = ?`, 
		[brand.Name, brand.Description, brand.BrandId]);
	return ctx.queryCommand(sql);
}

// Export
module.exports = new Factory;
