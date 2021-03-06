`import Ember from 'ember'`
`import layout from './template'`

EmberGiMapNavigationComponent = Ember.Component.extend
  layout: layout
  classNames: ["btn-group", "gi-map-toolbar"]
  didInsertElement: ->
    @_super()
    @$().find("[data-toggle='tooltip']").tooltip()

  actions:
    zoomIn: -> @get("onZoomChange")("+")
    zoomOut: -> @get("onZoomChange")("-")
    zoomExtent: -> @get("onZoomChange")("0")

`export default EmberGiMapNavigationComponent`
