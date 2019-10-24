require 'typog.rb'

describe "typo g" do
    it "returns single letter" do
        expect(typo_g("i")).to eq("i")
    end

    it "returns empty string" do
        expect(typo_g("i")).to eq("i")
    end

    it "returns 3 letter string" do
        expect(typo_g("hey")).to eq("hey")
    end

    it "returns 3 letter string" do
        expect(typo_g("hey")).to eq("hey")
    end
end