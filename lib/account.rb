#stores information about account

require './lib/transaction'

class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def add_entry(transaction, amount)
    update_balance(transaction, amount)
    entry = Transaction.new({transation: amount})
    new_entry = [entry.date, entry.credit, entry.debit, @balance]
    @transactions.unshift(new_entry)
  end

  private

  def update_balance(transaction, amount)
    transaction == :credit ? @balance += amount : @balance -= amount
  end
end
