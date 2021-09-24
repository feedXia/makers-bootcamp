require'bank_account'

describe BankAccount do
  describe '#deposit_money' do
    it "deposits £100 customer's bank account" do
      expect(subject.deposit_money(100)).to eq "Money deposited successfully!"
    end

    it "deposits £50 customer's bank account" do
      expect(subject.deposit_money(50)).to eq "Money deposited successfully!"
    end
  end

  describe '#deduct_money' do
    it "deducts amount customer want's to withdraw from their bank account" do
      expect(subject.withdraw_money(50)). to eq "Money withdrawn successfully!"
    end
  end

  describe '#view_balance' do
    it "shows balance" do
      expect(subject.view_balance).to eq "Your balance is £#{50}"
    end
  end
end