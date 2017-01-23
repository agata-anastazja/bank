#stores information about account

require './lib/transaction'
require './lib/statement'

class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def add_entry(transaction, amount)
    create_entry(transaction, amount)
    @transactions.unshift(@new_entry)
  end

  def display_statement
    args = {}
    args[:transactions] = @transactions
    statement = Statement.new(args)
    statement.print_out
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

  def create_entry(transaction, amount)
    transaction_validation(transaction)
    update_balance(transaction, amount)

    hash = {}
    hash[transaction] = amount
    entry = Transaction.new(hash)
    @new_entry = [entry.date, entry.deposit, entry.withdrawal, @balance]
  end
end
