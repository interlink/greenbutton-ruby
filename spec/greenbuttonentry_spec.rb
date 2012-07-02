require 'greenbutton'

describe GreenButton::GreenButtonEntry do
  describe " a valid entry" do
    before do 
      @time = Time.now
      @entry = GreenButton::GreenButtonEntry.new(@time, 100, 10.0, 10.0)
      @entry1 = GreenButton::GreenButtonEntry.new(@time + 10, 100, 10.0, 10.0)
      @entry2 = GreenButton::GreenButtonEntry.new(@time + 10, 100, 10.0, 10.0)
      @entry3 = GreenButton::GreenButtonEntry.new(@time + 10, 10, 10.0, 10.0)
    end

    it "should respond to required methods" do
      @entry.should respond_to(:start_date)
      @entry.should respond_to(:end_date)
      @entry.should respond_to(:duration)
      @entry.should respond_to(:cost)
      @entry.should respond_to(:usage)
    end

    it "should not respond to allowing writing any values " do

      @entry.should_not respond_to(:start_date=)
      @entry.should_not respond_to(:end_date=)
      @entry.should_not respond_to(:duration=)
      @entry.should_not respond_to(:cost=)
      @entry.should_not respond_to(:usage=)
    end

    it "should report the correct values" do
      @entry.start_date.should == @time
      @entry.end_date.should == @time + 100
      @entry.duration.should == 100
      @entry.cost.should == 10.0
      @entry.usage.should == 10.0
    end

    it "should compare correctly based on start times" do
      (@entry <=> @entry1).should == -1
      (@entry1 <=> @entry).should == 1
      (@entry1 <=> @entry2).should == 0
    end

    it "should compare correctly when start times are same and durations are different" do
      (@entry3 <=> @entry2).should == -1 # entry3 should be smaller than entry2 since it's duration is smaller
      (@entry2 <=> @entry3).should == 1
    end

    it "should generate the correct string representation" do
      @entry.to_s.should == "#{@time} to: #{@time+100}, usage: #{'%.2f' % 10.00}kWh, cost: $#{'%.2f' % 10.00}"
    end
  end

end
