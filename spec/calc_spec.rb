RSpec.describe Calc do
  describe ".sum" do
    subject { Calc.sum(a, b) }

    let(:a) { 1 }
    let(:b) { 2 }

    it { should eq 3 }
  end
end
