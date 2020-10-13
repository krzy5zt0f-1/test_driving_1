class Motivations

def initialize
  @list_of_motivations = []
end

def track_motivation(score)
  @list_of_motivations << score
  "Motivation stored!"
end

def average_motivation
  @list_of_motivations.size >= 3 ? last_three_scores = @list_of_motivations[-3..-1] : last_three_scores = @list_of_motivations
  @list_of_motivations.size >= 3 ? no = 3 : no = @list_of_motivations.size
  last_three_scores.inject(0, :+).to_f / no
end
end
