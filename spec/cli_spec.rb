describe "CLI" do
  subject do
    # Expected error, but actual hunged here
    cli.foo
  end

  it { expect { subject }.to raise_error }
end

xdescribe "GitlabMrRelease::Project" do
  describe "#api_version" do
    using RSpec::Parameterized::TableSyntax

    where(:api_endpoint, :expected) do
      "http://example.com/api/v4/" | 4
    end

    with_them do
      # it { should eq expected }
    end
  end
end
