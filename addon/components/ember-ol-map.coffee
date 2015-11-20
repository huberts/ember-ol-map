`import Ember from 'ember'`

EmberOlMapComponent = Ember.Component.extend
  classNames: ["ol-map-canvas"]

  init: ->
    @_super()
    @mapProjection = new ol.proj.Projection
      code: @get "projectionCode"
      extent: @get "extent"

  didInsertElement: ->
    @_super()
    return if @get "map"
    @set "map", new ol.Map
      target: @get "elementId"
      controls: @getControls()
      layers: @getLayers()
      view: new ol.View
        projection: @get "mapProjection"
        extent: @get "extent"
    @get("map").getView().fit(@get("extent"), @get("map").getSize())

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
