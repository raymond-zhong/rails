class BankAccount
  attr_accessor :c_bal, :s_bal, :account_number
  @account_counter = 0

	class << self
		attr_accessor :account_counter
	end
  def initialize
    generate_account
    @c_bal = 90000
    @s_bal = 10000
    @i_rate = 0.09
    self.class.account_counter += 1
  end
  def displayAccountNumber
    puts @account_number
  end
  def savingsAccountBalance
    "Your Savings Account balance is $#{@s_bal}"
  end
  def checkingAccountBalance
    "Your Savings Account balance is $#{@c_bal}"
  end
  def count_accounts
		puts "There are a total of #{self.class.account_counter} accounts"
	end

  def deposit(amount, account)
    if account == "savings"
      puts "deposit savings"
        @s_bal += amount
        @s_bal
      else
        puts "depost checking"
        @c_bal +=  amount
      end
  end

  def withdraw(amount, account)
  if account == "savings"
    if amount < @s_bal
      @s_bal -= amount
    else
      "Sorry, your Savings Account balance is insufficient"
    end
  else
    if amount < @c_bal
      @c_bal -= amount
    else
      "Sorry, your Savings Account balance is insufficient"
    end
  end
end

  def view_bal
    "Your Checking Account account balance is $#{@c_bal+(@c_bal*@i_rate)}"
    "Your Savings Account balance is $#{@s_bal+(@s_bal*@i_rate)}"
    "Total balance is $#{@s_bal+@c_bal+((@s_bal+@c_bal)*@i_rate)}0"
  end

  def account_information
    puts "Your account number is #{@account_number}"
    puts "Your total money is $#{@s_bal+@c_bal+((@s_bal+@c_bal)*@i_rate)}"
    puts "Your checking account balance is $#{@c_bal+(@c_bal*@i_rate)}"
    puts "Your saving account balance is $#{@s_bal+(@s_bal*@i_rate)}"
    puts "Your interest rate is #{@i_rate}"
  end

  private
  attr_accessor :i_rate
  def generate_account
    @account_number = rand(1000000000..9999999999)
  end
end


B_Account = BankAccount.new
# B_Account.checkingAccountBalance
# puts B_Account.withdraw(2000, "savings")
# puts B_Account.withdraw(2000, "checking")
Ray1 = BankAccount.new
Ray2 = BankAccount.new
Ray3 = BankAccount.new
# Ray1.account_information.with_s_bal(1000).account_information.dep_c_bal(1000000).account_information
# B_Account.account_counter
