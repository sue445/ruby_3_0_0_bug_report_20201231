RSpec.describe Calc do
  describe "#sum" do
    subject { Calc.new.sum(a, b) }

    using RSpec::Parameterized::TableSyntax

    where(:a, :b, :answer) do
      1 | 2 | 3
    end

    with_them do
      it "should do additions" do
        expect(a + b).to eq answer
      end
    end
  end
end
