require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  it "saves the date of the transaction" do
    expect(transaction.date).to eq Date.today.strftime('%m/%d/%Y')
  end





end
