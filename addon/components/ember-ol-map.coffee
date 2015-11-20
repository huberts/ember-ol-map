`import Ember from 'ember'`
`import layout from '../templates/components/ember-ol-map'`

EmberOlMapComponent = Ember.Component.extend
  layout: layout

  init: ->
    @_super()
    @mapProjection = new ol.proj.Projection
      code: @get "projectionCode"
      extent: @get "extent"

  didInsertElement: ->
    @_super()
    return if @get "map"
    @set "map", new ol.Map
      target: @$().find(".ol-map-canvas").get(0)
      controls: @getControls()
      layers: @getLayers()
      view: new ol.View
        projection: @get "mapProjection"
        center: [@get("extent")]
        ol.proj.fromLonLat([14.2475, 53.907778], @get "mapProjection")
        extent: @get "extent"
        zoom: 1

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
