require 'rails_helper'

RSpec.describe Ejercicio, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:contenido) }

    it { should belong_to(:last_pre_ex) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
