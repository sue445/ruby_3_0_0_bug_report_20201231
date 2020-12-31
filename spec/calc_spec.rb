RSpec.describe Calc do
  describe "#sum" do
    subject { Calc.new.sum(a, b) }

    describe "plain spec" do
      let(:a) { 1 }
      let(:b) { 2 }
      let(:answer) { 3 }

      it { should eq answer }
    end

    describe "with TableSyntax" do
      using RSpec::Parameterized::TableSyntax

      where(:a, :b, :answer) do
        1 | 2 | 3
      end

      with_them do
        it { should eq answer }
      end
    end
  end
end
