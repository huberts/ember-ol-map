`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'openlayers/controls/scale', 'Unit | Model | openlayers/controls/scale', {
  # Specify the other units that are required for this test.
  needs: []
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
