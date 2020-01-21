
class BankAccount
  attr_accessor :balance,:status 
  attr_reader :name 
def initialize(account=nil,name)
  @account = account
   @name = name 
 @balance = 1000
 
 @status = "open"
  end
  def deposit(deposit)
  @balance = @balance + deposit
 end 
 def display_balance
   "Your balance is $#{self.balance}."
 end 
 def valid?
   @status == "open" && @balance> 0 ? true:false 
 end 
 def close_account
   @status = "closed"
end 
end 
