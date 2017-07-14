

describe "Character class" do
  before do
    @character = Character.first
  end
  it "belongs to a user" do
    expect(@character.user).to be true
  end
end
