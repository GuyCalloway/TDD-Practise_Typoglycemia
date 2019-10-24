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

    it "returns scrambled string" do
        expect(typo_g("heay")).to eq("haey")
    end

    it "returns scrambled string" do
        expect(typo_g("heacy")).to eq("hacey")
    end

    it "returns scrambled string" do
        expect(typo_g("heacy heacy")).to eq("hacey hacey")
    end

    it "returns scrambled string" do
        expect(typo_g("heacy heacy smrat asre")).to eq("hacey hacey samrt arse")
    end

    it "returns scrambled string" do
        expect(typo_g("shan't")).to eq("sahn't")
    end

    it "returns scrambled string" do
        expect(typo_g("-dcba")).to eq("-dbca")
    end

    it "returns scrambled string" do
        expect(typo_g("tik-tak")).to eq("tai-ktk")
    end
end