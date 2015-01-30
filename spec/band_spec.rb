require('spec_helper')

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

  it ("validates the presence of a band name") do
    band = Band.new({:band_name => ""})
    expect(band.save()).to eq(false)
  end
end
