# Each card has a **rank**
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

# and a **colored** **suit**
Color = 
	BLACK: {}
	RED:   {}

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

# that define it.
Card = {}
for suitName, suit of Suit
	for rankName, rank of Rank
		$id = "#{rank.$id}#{suit.$id}"
		Card["#{rankName}_#{suitName}"] = {$id, rank, suit, color: suit.color}

# #### PUBLIC API
module.exports = {Rank, Color, Suit, Card}