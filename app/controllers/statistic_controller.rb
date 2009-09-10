class StatisticController < ApplicationController

  def index
    @data = Array.new
    100.times do |row|
      @data[row] = Array.new
      7.times do |column|
        @data[row][column] = ["foo", "baz", "bar", "1", "23", "42"].rand
      end
    end

    render :json => @data
  end

end
