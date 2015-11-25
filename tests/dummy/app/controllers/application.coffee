`import Ember from 'ember'`
`import OpenlayersControlsScale from 'ember-ol-map/models/openlayers/controls/scale'`

Application = Ember.Controller.extend

  extent: [174755, 664665, 208882, 685765]

  layers: [
    {
      url: "http://hubert.systherm-info.pl/mapserver/swinoujscie-vista"
      name: "obreby"
    },
    {
      url: "http://hubert.systherm-info.pl/mapserver/swinoujscie-vista"
      name: "dzialki"
    }
  ]

  scales: [
    {scale: 250000, resolution: 88.19462083368612}
    {scale: 100000, resolution: 35.277848333474445}
    {scale: 50000, resolution: 17.638924166737223}
    {scale: 25000, resolution: 8.819462083368611}
    {scale: 10000, resolution: 3.5277848333474453}
    {scale: 5000, resolution: 1.7638924166737227}
    {scale: 2500, resolution: 0.8819462083368613}
    {scale: 1000, resolution: 0.3527784833347445}
    {scale: 500, resolution: 0.17638924166737224}
    {scale: 250, resolution: 0.08819462083368612}
    {scale: 100, resolution: 0.03527784833347444}
    {scale: 50, resolution: 0.01763892416673722}
    {scale: 25, resolution: 0.00881946208336861}
    {scale: 10, resolution: 0.0035277848333474444}
  ]

  controls: new ol.Collection [
    new OpenlayersControlsScale()
    new ol.control.MousePosition
      className: "ol-map-coordinates-local"
      projection: ol.proj.get("EPSG:2173")
      coordinateFormat: (coordinates) -> "X: #{coordinates[1].toFixed(2)} Y: #{coordinates[0].toFixed(2)}"
      undefinedHTML: "Współrzędne (X / Y)"
    new ol.control.MousePosition
      className: "ol-map-coordinates-lonlat"
      projection: ol.proj.get("EPSG:4326")
      coordinateFormat: ol.coordinate.toStringHDMS
      undefinedHTML: "Współrzędne (szer./dł.)"
  ]

`export default Application`
