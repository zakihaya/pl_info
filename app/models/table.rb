
class Table
	def initialize(team, play, win, draw, lose, \
				get_score, cns_score, goal_diff, points)
	  	@team      = team
  		@play      = play
  		@win       = win
  		@draw      = draw
  		@lose      = lose
  		@get_score = get_score
  		@cns_score = cns_score
  		@goal_diff = goal_diff
  		@points    = points
  	end

  	#getter
  	def team
  		return @team
  	end
  	def play
  		return @play
  	end
  	def win
  		return @win
  	end
  	def draw
  		return @draw
  	end
  	def lose
  		return @lose
  	end
  	def get_score
  		return @get_score
  	end
  	def cns_score
  		return @cns_score
  	end
  	def goal_diff
  		return @goal_diff
  	end
  	def points
  		return @points
  	end

  	#setter
  	def team=(s)
  		@team = s
  	end
  	def play=(s)
  		@play = s
  	end
  	def win=(s)
  		@win = s
  	end
  	def draw=(s)
  		@draw = s
  	end
  	def lose=(s)
  		@lose = s
  	end
  	def get_score=(s)
  		@get_score = s
  	end
  	def cns_score=(s)
  		@cns_score = s
  	end
  	def goal_diff=(s)
  		@goal_diff = s
  	end
  	def points=(s)
  		@points = s
  	end
  	
end
