require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "should be findable with friendly id" do
    person = Person.create! name: 'John Smith'
    account = person.accounts.create! name: 'My First Account'
    person.reload
    assert_equal account, person.accounts.find('my-first-account')
  end
end
