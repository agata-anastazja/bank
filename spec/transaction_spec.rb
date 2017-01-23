require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  it "saves the date of the transaction" do
    expect(transaction.date).to eq Date.today.strftime('%m/%d/%Y')
  end

  it "has credit of null by default" do
    expect(transaction.credit).to eq nil
  end



end
