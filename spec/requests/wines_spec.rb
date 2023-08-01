require 'rails_helper'

RSpec.describe "Wines", type: :request do
  before do
    user_ids = []
    3.times do
      name = Faker::TvShows::Simpsons.character 
      username = Faker::Internet.unique.username(specifier: name, separators: %w(. _ -))
      email = Faker::Internet.unique.email(name: username)
    
      user = User.create!(
        username: username,
        email: email,
        password: "password",
        password_confirmation: "password",
        name: name,
        user_img_url: Faker::Avatar.image,
        bio: Faker::TvShows::Simpsons.quote,
        phone: Faker::PhoneNumber.cell_phone,
        location: Faker::Address.city + ", " + Faker::Address.state_abbr
        )
      user_ids << user.id
    end
    
    @wine_1 = Wine.create!(name: "Block Red Wine Shiraz", blend: "Shiraz", price: "12.99", style: "Smooth and dry, but fruit  forward", photo_url: "www.example.com", vegan: false, sparkling: false, description: "Blackberry, currant, and hints of fig with a smooth finish.", color: "Red", sweet: "Dry", organic: false, origin: "Australia")
    @wine_2 = Wine.create!(name: "Kono Sauvignon Blanc", blend: "Sauvignon Blanc", price: "8.99", style: "Crisp and floral, with grassy notes", photo_url: "https://images.vivino.com/thumbs/M4j7BCUMR7mahzDDquc5TA_pb_600x600.png", vegan: true, sparkling: false, description: "Generous, juicy flavors of melon, grapefuit and kiwi with tempering acidity and fine mineral notes.", color: "White", sweet: "Dry", organic: false, origin: "New Zealand")
    @wine_3 = Wine.create!(name: "Espiral Vinho Verde", blend: "Loureiro, Pederna, Trajadura, Azal", price: "4.49", style: "Dry and aromatic", photo_url: "https://images.vivino.com/thumbs/JR-gzl28RHi04EzOhY87Qg_pb_x600.png", vegan: false, sparkling: true, description: "Green apple, melon, and slight bubbles.", color: "White", sweet: "Dry", organic: false, origin: "Portugal")

    # Generates demo Posts
    search_terms = ['glass', 'bottle', 'barrel', 'decanter', 'vino', 'vin', 'cabernet', 'champagne', 'chardonnay', 'pinot', 'tasting', 'grapes', 'vineyard']
    
    100.times do
      Post.create!(
        description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
        user_id: user_ids.sample,
        wine_id: [@wine_1.id, @wine_2.id, @wine_3.id].sample,
        post_img_url: Faker::LoremFlickr.image(search_terms: ['wine', search_terms.sample(2)]),
        rating: rand(1..5)
      )
    end
  end

  describe "GET /wines" do
    it "returns an array of wines" do
     
      get "/wines.json"
      wines = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(wines.length).to eq(3)
    end
  end


  describe "GET /wines/:id" do
    it "returns an hash with appropriate attributes" do
      
      wine_id = @wine_1.id
      get "/wines/#{wine_id}.json"
      wine = JSON.parse(response.body)
    
      expect(response).to have_http_status(200)
      expect(wine).to include(
        "name" => "Block Red Wine Shiraz",
        "blend" => "Shiraz",
        "price" => "12.99",
        "style" => "Smooth and dry, but fruit  forward",
        "photo" => "www.example.com",
        "vegan" => false,
        "sparkling" => false,
        "description" => "Blackberry, currant, and hints of fig with a smooth finish.",
        "color" => "Red",
        "sweet" => "Dry",
        "organic" => false,
        "origin" => "Australia",
        "friendly_created_at" => wine["friendly_created_at"],
        "id" => wine["id"],
        "recommendations" => wine["recommendations"]
      )
      
    end
  end


  describe "POST /wines/" do
    it "creates a new wine" do
      post "/wines.json", params: {
        wine: {name: "Michael's BEST EVER WINE",
        blend: "All the grapes",
        price: "999.99",
        origin: "Logan Square",
        style: "Oooey gooey goodness",
        photo_url: "www.michaelwine.com/jpg.",
        description: "Brassy and brash. Pair with hot dogs",
        vegan: false,
        sparkling: false,
        color: "Red",
        sweet: "Dry",
        organic: false}
      }

      wine = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(wine).to include(
        "name" => "Michael's BEST EVER WINE",
        "blend" => "All the grapes",
        "price" => "999.99",
        "origin" => "Logan Square",
        "style" => "Oooey gooey goodness",
        "photo" => "www.michaelwine.com/jpg.",
        "description" => "Brassy and brash. Pair with hot dogs",
        "vegan" => false,
        "sparkling" => false,
        "color" => "Red",
        "sweet" => "Dry",
        "organic" => false,
        "recommendations" => wine["recommendations"],
        "friendly_created_at" => wine["friendly_created_at"],
        "id" => wine["id"]
      )
    end
  end



  describe "PATCH /wines/" do
    it "updates attributes of a wine" do

      wine_id = @wine_2.id

      patch "/wines/#{wine_id}.json", params: {
        wine: {name: "Hylian Beet Wine"}
      }

      wine = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(wine["name"]).to eq("Hylian Beet Wine")
    end
  end
end





