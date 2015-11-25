`import Ember from 'ember'`
`import layout from './template'`

EmberGiMapComponent = Ember.Component.extend
  layout: layout
  classNames: ["panel", "panel-default", "ember-gi-map-component"]
  zoomLevel: 0

  actions:
    zoomChanged: (zoomFlag) ->
      switch zoomFlag
        when "+" then @incrementProperty "zoomLevel"
        when "-" then @decrementProperty "zoomLevel"
        else @set "zoomLevel", 0

`export default EmberGiMapComponent`
