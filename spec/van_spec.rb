require 'van'

describe Van do
	it {is_expected.to respond_to :collect_broken_bikes}
	it {is_expected.to respond_to :deliver_working_bikes}

	let(:broken_bike) {double :broken_bike, broken?: true}

	 it "collect_broken_bikes" do
	 	expect(subject.collect_broken_bikes).to eq broken_bike
	 end	
end