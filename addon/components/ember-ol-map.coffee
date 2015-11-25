`import Ember from 'ember'`

EmberOlMapComponent = Ember.Component.extend
  classNames: ["ol-map-canvas"]

  zoomLevelObserver: Ember.observer "zoomLevel", ->
    Ember.run.next => @get("map").getView().setZoom @get("zoomLevel")

  didInsertElement: ->
    @_super()
    @set "map", new ol.Map
      target: @get "elementId"
      controls: @get "controls"
      layers: @getLayers()
      view: new ol.View
        projection: ol.proj.get @get "projectionCode"
        extent: @get "extent"
        resolutions: (@get("scales").map (element) -> element.resolution)
    @get("map").scales = @get "scales"
    @get("map").getView().fit @get("extent"), @get("map").getSize()
    @get("map").getView().on "change:resolution", Ember.run.bind(@, () -> @set "zoomLevel", @get("map").getView().getZoom())

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

`export default EmberOlMapComponent`
