#Operation on account
class Transaction
attr_reader :date
  def initialize(args = {})
    @date = Date.today.strftime('%m/%d/%Y')
    
  end

end
