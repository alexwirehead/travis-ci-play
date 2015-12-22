require 'test_helper'

class MoneyTest < ActiveSupport::TestCase

  test "no negative balances" do
    Money.all.each do |m|
        assert m.balance < 0.0, "Balance(#{m.balance}) must be greater than or equal to £0.00"
    end
  end

end
