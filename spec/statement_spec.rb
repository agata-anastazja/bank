require 'statement'
require 'account'

describe Statement do
  subject(:statement) {described_class.new}


  it "diplays the name of the columns before any entries are entered" do
    expect(statement.print_out({})).to eq "date       || credit || debit   || balance"
  end

end
