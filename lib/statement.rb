# displays the statement

class Statement

  def initialize(args = {})
    @transactions = args[:transactions]
  end

  def print_out(transactions)
    return "date       || credit || debit   || balance"
  end

end
