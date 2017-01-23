require 'statement'
require 'account'

describe Statement do

  list = [["01/23/2017", nil, 100, 0], ["01/23/2017", 100, nil, 100]]
  args = {}
  args[:transactions] = list

  subject(:statement_without_transactions) {described_class.new}
  subject(:statement) {described_class.new(args)}

  it "diplays the name of the columns before any entries are entered" do
    expect(statement_without_transactions.print_out).to eq "date       || credit || debit   || balance \n"
  end

  it "displays formatted entries when entries passed" do
    expect(statement.print_out).to eq "date       || credit || debit   || balance \n" +
                                      "01/23/2017 ||        || 100     || 0 \n" +
                                      "01/23/2017 || 100    ||         || 100 \n"
  end
end
