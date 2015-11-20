/* jshint node: true */
'use strict';

module.exports = {
  name: 'ember-ol-map',

  included: function(app) {
    this._super.included(app);

    app.import(app.bowerDirectory + "/proj4/dist/proj4.js");
    app.import("vendor/proj4-defs.js");
    app.import("vendor/ol.js");
    app.import("vendor/ol.css");
  }
};
