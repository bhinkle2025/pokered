MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5, TrainerPicAndMoneyPointers
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money YoungsterPic,    2500
	pic_money BugCatcherPic,   2000
	pic_money LassPic,         2500
	pic_money SailorPic,       5000
	pic_money JrTrainerMPic,   4000
	pic_money JrTrainerFPic,   4000
	pic_money PokemaniacPic,   8000
	pic_money SuperNerdPic,    5500
	pic_money HikerPic,        5500
	pic_money BikerPic,        5000
	pic_money BurglarPic,      9000
	pic_money EngineerPic,     7000
	pic_money JugglerPic,      6500
	pic_money FisherPic,       7500
	pic_money SwimmerPic,      2500
	pic_money CueBallPic,      7500
	pic_money GamblerPic,      9000
	pic_money BeautyPic,       7000
	pic_money PsychicPic,      3000
	pic_money RockerPic,       2500
	pic_money JugglerPic,      3500
	pic_money TamerPic,        4000
	pic_money BirdKeeperPic,   4500
	pic_money BlackbeltPic,    5500
	pic_money Rival1Pic,       3500
	pic_money ProfOakPic,      9900
	pic_money ChiefPic,        6000
	pic_money ScientistPic,    6000
	pic_money GiovanniPic,     19900
	pic_money RocketPic,       4000
	pic_money CooltrainerMPic, 6500
	pic_money CooltrainerFPic, 6500
	pic_money BrunoPic,        29900
	pic_money BrockPic,        19900
	pic_money MistyPic,        19900
	pic_money LtSurgePic,      19900
	pic_money ErikaPic,        19900
	pic_money KogaPic,         19900
	pic_money BlainePic,       19900
	pic_money SabrinaPic,      19900
	pic_money GentlemanPic,    9000
	pic_money Rival2Pic,       9500
	pic_money Rival3Pic,       19900
	pic_money LoreleiPic,      29900
	pic_money ChannelerPic,    9000
	pic_money AgathaPic,       29900
	pic_money LancePic,        29900
	assert_table_length NUM_TRAINERS
