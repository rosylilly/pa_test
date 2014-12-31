require 'test_helper'

class TeaTest < ActiveSupport::TestCase
  test 'valid' do
    tea = Tea.new(name: 'green')

    assert { tea.valid? }
  end

  test 'invalid' do
    tea = Tea.new()

    assert { tea.invalid? }
  end
end
