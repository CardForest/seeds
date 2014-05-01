# The cards in a tarot deck are divided into 22 **major arcana** cards
# and 56 **minor arcana** cards.
Arcana = 
	MAJOR: {}
	MINOR: {}

# Each **minor arcana** card has a **rank**
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
	PAGE:
		$id: 'P'
	KNIGHT:
		$id: 'N' # sometimes represented as 'Kn' or 'Kt'
	QUEEN:
		$id: 'Q'
	KING:
		$id: 'K'

# and a **suit**
Suit =
	WANDS:
		$id: 'W'
	PENTACLES:
		$id: 'P'
	CUPS:
		$id: 'C'
	SWORDS:
		$id: 'S'

# that define it.
Card = {}
for suitName, suit of Suit
	for rankName, rank of Rank
		$id = "#{rank.$id}#{suit.$id}"
		Card["#{rankName}_#{suitName}"] = {$id, rank, suit, arcana: Arcana.MINOR}

# The **major arcana** cards serve as a permanent [trump](http://en.wikipedia.org/wiki/Trump) and they do not have a normal suit or rank.
major =
	FOOL:
		$id: '0' # sometimes represented as 'XXI' or 'XXII'
	MAGICIAN:
		$id: 'I'
	HIGH_PRIESTESS:
		$id: 'II'
	EMPRESS:
		$id: 'III'
	EMPEROR:
		$id: 'IV'
	HIEROPHANT:
		$id: 'V'
	LOVERS:
		$id: 'VI'
	CHARIOT:
		$id: 'VII'
	STRENGTH:
		$id: 'VIII'
	HERMIT:
		$id: 'IX'
	WHEEL_OF_FORTUNE:
		$id: 'X'
	JUSTICE:
		$id: 'XI'
	HANGED_MAN:
		$id: 'XII'
	DEATH:
		$id: 'XIII'
	TEMPERANCE:
		$id: 'XIV'
	DEVIL:
		$id: 'XV'
	TOWER:
		$id: 'XVI'
	STAR:
		$id: 'XVII'
	MOON:
		$id: 'XVIII'
	SUN:
		$id: 'XIX'
	JUDGEMENT:
		$id: 'XX'
	WORLD:
		$id: 'XXI'
for cardName, card of major
	Card[cardName] = card
	card.arcana = Arcana.MAJOR

# #### PUBLIC API
module.exports = {Arcana, Rank, Suit, Card}
