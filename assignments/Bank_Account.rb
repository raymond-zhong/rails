class BankAccount
  @@count = 0;
  attr_reader :account_number, :i_rate
  attr_accessor :c_bal, :s_bal,:amount

  def initialize
    @account_number = generate_account
    @c_bal = p_c_bal
    @s_bal = p_s_bal
    @i_rate = p_i_rate
    # puts @account_number
    # puts @c_bal
    # puts @s_bal
    @@count +=1
    self
  end

  def self.count
    puts "This bank current has #{@@count} accounts"
  end

  def c_bal
    puts @c_bal
    self
  end

  def dep_c_bal(amount)
    @c_bal += amount
    puts @c_bal
    self
  end
  def with_c_bal(amount)
    @c_bal -= amount
  if @c_bal < 0
      puts "Sorry, can not do trans action, you have insufficient funds."
      @c_bal += amount
  else
    puts @s_bal
  end
    self
  end
  def s_bal
    puts @s_bal
    self
  end

  def dep_s_bal(amount)
    @s_bal += amount
    puts @s_bal
    self
  end
  def with_s_bal(amount)
    @s_bal -= amount
  if @s_bal < 0
      puts "Sorry, can not do trans action, you have insufficient funds."
      @s_bal += amount
  else
    puts @s_bal
  end
    self
  end

  def view_bal
    puts @s_bal + @c_bal
    self
  end

  def account_information
    puts "Your account number is #{@account_number}"
    puts "Your total money is $#{@s_bal+@c_bal}"
    puts "Your checking account balance is $#{@c_bal}"
    puts "Your saving account balance is $#{@s_bal}"
    puts "Your interest rate is #{@i_rate}"
    self
  end

  private
  def generate_account
    rand(1000000000..9999999999)
  end
  def p_c_bal
    90000
  end
  def p_s_bal
    10000
  end
  def p_i_rate
    "0.9%"
  end
end

Ray1 = BankAccount.new
Ray2 = BankAccount.new
Ray3 = BankAccount.new
Ray1.account_information.with_s_bal(1000).account_information.dep_c_bal(1000000).account_information
# BankAccount.count
