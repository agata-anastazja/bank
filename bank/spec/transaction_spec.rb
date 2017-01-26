require 'transaction'
require 'pry'

describe Transaction do
  subject(:deposit_transaction) {described_class.new({deposit: 100})}
  subject(:withdrawal_transaction) {described_class.new({withdrawal: 100})}


  it "saves the date of the transaction" do
    expect(deposit_transaction.date).to eq Date.today.strftime('%m/%d/%Y')
  end

  it "can set up a credit transaction" do

    expect(deposit_transaction.deposit).to eq 100
  end

  it "can set up a debit transaction" do
    expect(withdrawal_transaction.withdrawal).to eq 100
  end

end
