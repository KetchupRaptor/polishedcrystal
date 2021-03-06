

PlayerSpriteTable:
	dw ChrisOverworldSprites
	dw KrisOverworldSprites

ChrisOverworldSprites:
	dba ChrisSpriteGFX
	dba ChrisBikeSpriteGFX
	dba ChrisSurfSpriteGFX

KrisOverworldSprites:
	dba KrisSpriteGFX
	dba KrisBikeSpriteGFX
	dba KrisSurfSpriteGFX


overworld_sprite: MACRO
; pointer, bank, type, palette
	dab \1
	db \2, \3
ENDM

SpriteHeaders:
	overworld_sprite ChrisSpriteGFX, WALKING_SPRITE, OW_PLAYER
	overworld_sprite FollowerSpriteGFX, WALKING_SPRITE, OW_FOLLOWER

	overworld_sprite ChrisBikeSpriteGFX, WALKING_SPRITE, OW_PLAYER
	overworld_sprite ChrisSurfSpriteGFX, WALKING_SPRITE, OW_PLAYER
	overworld_sprite KrisSpriteGFX, WALKING_SPRITE, OW_PLAYER
	overworld_sprite KrisBikeSpriteGFX, WALKING_SPRITE, OW_PLAYER
	overworld_sprite KrisSurfSpriteGFX, WALKING_SPRITE, OW_PLAYER

	overworld_sprite MomSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite DadSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite LyraSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SilverSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite FalknerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BugsySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite WhitneySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite MortySpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite ChuckSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite JasmineSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite PryceSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite ClairSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite WillSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite KogaSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite BrunoSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite KarenSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite LanceSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BrockSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite MistySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SurgeSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite ErikaSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite JanineSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite SabrinaSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BlaineSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite BlueSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite RedSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite LeafSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite YellowSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite OakSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite ElmSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite IvySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite WestwoodSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite WillowSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite AndySpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BillSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite EusineSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite KurtSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite RedsMomSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite DaisySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite LoreleiSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite AgathaSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite PalmerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite WalkerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite ImakuniSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite LawrenceSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite JamesSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite JessieSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ProtonSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite PetrelSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite ArcherSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite ArianaSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite GiovanniSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite CherylSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite RileySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BuckSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite MarleySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite MiraSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite AnabelSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite FlannerySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite MayleneSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SkylaSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ValerieSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite KukuiSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN
	overworld_sprite CaitlinSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite DarachSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite StevenSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite CynthiaSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite CandelaSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BlancheSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SparkSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BuenaSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite CaptainSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite MatsumotoSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite AceTrainerFSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite AceTrainerMSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite AromaLadySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ArtistSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BakerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite BattleGirlSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BeautySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BikerSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite BirdKeeperSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BlackBeltSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite BoarderSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BreederSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite BugCatcherSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite BugManiacSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BurglarSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite CamperSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite ChildSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite CoolDudeSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite CosplayerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite CowgirlSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite CuteGirlSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite DragonTamerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite ElderSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite EngineerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite FatGuySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite FirebreatherSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite FisherSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite GentlemanSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite GrampsSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite GrannySpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite HexManiacSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite HikerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite JugglerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite KimonoGirlSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite LadySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite LassSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite MatronSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite NurseSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite OfficerSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite OfficerFSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite PharmacistSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite PISpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite PicnickerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite PokefanMSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite PokefanFSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite PokemaniacSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite PsychicSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite RichBoySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite RockerSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite RocketSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite RocketGirlSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite RoughneckSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SageSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SailorSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SchoolboySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SchoolgirlSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ScientistSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite ScientistFSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SightseerMSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SkierSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SuperNerdSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite SwimmerGirlSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite SwimmerGuySpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite TamerSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite TeacherSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite TwinSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite VeteranMSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite VeteranFSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite WaitressSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite YoungsterSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BowingNurseSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ClerkSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite ReceptionistSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite LinkReceptionistSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite GymGuySpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite FishingGuruSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite GameboyKidSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN
	overworld_sprite GamerGirlSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SilphEmployeeSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite SafariOfficerSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite SwimmingOfficerSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SwimmingOfficerFSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite ClefairyWalkSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite FarfetchdSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite LaprasSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite EeveeSpriteGFX, WALKING_SPRITE, PAL_NPC_BROWN
	overworld_sprite DragoniteSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite MewSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite CelebiSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN
	overworld_sprite SurfingPikachuSpriteGFX, WALKING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite ArmoredMewtwoSpriteGFX, WALKING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite BigSnorlaxSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BigLaprasSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite BigOnixSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite BigGyaradosSpriteGFX, BIG_GYARADOS_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite SlowpoketailSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite WeirdTreeSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN
	overworld_sprite BallCutFruitSpriteGFX, STANDING_SPRITE, OW_GRASS_OR_PORTRAIT
	overworld_sprite BoulderRockFossilSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN ; was rock
	overworld_sprite BookPaperPokedexSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite SnesSpriteGFX, STANDING_SPRITE, PAL_NPC_GREEN ; was red
	overworld_sprite N64SpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite GameCubeSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite WiiSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE ; was blue
	overworld_sprite SilverTrophySpriteGFX, STANDING_SPRITE, OW_NPC4
	overworld_sprite GoldTrophySpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN
	overworld_sprite ElectricFenceLeftSpriteGFX, STANDING_SPRITE, OW_GRASS_OR_PORTRAIT
	overworld_sprite ElectricFenceRightSpriteGFX, STANDING_SPRITE, OW_GRASS_OR_PORTRAIT
	overworld_sprite SailboatSpriteGFX, STANDING_SPRITE, PAL_NPC_PURPLE
	overworld_sprite MiscOverheadSpriteGFX, STANDING_SPRITE, PAL_NPC_BROWN ; was rock
