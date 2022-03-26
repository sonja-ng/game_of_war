require 'rails_helper'

RSpec.describe "/api/players", type: :request do
    subject (:tom) { Player.create!(name: 'Tom', score: 2)}
    describe 'POST #create' do
        context "with valid parameters" do
            player_params = { player: { name: 'Piper' } }

            it "creates a new player with 200 http status code" do
                post '/api/players', :params => player_params.to_json, :headers => { "Content-Type": "application/json" }
                json = JSON.parse(response.body)
                expect(response).to have_http_status(200)
            end
        end
    end

    describe 'GET #show' do
        it 'returns 200 http status code' do
            get api_player_url(tom.id), :headers => { "Content-Type": "application/json" }
            json = JSON.parse(response.body)
            expect(response).to have_http_status(200)
        end
    end
    
    describe "PATCH #update" do
        new_params = {
            player: {
                id: 10,
                name: "Tom",
                score: 3
            }
        }
        it 'should update the score' do 
            patch api_player_url(tom.id), :params => new_params.to_json, :headers => { "Content-Type": "application/json" }
            json = JSON.parse(response.body)
            expect(json["Player"]).to include("score" => 3)
        end
    end

end