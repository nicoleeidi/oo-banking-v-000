class Transfer
  attr_accessor :status, :sender, :receiver, :amount # add the others here?
  def initialize(sender,receiver,amount)
    @status= "pending"
    @sender= sender
    @receiver = receiver
    @amount = amount
  end
  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end
  def execute_transaction
    if @status == "pending"  && @sender.balance >= @amount
      @sender.balance -= @amount;
      @receiver.balance += @amount
      @status= "complete"
    else
      @status = "rejected" #this also rejects the case that status is not pending.
    end
  end
  def reverse_transfer
    if @status= "complete"
      @sender.balance += @amount;
      @receiver.balance -= @amount
      @status= "reversed"
    end 

    
# your code here
end
