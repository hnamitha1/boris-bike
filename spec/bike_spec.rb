require 'bike'

describe Bike do

 it {is_expected.to respond_to :working?}
 it {is_expected.to respond_to :broken?}
 it {is_expected.to respond_to :report_broken}

 it "reports a broken bike" do
 	expect(subject.report_broken).to be true
 end	
 it "broken to be true" do
 	subject.report_broken
 	expect(subject.broken?).to be true
 end	

end
