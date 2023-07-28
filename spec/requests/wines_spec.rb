require 'rails_helper'

RSpec.describe "Wines", type: :request do
  describe "GET /wines" do
    it "returns an array of wines" do
      Wine.create!(name: "Block Red Wine Shiraz", blend: "Shiraz", price: "12.99", style: "Smooth and dry, but fruit  forward", photo_url: "https://products3.imgix.drizly.com/ci-block-red-shiraz-2008090c835059e2.jpeg?auto=format%2Ccompress&ch=Width%2CDPR&fm=jpg&q=20", vegan: false, sparkling: false, description: "Blackberry, currant, and hints of fig with a smooth finish.", color: "Red", sweet: "Dry", organic: false, origin: "Australia")
      Wine.create!(name: "Kono Sauvignon Blanc", blend: "Sauvignon Blanc", price: "8.99", style: "Crisp and floral, with grassy notes", photo_url: "https://images.vivino.com/thumbs/M4j7BCUMR7mahzDDquc5TA_pb_600x600.png", vegan: true, sparkling: false, description: "Generous, juicy flavors of melon, grapefuit and kiwi with tempering acidity and fine mineral notes.", color: "White", sweet: "Dry", organic: false, origin: "New Zealand")
      Wine.create!(name: "Espiral Vinho Verde", blend: "Loureiro, Pederna, Trajadura, Azal", price: "4.49", style: "Dry and aromatic", photo_url: "https://images.vivino.com/thumbs/JR-gzl28RHi04EzOhY87Qg_pb_x600.png", vegan: false, sparkling: true, description: "Green apple, melon, and slight bubbles.", color: "White", sweet: "Dry", organic: false, origin: "Portugal")
      
      get "/wines.json"
      wines = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(wines.length).to eq(3)
    end
  end
end

RSpec.describe "Wines", type: :request do
  describe "GET /wines/:id" do
    it "returns an hash with appropriate attributes" do
      Wine.create!(name: "Block Red Wine Shiraz", blend: "Shiraz", price: "12.99", style: "Smooth and dry, but fruit  forward", photo_url: "www.example.com", vegan: false, sparkling: false, description: "Blackberry, currant, and hints of fig with a smooth finish.", color: "Red", sweet: "Dry", organic: false, origin: "Australia")

      wine_id = Wine.first.id
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
        "origin" => "Australia"
      )
      
    end
  end
end