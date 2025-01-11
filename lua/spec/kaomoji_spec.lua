local kaomoji = require('cmp_kaomoji.kaomoji')

describe('Kaomoji Function Tests', function()
  it('should call _contains successfully', function()
    local result = kaomoji._contains({ 'happy', 'joyful' }, 'happy')
    assert.is_true(result, 'Expected result to be true')

    local result = kaomoji._contains({ 'happy', 'joyful' }, 'sad')
    assert.is_false(result, 'Expected result to be false')
  end)

  it('should call setup successfully', function()
    local result = kaomoji.setup()
    assert.is_not_nil(result, 'Expected result to be not nil')

    print(result)
  end)

  it("_setup should return kaomoji with 'joyful' added to tags for happy entries", function()
    local kaomoji_list = {
      {
        word = ':cheer_1:',
        label = '＼(・ω・)/',
        _tags = { 'happy', 'hello' },
      },
      {
        word = ':happy_1:',
        label = '((ヽ(๑╹◡╹๑)ﾉ))♬',
        _tags = { 'music' },
      },
      {
        word = ':naughty_1:',
        label = '٩(◦`꒳´◦)۶',
        _tags = { 'playful', 'mischievous' },
      },
      {
        word = ':fish_1:',
        label = '<“)))><',
      },
    }
    local synonyms = {
      happy = { 'joyful' },
    }
    local expected = {
      {
        word = ':cheer_1:',
        filterText = ':cheer_1: happy hello joyful',
        label = '＼(・ω・)/',
        insertText = '＼(・ω・)/',
      },
      {
        word = ':happy_1:',
        filterText = ':happy_1: music joyful',
        label = '((ヽ(๑╹◡╹๑)ﾉ))♬',
        insertText = '((ヽ(๑╹◡╹๑)ﾉ))♬',
      },
      {
        word = ':naughty_1:',
        filterText = ':naughty_1: playful mischievous',
        label = '٩(◦`꒳´◦)۶',
        insertText = '٩(◦`꒳´◦)۶',
      },
      {
        word = ':fish_1:',
        filterText = ':fish_1:',
        label = '<“)))><',
        insertText = '<“)))><',
      },
    }

    local result = kaomoji._setup(kaomoji_list, synonyms)
    assert.is_same(result, expected, 'Expected result to be the same as the expected result')
  end)
end)
