# This deck defines 4 types of objects
module.exports = {Rank, Color, Suit, Card}

# Color is just a basic empty object
Color = 
	BLACK: {}
	RED:   {}

# Rank has a custom short id
Rank =
	ACE:
		$id: 'A'
	TWO:
		$id: '2'
	THREE:
		$id: '3'
	FOUR:
		$id: '4'
	FIVE:
		$id: '5'
	SIX:
		$id: '6'
	SEVEN:
		$id: '7'
	EIGHT:
		$id: '8'
	NINE:
		$id: '9'
	TEN:
		$id: 'T'
	JACK:
		$id: 'J'
	QUEEN:
		$id: 'Q'
	KING:
		$id: 'K'

# Suit has a custom short id and has a color property
Suit = 
	CLUBS:
		$id:   'C'
		color: Color.BLACK
	DIAMONDS:
		$id:   'D'
		color: Color.RED
	HEARTS:
		$id:   'H'
		color: Color.RED
	SPADES:
		$id:   'S'
		color: Color.BLACK

# the cards themselves 
Card = {}
for suitName, suit of Suit
	for rankName, rank of Rank
		$id = "#{rank.$id}#{suit.$id}"
		Card["#{rankName}_#{suitName}"] = {$id, rank, suit, color: suit.color}
