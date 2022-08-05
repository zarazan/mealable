require 'rails_helper'

RSpec.describe RecipeController do

  describe "GET index" do
    context "there are no recipies" do
      it "returns an empty json array" do
        get :index
        expect(json_response).to eq([])
      end
    end

    context "when a recipe exists" do
      let(:recipe) { Recipe.create!(name: 'Test Recipe') }

      before do
        recipe
      end

      it "responds with a json array and the recipe included" do
        get :index
        expect(json_response).to eq([recipe].as_json)
      end
    end
  end

end
