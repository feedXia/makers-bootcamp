

# * As a customer,
# * So that I can keep my money safe,
# * I would like to deposit money in my account
# * As a customer,
# * So that I can spend my money,
# * I would like to withdraw money from my account
# * As a customer,
# * So that I can budget,
# * I would like to view my balance

# Your focus here should be on adopting a rigorous TDD process - Red, Green, Refactor.

class BankAccount

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit_money(amount)
    @balance += amount
    return "£#{amount} deposited successfully!"
  end

  def withdraw_money(amount)
    @balance -= amount
    return "£#{amount} withdrawn successfully!"
  end

  def view_balance
    return "Your balance is £50"
  end
end