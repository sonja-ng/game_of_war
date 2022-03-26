require 'rails_helper'

RSpec.describe Player, type: :model do
  subject {  Player.create!(name: 'piper_koh') }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
end
