
shared_examples_for "bike_container" do
  let(:bike_container) { described_class.new}

  context "Checking if class has been initialized with empty bikes" do
    it "says bike array is empty" do
      expect(bike_container.bikes).to eq []
    end
  end
  end
