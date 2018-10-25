require 'rails_helper'

RSpec.describe PreEx, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:molde) }

    it { should belong_to(:contenido) }

    it { should have_many(:ejercicios) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
