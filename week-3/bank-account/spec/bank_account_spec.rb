require'bank_account'

describe BankAccount do
  describe '#deposit_money' do
    context "given an amount of money" do
      it "deposits it into customer's bank account" do
        amount = 100
        expect(subject.deposit_money(amount)).to eq "£#{amount} deposited successfully!"
      end
    end
  end

  describe '#deduct_money' do
    context "given an amount of money" do
      it "deducts it from customer's bank account" do
        amount = 50
        expect(subject.withdraw_money(amount)).to eq "£#{amount} withdrawn successfully!"
      end
    end
  end

  describe '#view_balance' do
    it "shows balance" do
      expect(subject.view_balance).to eq "Your balance is £#{balance}"
    end
  end
end