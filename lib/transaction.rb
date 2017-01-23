#Operation on account
class Transaction
attr_reader :date, :credit
  def initialize(args = {})
    @date = Date.today.strftime('%m/%d/%Y')
    @credit = args[:credit] || default_credit
  end

  private

  def default_credit
    nil
  end

end
