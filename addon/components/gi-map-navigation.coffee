`import Ember from 'ember'`
`import layout from '../templates/components/gi-map-navigation'`

GiMapNavigationComponent = Ember.Component.extend(
  layout: layout
  classNames: ["btn-group"]
  didInsertElement: ->
    @_super()
    @$().find("[data-toggle='tooltip']").tooltip()
)

`export default GiMapNavigationComponent`
