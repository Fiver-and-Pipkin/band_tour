require('spec_helper')

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

  it ("validates the presence of a band name") do
    band = Band.new({:band_name => ""})
    expect(band.save()).to eq(false)
  end

  it("capitalizes the name of the band") do
    band_name = Band.create({:band_name => "aerosmith"})
    expect(band_name.band_name()).to eq("Aerosmith")
  end
end
