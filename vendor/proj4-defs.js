proj4.defs("EPSG:2171","+proj=sterea +lat_0=50.625 +lon_0=21.08333333333333 +k=0.9998 +x_0=4637000 +y_0=5647000 +ellps=krass +towgs84=33.4,-146.6,-76.3,-0.359,-0.053,0.844,-0.84 +units=m +no_defs");
proj4.defs("EPSG:2172","+proj=sterea +lat_0=53.00194444444445 +lon_0=21.50277777777778 +k=0.9998 +x_0=4603000 +y_0=5806000 +ellps=krass +towgs84=33.4,-146.6,-76.3,-0.359,-0.053,0.844,-0.84 +units=m +no_defs");
proj4.defs("EPSG:2173","+proj=sterea +lat_0=53.58333333333334 +lon_0=17.00833333333333 +k=0.9998 +x_0=3501000 +y_0=5999000 +ellps=krass +towgs84=33.4,-146.6,-76.3,-0.359,-0.053,0.844,-0.84 +units=m +no_defs");
proj4.defs("EPSG:2174","+proj=sterea +lat_0=51.67083333333333 +lon_0=16.67222222222222 +k=0.9998 +x_0=3703000 +y_0=5627000 +ellps=krass +towgs84=33.4,-146.6,-76.3,-0.359,-0.053,0.844,-0.84 +units=m +no_defs");
proj4.defs("EPSG:2175","+proj=tmerc +lat_0=0 +lon_0=18.95833333333333 +k=0.999983 +x_0=237000 +y_0=-4700000 +ellps=krass +towgs84=33.4,-146.6,-76.3,-0.359,-0.053,0.844,-0.84 +units=m +no_defs");
proj4.defs("EPSG:2176","+proj=tmerc +lat_0=0 +lon_0=15 +k=0.999923 +x_0=5500000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs");
proj4.defs("EPSG:2177","+proj=tmerc +lat_0=0 +lon_0=18 +k=0.999923 +x_0=6500000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs");
proj4.defs("EPSG:2178","+proj=tmerc +lat_0=0 +lon_0=21 +k=0.999923 +x_0=7500000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs");
proj4.defs("EPSG:2179","+proj=tmerc +lat_0=0 +lon_0=24 +k=0.999923 +x_0=8500000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs");
proj4.defs("EPSG:2180","+proj=tmerc +lat_0=0 +lon_0=19 +k=0.9993 +x_0=500000 +y_0=-5300000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs");

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2171",
  extent: [4129530.92, 5489841.02, 4834101.51, 6125973.70],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2172",
  extent: [4064428.91, 5387678.39, 4772978.43, 6019326.73],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2173",
  extent: [3290985.24, 5493058.91, 3958791.74, 6167633.05],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2174",
  extent: [3517796.13, 5333104.90, 4182619.71, 6010454.35],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2175",
  extent: [-115380.55, 740867.61, 570111.78, 1397372.93],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2176",
  extent: [2533821.25, 4104230.63, 5771252.26, 9409070.99],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2177",
  extent: [3236256.79, 4207696.11, 6739913.31, 9395740.70],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2178",
  extent: [3936040.28, 4324573.90, 7707927.89, 9384064.69],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2179",
  extent: [4633213.50, 4456045.25, 8675382.71, 9374073.29],
  units: "m",
  axisOrientation: "neu"}));

ol.proj.addProjection(new ol.proj.Projection({
  code: "EPSG:2180",
  extent: [-2861425.28, -1057534.86, 729176.20, 4085811.84],
  units: "m",
  axisOrientation: "neu"}));
