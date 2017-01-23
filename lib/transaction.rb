#Operation on account
class Transaction
attr_reader :date, :deposit, :withdrawal
  def initialize(args)
    @date = Date.today.strftime('%m/%d/%Y')
    @deposit = args[:deposit]
    @withdrawal = args[:withdrawal]
  end

end
