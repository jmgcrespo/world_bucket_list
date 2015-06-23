require 'rails_helper'

RSpec.describe Destination, type: :model do

  describe 'validation' do
    it 'name is unique within a user' do
      @test_user = User.create!(email: 'manolito@gafotas.com', password: '12345678')
      @test_user.destinations.create!(name: 'Kuala Lumpur')
      expect(@test_user.destinations.new(name: 'Kuala Lumpur')).to be_invalid
    end
  end
end
