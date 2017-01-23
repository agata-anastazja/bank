#stores information about account

require './lib/transaction'

class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def add_entry(transaction, amount)
    transaction_validation(transaction)
    update_balance(transaction, amount)
    entry = Transaction.new({transation: amount})
    new_entry = [entry.date, entry.credit, entry.debit, @balance]
    @transactions.unshift(new_entry)
  end

  private

  def update_balance(transaction, amount)
    if transaction == :deposit
       @balance += amount
    else transaction == :withdrawal
      @balance -= amount
    end
  end

  def transaction_validation(transaction)
    if ! [:withdrawal, :deposit].include?(transaction)
      raise "This is not a correct transaction. Try again"
    end
  end
end
