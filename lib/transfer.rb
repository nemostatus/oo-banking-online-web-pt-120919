
class Transfer

  attr_accessor :sender,:receiver,:amount,:Status
  def initialize(sender,receiver,amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @Status = "pending"
  end 
    def valid?
      @sender.valid? && @receiver.valid? ? true:false
    end 
  def execute_transaction
  if @sender.balance > @amount && @Status == "pending" && @receiver.status== "open"
    @sender.balance -= @amount 
    @receiver.balance += @amount
    @Status = "complete"
  else
 @Status == "rejected"
    return "Transaction rejected. Please check your account balance."
  end 
end 
def reverse_transfer 
  if @Status == "complete"
    @sender.balance += @amount
    @receiver.balance -= @amount
    @Status = "reversed"
  end 
end 
 
end 