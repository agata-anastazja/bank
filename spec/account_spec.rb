require 'account'

describe Account do

  subject(:account) {described_class.new}

  it "has a default balance of 0" do
    expect(account.balance).to eq 0
  end

  it "has no transactions to begin with" do
    expect(account.transactions).to eq []
  end
end
