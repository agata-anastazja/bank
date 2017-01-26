require 'account'
require 'transaction'
require 'statement'

describe Account do

  subject(:account) {described_class.new}


  it "has a default balance of 0" do
    expect(account.balance).to eq 0
  end

  it "has no transactions to begin with" do
    expect(account.transactions).to eq []
  end

  context "changes the balance with add entry method" do

    it "adds money to balance with  deposit"do
      account.add_entry( :deposit, 100)
      expect(account.balance).to eq 100
    end

    it "deducts money to balance with withdrawal" do
      account.add_entry( :deposit, 100)
      account.add_entry( :withdrawal, 100)
      expect(account.balance).to eq 0
    end

    it "gives an error message when passed a transaction other than withdrawal or deposit" do
      expect{account.add_entry( :play, 100).to eq "This is not a correct transaction. Try again"}
    end

  end

  context "the entries are listed in transactions" do
    it "has an array of transactions" do
      account.add_entry( :deposit, 100)
      account.add_entry( :withdrawal, 100)
      expect(account.transactions).to eq [["01/23/2017", nil, 100, 0], ["01/23/2017", 100, nil, 100]]
    end
  end

  it "displays the statement" do
    account.add_entry( :deposit, 100)
    account.add_entry( :withdrawal, 100)
    expect(account.display_statement).to eq "date       || credit || debit   || balance \n" +
                                      "01/23/2017 ||        || 100     || 0 \n" +
                                      "01/23/2017 || 100    ||         || 100 \n"
  end

end
