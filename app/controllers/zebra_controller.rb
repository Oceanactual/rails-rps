class ZebraController < ApplicationController
  def rock
    options = ["rock", "paper", "scissors"]
    @hand = options.sample
    if @hand == "rock"
      @outcome = "tied"
    elsif @hand == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "moves/rock"})
  end

  def scissors
    options = ["rock", "paper", "scissors"]
    @hand = options.sample
    if @hand == "rock"
      @outcome = "lost"
    elsif @hand == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({:template => "moves/scissors"})
  end
  def paper
    options = ["rock", "paper", "scissors"]
    @hand = options.sample
    if @hand == "rock"
      @outcome = "won"
    elsif @hand == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({:template => "moves/paper"})
  end
  def rules
    render({:template => "moves/rules"})
  end
end
