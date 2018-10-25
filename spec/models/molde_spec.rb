require 'rails_helper'

RSpec.describe Molde, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:ejercicios) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
