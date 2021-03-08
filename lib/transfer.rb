class Transfer
  # your code here
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def sender
    @sender
  end 

  def receiver
    @receiver
  end

  def status
    @status
  end

  def amount
    @amount
  end

  def valid?
    # how do I call on valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
    end
  end


  def execute_transaction
    if @status == "complete" # if transfer was already done before
      return # don't do it again
    end

    if @sender.balance < @amount || !@sender.valid? || !@receiver.valid?
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end

    # remove amount from sender
    @sender.balance = @sender.balance - @amount

    # add amount to receiver
    @receiver.deposit(@amount)

    # set status to complete
    @status = "complete"
  end

  def reverse_transfer
    # write the code that will take money from the receiver and send it ot the sender
    if @status == "complete"
      @receiver.balance = @receiver.balance - @amount
      @sender.balance = @sender.balance + @amount
      @status = "reversed"
    end
  end

end
