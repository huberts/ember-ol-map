`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'gi-map-navigation', 'Integration | Component | gi map navigation', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{gi-map-navigation}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#gi-map-navigation}}
      template block text
    {{/gi-map-navigation}}
  """

  assert.equal @$().text().trim(), 'template block text'
