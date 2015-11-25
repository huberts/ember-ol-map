`import Ember from 'ember'`
`import OpenlayersControlsScale from 'ember-ol-map/models/openlayers/controls/scale'`

EmberOlMapComponent = Ember.Component.extend
  classNames: ["ol-map-canvas"]

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

  zoomLevelObserver: Ember.observer "zoomLevel", ->
    Ember.run.next => @get("map").getView().setZoom @get("zoomLevel")

  didInsertElement: ->
    @_super()
    return if @get "map"
    @set "map", new ol.Map
      target: @get "elementId"
      controls: @getControls()
      layers: @getLayers()
      view: new ol.View
        projection: ol.proj.get @get "projectionCode"
        extent: @get "extent"
        resolutions: (@get("scales").map (element) -> element.resolution)

    @get("map").getView().fit @get("extent"), @get("map").getSize()
    @get("map").scales = @get("scales")
    @set "maxZoomLevel", @get("map").getView().getZoom()
    @set "zoomLevel", @get("map").getView().getZoom()

    @get("map").getView().on "change:resolution", Ember.run.bind(@, (event) -> @set "zoomLevel", @get("map").getView().getZoom())

  getControls: ->
    new ol.Collection [
      new OpenlayersControlsScale()
      new ol.control.MousePosition
        className: "ol-map-coordinates-local"
        projection: ol.proj.get("EPSG:2173")
        coordinateFormat: (coordinates) -> "X: #{coordinates[1].toFixed(2)} Y: #{coordinates[0].toFixed(2)}"
        undefinedHTML: "Współrzędne (X / Y)"
      new ol.control.MousePosition
        className: "ol-map-coordinates-lonlat"
        projection: ol.proj.get("EPSG:4326")
        coordinateFormat: (coordinates) => "N: #{@asDmsString(coordinates[1])} E: #{@asDmsString(coordinates[0])}"
        undefinedHTML: "Współrzędne (szer./dł.)"
    ]

  getLayers: ->
    (for layer in @get "layers"
      new ol.layer.Image
        extent: @get "extent"
        source: new ol.source.ImageWMS
          url: layer.url
          params:
            LAYERS: layer.name
            VERSION: "1.1.1"
    )

  asDmsString: (coordinate) ->
    floatDegrees = coordinate
    degrees = Math.floor floatDegrees
    floatMinutes = 60 * (floatDegrees - degrees)
    minutes  = Math.floor floatMinutes
    floatSeconds = Math.round 60 * (floatMinutes - minutes) * 10
    seconds = Math.floor floatSeconds
    seconds /= 10
    degreePrefix = if degrees<10 then "0" else ""
    minutePrefix = if minutes<10 then "0" else ""
    secondPrefix = if seconds<10 then "0" else ""
    degreeSuffix = "\u00B0"
    minuteSuffix = "'"
    secondSuffix = if (10*seconds)%10==0 then ".0\"" else "\""
    degreePrefix + degrees + degreeSuffix + minutePrefix + minutes + minuteSuffix + secondPrefix + seconds + secondSuffix

`export default EmberOlMapComponent`
