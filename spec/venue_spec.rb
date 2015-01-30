require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it ("validates the presence of a Venue name") do
    venue = Venue.new({:venue_name => ""})
    expect(venue.save()).to eq(false)
  end

  it("capitalizes the name of the venue") do
    venue = Venue.create({:venue_name => "spankys"})
    expect(venue.venue_name()).to eq("Spankys")
  end
end
