require 'rails_helper'

RSpec.describe Contentido, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:drafts) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
