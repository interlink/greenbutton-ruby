# greenbutton class test cases
#

require 'greenbutton'

describe GreenButton::GreenButtonData do
  describe do
    it "Should report overlap in times" do
      lambda do
        time = Time.now
        GreenButton::GreenButtonData.new([
          GreenButton::GreenButtonEntry.new(time+15, 10, 10, 10),
          GreenButton::GreenButtonEntry.new(time+10, 10, 10, 10)])
      end.should raise_error(GreenButton::OverlapInTime)
    end
  end

  describe "a valid object" do
    before do 
      entries = []
      @time = Time.now
      @total_cost = 0
      @total_usage = 0

      10.step(100, 10) do |i|
        @total_usage += i/2
        @total_cost += i
        entries << GreenButton::GreenButtonEntry.new(@time + i, 10, i/2, i)
      end

      @data = GreenButton::GreenButtonData.new(entries)
    end

    it "should respond to correct methods" do
      @data.should respond_to(:start_date)
      @data.should respond_to(:end_date)
      @data.should respond_to(:total_cost)
      @data.should respond_to(:total_usage)
      @data.should respond_to(:cost_for_period)
      @data.should respond_to(:usage_for_period)
    end

    it "should not let write any values" do
      @data.should_not respond_to(:start_date=)
      @data.should_not respond_to(:end_date=)
      @data.should_not respond_to(:total_cost=)
      @data.should_not respond_to(:total_usage=)
      @data.should_not respond_to(:cost_for_period=)
      @data.should_not respond_to(:usage_for_period=)
    end

    it "should allow iteration over each entry" do
      @data.each do |e|
        e.should respond_to(:cost)
      end
    end

    it "should report the total cost" do
      @data.total_cost.should == @total_cost
    end

    it "should report the total usage" do
      @data.total_usage.should == @total_usage
    end

    it "should report the correct start and end times" do
      @data.start_date.should == @time + 10
      @data.end_date.should == @time + 110
    end

    it "should report total cost and usage from a given start date" do
      @data.cost_for_period(@time + 20, nil).should == @total_cost - 10
      @data.cost_for_period(@time + 50, nil).should == @total_cost - 10 - 20 - 30 - 40
      @data.cost_for_period(@time + 45, nil).should == @total_cost - 10 - 20 - 30 - 40
      @data.cost_for_period(@time + 55, nil).should == @total_cost - 10 - 20 - 30 - 40 - 50
      @data.cost_for_period(@time + 100, nil).should == 100
      @data.cost_for_period(@time + 110, nil).should == 0

      @data.usage_for_period(@time + 20, nil).should == @total_usage - 5
      @data.usage_for_period(@time + 50, nil).should == @total_usage - 5 - 10 - 15 - 20
      @data.usage_for_period(@time + 45, nil).should == @total_usage - 5 - 10 - 15 - 20
      @data.usage_for_period(@time + 55, nil).should == @total_usage - 5 - 10 - 15 - 20 - 25
      @data.usage_for_period(@time + 100, nil).should == 50
      @data.usage_for_period(@time + 110, nil).should == 0
    end

    it "should report total cost and usage to a given end date" do
      @data.cost_for_period(nil, @time + 20).should == 10
      @data.cost_for_period(nil, @time + 30).should == 30
      @data.cost_for_period(nil, @time + 100).should == @total_cost - 100
      @data.cost_for_period(nil, @time + 110).should == @total_cost
      @data.cost_for_period(nil, @time + 150).should == @total_cost

      @data.usage_for_period(nil, @time + 20).should == 5
      @data.usage_for_period(nil, @time + 30).should == 15
      @data.usage_for_period(nil, @time + 100).should == @total_usage - 50
      @data.usage_for_period(nil, @time + 110).should == @total_usage
      @data.usage_for_period(nil, @time + 150).should == @total_usage
    end

    it "should report total cost and usage for a range of dates" do
      @data.cost_for_period(@time, @time+20).should == 10
      @data.cost_for_period(@time+10, @time+20).should == 10
      @data.cost_for_period(@time+10, @time+15).should == 0
      @data.cost_for_period(@time+100, @time+150).should == 100
      @data.cost_for_period(@time+10, @time+150).should == @total_cost
      @data.cost_for_period(@time+50, @time+100).should == 50+60+70+80+90

      @data.usage_for_period(@time, @time+20).should == 5
      @data.usage_for_period(@time+10, @time+20).should == 5
      @data.usage_for_period(@time+10, @time+15).should == 0
      @data.usage_for_period(@time+100, @time+150).should == 50
      @data.usage_for_period(@time+10, @time+150).should == @total_usage
      @data.usage_for_period(@time+50, @time+100).should == (50+60+70+80+90)/2
    end

    it "should support basic enumerable operations correctly" do
      @data.map { |e| e.duration }.should == [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
      @data.reduce(0) { |s, e| s + e.duration }.should == 100
      @data.select { |e| e.start_date == @time + 10 }.first.start_date.should == @time + 10
    end

    it "should support Enumerator methods" do
      enum = @data.each
      enum.next.start_date.should == @time + 10
      enum.next.start_date.should == @time + 20
    end
  end
end
