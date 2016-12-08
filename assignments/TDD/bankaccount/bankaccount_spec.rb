require_relative 'Bank_Account'
RSpec.describe BankAccount do
  describe 'behavior' do
  before do
    B_Account = BankAccount.new
  end
  it 'Has a method for retrieving the checking account balance' do
    expect(B_Account.checkingAccountBalance).to eq("Your Savings Account balance is $90000")
    end
    it 'a method that retrieves the total account balance' do
      expect(B_Account.view_bal).to eq("Total balance is $109000.00")
    end
    it 'Has a method that allows the user to withdraw cash' do
       savings = B_Account.withdraw(2000, "savings")
       checking = B_Account.withdraw(2000, "checking")

       expect(savings).to eq(8000)
       expect(checking).to eq(88000)
     end
     it 'Raises an error if a user tries to withdraw more money than they have in the account' do
        savings = B_Account.withdraw(100000, "savings")
        checking = B_Account.withdraw(100000, "checking")

        expect(savings).to eq("Sorry, your Savings Account balance is insufficient")
        expect(checking).to eq("Sorry, your Savings Account balance is insufficient")
      end
      it 'Raises an error when the user tries to print out how many bank accounts there are' do
         expect{B_Account.account_counter}.to raise_error(NoMethodError)
       end
       it 'Raises an error when the user tries to set the interest rate' do
          expect{B_Account.i_rate(0.1)}.to raise_error(NoMethodError)
        end
        it 'Raises an error when the user tries to set any attribute' do
           expect{B_Account.amount(10000000000)}.to raise_error(NoMethodError)
         end
      end
  describe 'attributes' do
  before do
    @bank = BankAccount.new
    end
    it 'Raises an error when the user tries to set any attribute' do
       expect{B_Account.account_counter(7)}.to raise_error(NoMethodError)
       expect{B_Account.account_number(10000000000)}.to raise_error(ArgumentError)
       expect{B_Account.c_bal(10000000000)}.to raise_error(ArgumentError)
       expect{B_Account.s_bal(10000000000)}.to raise_error(ArgumentError)
       expect{B_Account.i_rate(0.1)}.to raise_error(NoMethodError)
     end
  end
end
