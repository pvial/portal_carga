require 'rails_helper'

RSpec.describe Eje, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:contentidos) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
