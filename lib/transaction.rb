#Operation on account
class Transaction
attr_reader :date, :credit, :debit
  def initialize(args = {})
    @date = Date.today.strftime('%m/%d/%Y')
    @credit = args[:credit] || default_credit
    @debit = args[:debit] || default_debit
  end

  private

  def default_credit
    nil
  end

  def default_debit
    nil
  end

end
