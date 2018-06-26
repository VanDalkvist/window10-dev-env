port = 8500

describe port(port) do
  it { should be_listening }
end
