require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe Todo do
    it 'name/location is unique' do
      @test_dest = Destination.create!(name:'Albacete')
      @todo_test = @test_dest.todos.create(name: 'Bici',
        location: 'Plaza Mayor')
      @todo_invalid = @test_dest.todos.create(name: 'Bici',
        location: 'Plaza Mayor')
      expect(@todo_invalid).to be_invalid
    end

    it 'name is not unique' do
      @test_dest = Destination.create!(name:'Albacete')
      @todo_test = @test_dest.todos.create(name: 'Bici',
        location: 'Plaza Mayor')
      @todo_valid = @test_dest.todos.create(name: 'Bici',
        location: 'Calle Real')

      expect(@todo_valid).to be_valid
    end

  end
end
