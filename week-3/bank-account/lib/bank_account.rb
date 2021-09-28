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
    return "Your balance is £#{balance}"
  end
end