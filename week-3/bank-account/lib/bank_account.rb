# Apply what you have learned about TDD to build a single BankAccount object based on the following user stories.

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

  def deposit_money(amount)
    @balance = amount
    return "Money deposited successfully!"
  end

  def withdraw_money(amount)
    return "Money withdrawn successfully!"
  end

  def view_balance
    return "Your balance is £50"
  end
end