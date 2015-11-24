`import Ember from 'ember'`

EmberOlMapComponent = Ember.Component.extend
  classNames: ["ol-map-canvas"]

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

    @get("map").getView().fit @get("extent"), @get("map").getSize()
    @get("map").getView().set "minZoom", 9
    @set "maxZoomLevel", @get("map").getView().getZoom()
    @set "zoomLevel", @get("maxZoomLevel")


    @get("map").getView().on "propertychange", Ember.run.bind(@, (event) ->
      switch event.key
        when "resolution" then @set "zoomLevel", @get("map").getView().getZoom()
    )

  getControls: -> new ol.Collection [new ol.control.ScaleLine()]

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
