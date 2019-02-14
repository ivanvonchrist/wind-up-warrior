// Author: Ivan von Christ
// Created: 2016-03-17
// Version. 1.3.0

// Set Window Properties
SetWindowTitle( "" )

// Set Display Properties
SetWindowSize ( 360, 640, 0)
SetDisplayAspect ( 0.5625 )
SetOrientationAllowed( 1, 1, 0, 0)
SetDefaultMagFilter( 0 )
SetDefaultMinFilter( 0 )
SetTextDefaultMinFilter( 0 )
SetTextDefaultMagFilter( 0 )

SetPrintColor(255,255,255)

SetMusicSystemVolumeOGG ( 0 )
SetSoundSystemVolume ( 0 )

//GameCenter
if GetGameCenterExists() = 1
	GameCenterSetup()
endif

if GetGameCenterLoggedIn() = 0 and gamecentercheck = 0
	GameCenterLogin()
	gamecentercheck = 1
endif

//Admob and Chartboost Keys
AdmobID$ = ""
SetAdMobDetails ( AdmobID$ )
CreateAdvert (0, 1, 2, 0)
SetAdvertVisible (0)

ChartboostID$ = ""
ChartboostKey$ = ""
SetChartboostDetails( ChartboostID$, ChartboostKey$)

//IAP Premium
InAppPurchaseSetTitle ( "" )
InAppPurchaseAddProductID( "", 0)
InAppPurchaseSetKeys( "", "")
InAppPurchaseSetup()
InAppPurchaseRestore()
if GetInAppPurchaseAvailable( 0 ) = 1
	OpenToRead (1, "wuwdatasave.txt")
	if no_ads < 1
		no_ads = 1
		DeleteAdvert()
		SetAdvertVisible(0)
	elseif no_ads = 1
		DeleteAdvert()
		SetAdvertVisible(0)
	endif
	CloseFile ( 1 )
	print ( str(stage))
	Sync()
endif

// All Global Variables

global run = 0
global flag = 0
global screen = 0
global splash = 0
global buttonID = 0
global cogAngle = 0
global weaponAngle as float = 25.0
global trailflag = 1
global trailsize = 0
global stage = 1
global speak as integer = 0
global speechflag as integer = 0
global talking as integer = 0
global justin = 0
global tutorial = 0
global tutorialspeech = 0
global previewnum = 0
global contcheck = 0
global homecheck = 0
global staggerspeech = 0
global env1num as integer = 0
global env2num as integer = 0
global env3num as integer = 0
global levelup as integer = 0
global leveluptween = 0
global statuptween = 0
global oktween = 0
global resettween = 0
global leveluptween2 = 0
global statuptween2 = 0
global oktween2 = 0
global resettween2 = 0
global plustween = 0
global pointstween = 0
global plustween2 = 0
global pointstween2 = 0
global gaintext = 0
global genericfadet = 0
global enemydmgdisp as integer = 0
global loottext = 0
global wuwtween = 0
global wtstage = 0
global bgcol = 0
global energyalert = 0
global levelcomplete = 0
global gamecomplete = 0
global beststage = 1
global stagemod = 0
global hpmod = 0
global dmgmod = 0
global starttween1 = 0
global starttween2 = 0
global lbtween1 = 0
global lbtween2 = 0
global achitween1 = 0
global achitween2 = 0
global settween1 = 0
global settween2 = 0
global credtexttween1 = 0
global credtexttween2 = 0
global credtexttween11 = 0
global credtexttween22 = 0
global exittween1 = 0
global exittween2 = 0
global credsup = 0
global loadflag = 0
global exitflag = 0
global coup = 0
global csheetup = 0
global submitflag = 0

global sidemenutween1 = 0
global sidemenutween2 = 0

global csheettween1 = 0
global csheettween2 = 0
global csheettextl1 = 0
global csheettextl2 = 0
global csheettextl21 = 0
global csheettextl22 = 0
global csheettextr1 = 0
global csheettextr2 = 0

global cotween1 = 0
global cotween2 = 0
global usecotween1 = 0
global usecotween2 = 0
global nocotween1 = 0
global nocotween2 = 0
global cobtntween1 = 0
global cobtntween2 = 0

global gifttween1 = 0
global gifttween2 = 0
global giftbtntween1 = 0
global giftbtntween2 = 0

global giftboxtween1 = 0
global giftboxtween2 = 0

global cotextl1 = 0
global cotextl2 = 0

global soundtween1 = 0
global soundtween2 = 0
global musictween1 = 0
global musictween2 = 0
global credtween1 = 0
global credtween2 = 0
global backtween1 = 0
global backtween2 = 0

global premtween1 = 0
global premtween2 = 0

global buytween1 = 0
global buytween2 = 0

global premtext1 = 0
global premtext2 = 0

global othermenu = 0
global startok = 0

global totalgold = 0
global ga1 = 0
global ga2 = 0
global ga3 = 0
global ga4 = 0
global totalkills = 0
global timesdied = 0
global ka1 = 0
global ka2 = 0
global ka3 = 0
global ka4 = 0

global la1 = 0
global la2 = 0
global la3 = 0
global la4 = 0

global b1k =  0
global b2k = 0
global b3k = 0
global b4k =  0
global b5k = 0
global b6k = 0
global b7k =  0
global b8k = 0
global b9k = 0
global b10k =  0
global b11k = 0
global b12k = 0
global l1g = 0 //slimepole
global l2g = 0 //weaverblade
global l3g = 0 //serpentinereaver
global l4g = 0 //sorcererssceptre
global l5g = 0 //wartornraidsword
global l6g = 0 //royalclaymore
global l7g = 0 //axeoftheancients
global l8g = 0 //infernus
global l9g = 0 //corruptipn
global l10g = 0 //naturesbulwark
global l11g = 0 //cobwebshield
global l12g = 0 //bubonicward
global l13g = 0 //soothsayerssigil
global l14g = 0 //glacialaegis
global l15g = 0 //escutcheon
global l16g = 0 //deathsshelter

global soundoff = 0
global musicoff = 0

//Global Player Vars
global cur_hp as float = 0
global max_hp as float = 0
global discur_hp as integer = 0
global dismax_hp as integer = 0
global cur_energy as float = 0
global max_energy as float = 0
global discur_energy as integer = 0
global dismax_energy as integer = 0
global cur_exp as float = 0
global req_exp as float = 0
global discur_exp as integer = 0
global disreq_exp as integer = 0
global level = 1
global gold = 0
global gold1 = 0
global gold2 = 0
global gold3 = 0
global attack = 1
global defence = 1
global agility as float = 1
global luck as float = 1
global winder = 1
global winderspeech = 0
global winderflag = 0
global winderval as integer = 0
global wsprite = 0
global ssprite = 0
global ma01 = 0
global ma02 = 0
global ma03 = 0
global ma11 = 0
global ma12 = 0
global ma13 = 0
global death = 0
global dseq = 0
global costmod = 5
global magicmod = 4

//Stance Vars
global activestance as integer = 0
global stance1 as integer = 1
global stance2 as integer = 1
global stance3 as integer = 1
global stance1mod as float = 1
global stance2mod as float = 1
global stance3mod as float = 0.1
global stance1drain as float = 0
global stance2drain as float = 0
global stance3drain as float = 0

global stancearray as integer [20]

for i = 1 to 19
	stancearray[i] = (i * (i * 300)) * 6
next i

global s1exp as float = 0
global s1reqexp as float = 0
global s2exp as float = 0
global s2reqexp as float = 0
global s3exp as float = 0
global s3reqexp as float = 0
global s1gain = 0
global s2gain = 0

//Damage Calculation Vars
global pdmg as integer = 0
global pdef as float = 0
global patkspeed as float = 0.0
global pdodge as float = 0
global pcc as float = 0
global pgoldfind as float = 0
global pmagicfind as float = 0
global emindmg as float = 0
global emaxdmg as float = 0
global edef as float = 0
global vattack = 0
global vdefence = 0
global vagility as float = 0
global vluck as float = 0
global statpoints as integer = 0
global statpointhold = 0
global atkup = 0
global defup = 0
global agiup as float = 0
global lukup = 0

global movespeed as float = 0.35
global drainspeed as float = 0.02
global distance as integer = 1

//Inventory Vars
global cur_item_sel as integer = 0
global max_inv_space as integer = 1

//Miscellanous Vars
global genericfade = 0
global loaded = 0

global env1x as float = 0
global env2x as float = 0

//Endloss Mode Vars
global emode_enable = 0
global emode_active = 0
global emode_mob1 = 0
global emode_mob2 = 0
global emode_mob3 = 0
global emode_boss = 0
global emode_env = 0
global emode_music = 0
global emode_orbs = 0 //save
global emode_floor = 1
global emode_score = 0 //save
global emode_text = 0
global emode_speech = 0
global orbroll = 0
global emode_highs = 0

//New Orb Vars
global p_orbs = 0
global m_orbs = 0
global w_orbs = 0

global roll_orb_type = 0

global p_orb_active = 0
global m_orb_active = 0
global w_orb_active = 0
global orb_is_active = 0

global orb_sel = 1

global no_ads = 0

global mapSel = 1
global mapCost = 0
global mapcont = 0
global fadeIn = 0

global skin = 0

global giftcount = 0
global giftroll = 0
global giftfun = 0

global c1g = 0
global c2g = 0
global c3g = 0
global c4g = 0
global c5g = 0
global c6g = 0
global c7g = 0
global c8g = 0
global c9g = 0
global c10g = 0

global newrun = 0

global gamecentercheck = 0

//inventoryType Definition

type inventoryType
	name as string
	itemtype as integer
	mindmg as integer
	maxdmg as integer
	defence as integer
	prop1 as string
	prop2 as string
	prop3 as string
	prop1val as integer
	prop2val as integer
	prop3val as integer
	prop1exist as integer
	prop2exist as integer
	prop3exist as integer
	sellval as integer
	upgradelvl as integer
	upgradecost as float
	equipval as integer
	rarity as integer
	spriteid as integer
endtype

global inventoryArray as inventoryType[1]

global equipvals as integer[3]

OpenToRead (1, "wuwdatasave.txt")
	run = ReadInteger ( 1 )
CloseFile ( 1 )

	if run = 0
		save()
	elseif run = 1
		load()
	endif
	
	if no_ads = 1
		DeleteAdvert()
		SetAdvertVisible(0)
	endif

//Custom Text
LoadImage ( 1, "customText.png" )
SetTextDefaultFontImage ( 1 )
LoadImage ( 2, "customTextow.png" )
LoadImage ( 3, "customTextor.png" )
LoadImage ( 4, "customTextoy.png" )
LoadImage ( 5, "customTextoo.png" )

//Splash
LoadImage ( 100, "splash/blank.png" )
SetImageMinFilter ( 100, 1 )
SetImageMagFilter ( 100, 1 )
LoadImage ( 102, "splash/blank2.png" )
SetImageMinFilter ( 102, 1 )
SetImageMagFilter ( 102, 1 )
LoadImage (103, "splash/splash.png" )
SetImageMinFilter ( 103, 1 )
SetImageMagFilter ( 103, 1 )

LoadImage ( 104, "splash/start.png" )
LoadImage ( 105, "splash/lb.png" )
LoadImage ( 106, "splash/achi.png" )
LoadImage ( 107, "splash/set.png" )

LoadImage ( 108, "splash/sound.png" )
LoadImage ( 109, "splash/music.png" ) 
LoadImage ( 110, "splash/credits.png" )
LoadImage ( 111, "splash/back.png" )

LoadImage ( 112, "splash/lb1.png" )
LoadImage ( 113, "splash/lb2.png" )

// Splash Environment Images
LoadImage ( 400, "env/env1.png" )
LoadImage ( 500, "env/env1_bg.png" )

//Effect Images
LoadImage ( 101, "fx/kroz.png")

//New UI Images

LoadImage ( 2000, "splash/new/getprem.png")
LoadImage ( 2001, "splash/new/buy.png")
LoadImage ( 2002, "splash/new/notnow.png")
LoadImage ( 2003, "splash/new/skin.png")

//New Map Images

LoadImage ( 2100, "map/lvl1.png")
LoadImage ( 2101, "map/lvl2.png")
LoadImage ( 2102, "map/lvl3.png")
LoadImage ( 2103, "map/lvl4.png")
LoadImage ( 2104, "map/lvl5.png")
LoadImage ( 2105, "map/lvl6.png")
LoadImage ( 2106, "map/lvl7.png")
LoadImage ( 2107, "map/lvl8.png")
LoadImage ( 2108, "map/lvl9.png")
LoadImage ( 2109, "map/lvl10.png")
LoadImage ( 2110, "map/lvl11.png")
LoadImage ( 2111, "map/lvl12.png")
LoadImage ( 2112, "map/backbtn.png")
LoadImage ( 2113, "map/gobtn.png")

if musicoff = 0
	SetMusicSystemVolumeOGG ( 20 )
elseif musicoff = 1
	SetMusicSystemVolumeOGG ( 0 )
endif
if soundoff = 0
	SetSoundSystemVolume ( 15 )
elseif soundoff = 1
	SetSoundSystemVolume ( 0 )
endif

LoadMusicOGG ( 1, "music/SILENCE.OGG" )
LoadMusicOGG ( 2, "music/SILENCE.OGG" )

do		
	select screen
		case 0
			SetAdvertVisible (0)			
			splashScreen()
			if exitflag = 0
				uiload()
				fightvarz()
			endif
			splash = 1
			if tutorial = 1
				screen = 1
			elseif tutorial = 0
				screen = 3
			endif
		endcase
		case 1
			//SetAdvertVisible(0)
			stageintroScreen()
			//SetAdvertVisible(1)
			screen = 2
		endcase
		case 2
			mainScreen()
			
			if contcheck = 0
				
				if emode_active = 0
					if stage = 1
						speechflag = 1
					elseif stage = 2
						speechflag = 2
					elseif stage = 3
						speechflag = 3
					elseif stage = 4
						speechflag = 4
					elseif stage = 5
						speechflag = 5
					elseif stage = 6
						speechflag = 6
					elseif stage = 7
						speechflag = 7
					elseif stage = 8
						speechflag = 8
					elseif stage = 9
						speechflag = 9
					elseif stage = 10
						speechflag = 10
					elseif stage = 11
						speechflag = 11
					elseif stage = 12
						speechflag = 12
					endif
				endif
				
				if emode_enable = 1 and emode_speech = 2 and emode_active = 1
					speechflag = 13
				endif
				
				if emode_enable = 1 and emode_speech < 1 and emode_active = 0
					emode_speech = 1
					speechflag = 13
					
					if stage = 12 and homecheck = 0
						speechflag = 12
					endif
				endif	
				
				screen = 3
						
			elseif contcheck = 1
				screen = 1
			endif
		endcase
		case 3
			winderUpgrade()
			homeScreen()
			if emode_enable and emode_speech < 2
				emode_speech = 2
			endif
			if exitflag = 0
				if w_orb_active = 0
					flag = 0
					screen = 1
				elseif w_orb_active = 1
					flag = 0
					screen = 4
				endif
			elseif exitflag = 1
				flag = 0
				screen = 0
			endif
		endcase
		case 4
			//SetAdvertVisible(0)
			mapScreen()
			if mapcont = 2
				flag = 0
				screen = 3
			elseif mapcont = 1
				flag = 0
				screen = 1
			endif
			//SetAdvertVisible(1)
		endcase
	endselect
	
	Sync()
loop

function splashScreen()
	
	wssprite()
	winderhandler()
	envsprites()
	//purchases()
	
	lastbutton = 0
	
	//splash
	CreateSprite (100, 100)
	SetSpriteColorAlpha (100, 0)
	SetSpriteSize (100, 65, -1)
	SetSpriteOffset ( 100, (GetSpriteWidth(100)/2), (GetSpriteHeight(100)/2) )
	SetSpritePositionByOffset (100, 50, 50)
	FixSpriteToScreen (100, 1)
	SetSpriteDepth (100, 3)
	
	//game logo
	CreateSprite (101, 102)
	SetSpriteColorAlpha (101, 0)
	SetSpriteSize (101, 100, -1)
	SetSpriteOffset ( 101, (GetSpriteWidth(101)/2), (GetSpriteHeight(101)/2) )
	SetSpritePositionByOffset (101, 50, 40)
	FixSpriteToScreen (101, 1)
	SetSpriteDepth (101, 0)
	
	//credits txt
	CreateText (9996, "ART/DESIGN/PROGRAMMING")
	SetTextColor ( 9996, 0, 0, 0, 0 )
	SetTextSize ( 9996, 1.3 )
	SetTextAlignment (9996, 1 )
	SetTextPosition (9996, -150, 76.2 )
	SetTextDepth (9996, 0 )
	
	CreateText (9995, "IVAN VON CHRIST")
	SetTextColor ( 9995, 0, 0, 0, 0 )
	SetTextSize ( 9995, 1.6 )
	SetTextAlignment (9995, 1 )
	SetTextPosition (9995, -150, 76.2 + 1.8 )
	SetTextDepth (9995, 0 )
	
	//version txt
	CreateText ( 9997, "V1.3.0" )
	SetTextColor ( 9997, 125, 125, 125, 0 )
	SetTextSize ( 9997, 1.5 )
	SetTextAlignment (9997, 2 )
	SetTextPosition (9997, 97, 97 )
	SetTextDepth (9997, 9 )
	
	//splash
	CreateSprite (102, 103)
	SetSpriteColorAlpha (102, 0)
	SetSpriteSize (102, 100, 48.3)
	SetSpriteOffset ( 102, (GetSpriteWidth(102)/2), 0 )
	SetSpritePositionByOffset (102, 50, 25.3)
	FixSpriteToScreen (102, 1)
	SetSpriteDepth (102, 1)
	
	//startbtn
	CreateSprite ( 103, 104)
	SetSpriteColorAlpha (103, 0)
	SetSpriteSize (103, 69.1, 12.7)
	SetSpritePosition (103, -120, 64.4-3.5)
	SetSpriteDepth (103, 0)
	
	//leaderboardsbtn
	CreateSprite ( 104, 105)
	SetSpriteColorAlpha (104, 0)
	SetSpriteSize (104, 22.5, 12.7)
	SetSpritePosition (104, 120, 77.5-3.5)
	SetSpriteDepth (104, 0)
	
	//achievementsbtn
	CreateSprite ( 105, 106)
	SetSpriteColorAlpha (105, 0)
	SetSpriteSize (105, 22.5, 12.7)
	SetSpritePosition (105, 143.3, 77.5-3.5)
	SetSpriteDepth (105, 0)
	
	//settingsbtn
	CreateSprite ( 106, 107)
	SetSpriteColorAlpha (106, 0)
	SetSpriteSize (106, 22.5, 12.7)
	SetSpritePosition (106, 166.6, 77.5-3.5)
	SetSpriteDepth (106, 0)
	
	//soundbtn
	CreateSprite ( 107, 108)
	SetSpriteColorAlpha (107, 0)
	SetSpriteSize (107, 22.5, 12.7)
	SetSpritePosition (107, -140, 64.4-3.5)
	SetSpriteDepth (107, 0)
	SetSpriteAnimation (107, 81, 81, 2)
	
	if soundoff = 0
		SetSpriteFrame (107, 1)
	elseif soundoff = 1
		SetSpriteFrame (107, 2)
	endif
	
	//musicbtn
	CreateSprite ( 108, 109)
	SetSpriteColorAlpha (108, 0)
	SetSpriteSize (108, 22.5, 12.7)
	SetSpritePosition (108, -116.6, 64.4-3.5)
	SetSpriteDepth (108, 0)
	SetSpriteAnimation (108, 81, 81, 2)
	
	if musicoff = 0
		SetSpriteFrame (108, 1)
	elseif musicoff = 1
		SetSpriteFrame (108, 2)
	endif
	
	//credbtn
	CreateSprite ( 109, 110)
	SetSpriteColorAlpha (109, 0)
	SetSpriteSize (109, 22.5, 12.7)
	SetSpritePosition (109, 120, 77.5-3.5)
	SetSpriteDepth (109, 0)
	
	//backbtn
	CreateSprite ( 110, 111)
	SetSpriteColorAlpha (110, 0)
	SetSpriteSize (110, 22.5, 12.7)
	SetSpritePosition (110, 143.3, 77.5-3.5)
	SetSpriteDepth (110, 0)
	
	//lb1
	CreateSprite ( 111, 112)
	SetSpriteColorAlpha (111, 0)
	SetSpriteSize (111, 22.5, 12.7)
	SetSpritePosition (111, 120, 77.5-3.5)
	SetSpriteDepth (111, 0)
	
	//lb2
	CreateSprite ( 112, 113)
	SetSpriteColorAlpha (112, 0)
	SetSpriteSize (112, 22.5, 12.7)
	SetSpritePosition (112, 143.3, 77.5-3.5)
	SetSpriteDepth (112, 0)
	
	//back
	CreateSprite ( 113, 111)
	SetSpriteColorAlpha (113, 0)
	SetSpriteSize (113, 22.5, 12.7)
	SetSpritePosition (113, 166.6, 77.5-3.5)
	SetSpriteDepth (113, 0)
	
	//prembtn + change skin
	CreateSprite(2000, 2000)
	SetSpriteColorAlpha(2000, 0)
	SetSpriteSize(2000, 60, 8)
	SetSpriteOffset(2000, GetSpriteWidth(2000)/2, 0)
	SetSpritePositionByOffset(2000, 50, 137.2)
	SetSpriteAnimation(2000, 216, 51, 2)
	PlaySprite(2000, 2)
	SetSpriteDepth(2000, 0)
	
	if no_ads = 0
		SetSpriteImage(2000, 2000)
		SetSpriteAnimation(2000, 216, 51, 2)
		PlaySprite(2000, 2)
	elseif no_ads = 1
		SetSpriteImage(2000, 2003)
		SetSpriteAnimation(2000, 216, 51, 2)
		if skin = 0
			SetSpriteFrame(2000, 1)
		elseif skin = 1
			SetSpriteFrame(2000, 2)
		endif
	endif
	
	//buynow btn
	CreateSprite(2001, 2001)
	SetSpriteColorAlpha(2001, 0)
	SetSpriteSize(2001, 38.3, 12.7)
	SetSpriteOffset(2001, GetSpriteWidth(2001)/2, 0)
	SetSpritePositionByOffset(2001, 50, 127.5-3.5)
	SetSpriteDepth(2001, 0)
	
	//not now btn
	CreateSprite(2002, 2002)
	SetSpriteColorAlpha(2002, 0)
	SetSpriteSize(2002, 38.3, 8)
	SetSpriteOffset(2002, GetSpriteWidth(2002)/2, 0)
	SetSpritePositionByOffset(2002, 50, 137.2)
	SetSpriteDepth(2002, 0)
	
	//premtext
	CreateText(2000, "SUPPORT US BY BUYING PREMIUM!" + CHR(10) + CHR(10) + "UNLOCK NO ADS, GOLD ARMOUR SKIN" + CHR(10) + CHR(10) + "AND FREE IN-GAME GIFTS!" )
	SetTextColor ( 2000, 0, 0, 0, 0 )
	SetTextSize ( 2000, 1.6 )
	SetTextAlignment (2000, 1 )
	SetTextPosition (2000, 50, 110 )
	SetTextDepth (2000, 0 )
	
	premtween1 = CreateTweenSprite(1.25)
	SetTweenSpriteAlpha (premtween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteYByOffset(premtween1, 137.2, 87.2, TweenBounce())
	premtween2 = CreateTweenSprite(1.25/2)
	SetTweenSpriteAlpha (premtween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteYByOffset(premtween2, 87.2, 137.2, TweenEaseOut1())
	
	buytween1 = CreateTweenSprite(1.25)
	SetTweenSpriteAlpha (buytween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteYByOffset(buytween1, 127.5-3.5, 77.5-3.5, TweenBounce())
	buytween2 = CreateTweenSprite(1.25/2)
	SetTweenSpriteAlpha (buytween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteYByOffset(buytween2, 77.5-3.5, 127.5-3.5, TweenEaseOut1())
	
	premtext1 = CreateTweenText ( 1.25 )
	SetTweenTextAlpha (premtext1, 0, 255, TweenSmooth1())
	SetTweenTextY (premtext1, 110, 63.5, TweenBounce())
	premtext2 = CreateTweenText(1.25/2)
	SetTweenTextAlpha (premtext2, 255, 0, TweenSmooth1())
	SetTweenTextY (premtext2, 63.5, 110, TweenEaseOut1())
	
	credtexttween1 = CreateTweenText ( 1.25)
	SetTweenTextAlpha (credtexttween1, 0, 255, TweenSmooth1() )
	SetTweenTextX (credtexttween1, -150, 50, TweenBounce() )
	credtexttween2 = CreateTweenText ( 1.25/2)
	SetTweenTextAlpha (credtexttween2, 255, 0, TweenSmooth1() )
	SetTweenTextX (credtexttween2, 50, 150, TweenEaseOut1() )
	
	credtexttween11 = CreateTweenText ( 1.25)
	SetTweenTextAlpha (credtexttween11, 0, 255, TweenSmooth1() )
	SetTweenTextX (credtexttween11, 150, 50, TweenBounce() )
	credtexttween22 = CreateTweenText ( 1.25/2)
	SetTweenTextAlpha (credtexttween22, 255, 0, TweenSmooth1() )
	SetTweenTextX (credtexttween22, 50, -150, TweenEaseOut1() )
	
	starttween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (starttween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (starttween1, -120, 15.3, TweenBounce() )
	starttween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (starttween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (starttween2, 15.3, 120, TweenEaseOut1() )
	
	lbtween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (lbtween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (lbtween1, 120, 15.3, TweenBounce() )
	lbtween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (lbtween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (lbtween2, 15.3, -120, TweenEaseOut1() )

	achitween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (achitween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (achitween1, 143.3, 38.6, TweenBounce() )
	achitween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (achitween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (achitween2, 38.6, -143.3, TweenEaseOut1() )
	
	settween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (settween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (settween1, 166.6, 61.9, TweenBounce() )
	settween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (settween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (settween2, 61.9, -166.6, TweenEaseOut1() )
	
	soundtween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (soundtween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (soundtween1, -140, 26.9, TweenBounce() )
	soundtween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (soundtween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (soundtween2, 26.9, 140, TweenEaseOut1() )
	
	musictween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (musictween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (musictween1, -116.6, 50.3, TweenBounce() )
	musictween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (musictween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (musictween2, 50.3, 163.4, TweenEaseOut1() )
	
	credtween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (credtween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (credtween1, 140, 26.9, TweenBounce() )
	credtween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (credtween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (credtween2, 26.9, -140, TweenEaseOut1() )
	
	backtween1 = CreateTweenSprite (1.25)
	SetTweenSpriteAlpha (backtween1, 0, 255, TweenSmooth1() )
	SetTweenSpriteX (backtween1, 163.4, 50.3, TweenBounce() )
	backtween2 = CreateTweenSprite ( 1.25/2)
	SetTweenSpriteAlpha (backtween2, 255, 0, TweenSmooth1() )
	SetTweenSpriteX (backtween2, 50.3, -116.6, TweenEaseOut1() )
	
	fadeIn = CreateTweenSprite ( 1.25 )
	SetTweenSpriteAlpha( fadeIn, 0, 255, TweenSmooth1() )
	fadeOut = CreateTweenSprite ( 1.25/2 )
	SetTweenSpriteAlpha( fadeOut, 255, 0, TweenSmooth1() )
	
	overlayUp()
	
	movespeed = 0.35
	
	startok = 0
	othermenu = 0
	
	save()
	
	submitflag = 0
	
	Repeat
						
		if GetGameCenterLoggedIn() = 1 and submitflag = 0
				submitflag = 1
				GameCenterSubmitScore( level, "" )
		//	if emode_hs > 0
				GameCenterSubmitScore ( emode_highs, "" )
			//endif
			//endless leaderboard
		endif
			
		UpdateAllTweens (GetFrameTime())
		
		inputHandling()
		
		SetSpriteX ( 400 , (GetSpriteX ( 400 ) - movespeed*2) )
		SetSpriteX ( 500 , (GetSpriteX ( 500 ) - movespeed) )
		envSpriter()
		
		if othermenu = 0
			if GetSpriteColorAlpha ( 104 ) < 255
				startok = 0
			elseif GetSpriteColorAlpha ( 104 ) = 255
				startok = 1
			endif
		elseif othermenu = 1
			if GetSpriteColorAlpha ( 111 ) < 255
				startok = 0
			elseif GetSpriteColorAlpha ( 111 ) = 255
				startok = 1
			endif
		endif
		
		if buttonID = 2000 and GetSpriteImageID(2000) = 2000 and GetSpriteColorAlpha (104) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
			PlaySound (20)
			buttonID = 0
						
			othermenu = 1
			
			PlayTweenSprite ( starttween2, 103, 0)
			PlayTweenSprite ( lbtween2, 104, 0)
			PlayTweenSprite ( achitween2, 105, 0)
			PlayTweenSprite ( settween2, 106, 0)
			PlayTweenSprite ( premtween2, 2000, 0)
			
			PlayTweenText ( premtext1, 2000, 1)
			PlayTweenSprite ( buytween1, 2001, 1)
			PlayTweenSprite ( premtween1, 2002, 1)
			
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeOut, i, 0)
			next i
			
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeIn, i, 1)
			next i
			
		elseif buttonID = 2000 and GetSpriteColorAlpha(600) = 255  and GetSpriteImageID(2000) = 2003 and GetSpriteCurrentFrame(2000) = 1 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
		
			PlaySound (20)
			buttonID = 0
		
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeOut, i, 0)
			next i
			skin = 1
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeIn, i, 1)
			next i
			
			SetSpriteFrame(2000, 2)
			save()
		
		elseif buttonID = 2000 and GetSpriteColorAlpha(600) = 255 and GetSpriteImageID(2000) = 2003 and GetSpriteCurrentFrame(2000) = 2 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
		
			PlaySound (20)
			buttonID = 0
		
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeOut, i, 0)
			next i
			skin = 0
			for i = 600 to 900 step 100
				PlayTweenSprite ( fadeIn, i, 1)
			next i
			
			SetSpriteFrame(2000, 1)
			save()
			
		endif
		
		if buttonID = 2001  and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
			
			buttonID = 0
			
			InAppPurchaseActivate(0)
			
			purchases()
			
		endif
		
		if buttonID = 2002  and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
			
			PlaySound (20)
			buttonID = 0
						
			othermenu = 0

			PlayTweenText ( premtext2, 2000, 0)
			PlayTweenSprite ( buytween2, 2001, 0)
			PlayTweenSprite ( premtween2, 2002, 0)
			
			PlayTweenSprite ( starttween1, 103, 1)
			PlayTweenSprite ( lbtween1, 104, 1)
			PlayTweenSprite ( achitween1, 105, 1)
			PlayTweenSprite ( settween1, 106, 1)
			PlayTweenSprite ( premtween1, 2000, 1)
			
			if no_ads = 0
				for i = 600 to 900 step 100
					PlayTweenSprite ( fadeOut, i, 0)
				next i
			
				for i = 600 to 900 step 100
					PlayTweenSprite ( fadeIn, i, 1)
				next i
			endif
			
		endif
		
		if GetSpriteColorAlpha (102) = 255 and GetSpriteColorAlpha(600) = 0 and othermenu = 0
			
			for i = 600 to 900 step 100
				StopSprite(i)
			next i
			if no_ads = 0
				SetSpriteImage(600, 600)
			elseif no_ads = 1
				if skin = 0
					SetSpriteImage(600, 600)
				elseif skin = 1
					SetSpriteImage(600, 601)
				endif
			endif
			SetSpriteAnimation(600, 48, 105, 6)
			PlaySprite ( 600, 4, 1, 1, 4 )
			PlaySprite ( 700, 4 )
			PlaySprite ( 800, 4 )
			PlaySprite ( 900, 4 )
			
		elseif GetSpriteColorAlpha (102) = 255 and GetSpriteColorAlpha(600) = 0 and othermenu = 1 and no_ads = 0
			
			for i = 600 to 900 step 100
				StopSprite(i)
			next i
			SetSpriteImage(600, 601)
			SetSpriteAnimation(600, 48, 105, 6)
			PlaySprite ( 600, 4, 1, 1, 4 )
			PlaySprite ( 700, 4 )
			PlaySprite ( 800, 4 )
			PlaySprite ( 900, 4 )
			
		endif
	
		if buttonID = 103 and GetSpriteColorAlpha(600) = 255 and GetSpriteColorAlpha ( 102 ) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0 and startok = 1
			buttonID = 0
			PlaySound ( 13 )
			for i = 1 to 15
				StopMusicOGG(i)
			next i
			for i = 600 to 900 step 100
				StopSprite(i)
			next i
			overlayDown()
			flag = 1
		elseif buttonID = 103 and GetSpriteColorAlpha ( 102 ) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0 and startok = 0
			buttonID = 0
		endif
		
		if buttonID = 104 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0 and GetSpriteColorAlpha(111) = 0
			
			PlaySound (20)
			buttonID = 0
			
			if othermenu = 0
				othermenu = 1
			endif
			
			PlayTweenSprite ( lbtween2, 104, 0)
			PlayTweenSprite ( achitween2, 105, 0)
			PlayTweenSprite ( settween2, 106, 0)
			PlayTweenSprite ( premtween2, 2000, 0)
			
			PlayTweenSprite ( lbtween1, 111, 1)
			PlayTweenSprite ( achitween1, 112, 1)
			PlayTweenSprite ( settween1, 113, 1)
			
		endif
		
		if buttonID = 111 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (lbtween1, 111) = 0
			
			if lastbutton = 0
				PlaySound (20)
			elseif lastbutton = 111
				lastbutton = 0
			endif
			
			buttonID = 0
			
			if GetGameCenterLoggedIn() = 0
				if GetGameCenterExists() = 1
					GameCenterLogin()
					lastbutton = 111
				endif
			endif
			
			if GetGameCenterLoggedIn() = 1 
				GameCenterShowLeaderBoard( "" )
			endif
			
		endif
		
		if buttonID = 112 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (lbtween1, 111) = 0
			
			if lastbutton = 0
				PlaySound (20)
			elseif lastbutton = 112
				lastbutton = 0
			endif
			
			buttonID = 0
			
			if GetGameCenterLoggedIn() = 0
				if GetGameCenterExists() = 1
					GameCenterLogin()
					lastbutton = 112
				endif
			endif
			
			if GetGameCenterLoggedIn() = 1 
				GameCenterShowLeaderBoard( "" )
			endif
			
		endif
		
		if buttonID = 113 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (lbtween1, 111) = 0
			
			PlaySound (20)
			buttonID = 0
			
			othermenu = 0
			
			PlayTweenSprite ( lbtween2, 111, 0)
			PlayTweenSprite ( achitween2, 112, 0)
			PlayTweenSprite ( settween2, 113, 0)
			
			PlayTweenSprite ( premtween1, 2000, 1)
			PlayTweenSprite ( lbtween1, 104, 1)
			PlayTweenSprite ( achitween1, 105, 1)
			PlayTweenSprite ( settween1, 106, 1)
			
		endif
		
		if buttonID = 105 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
			
			if lastbutton = 0
				PlaySound (20)
			elseif lastbutton = 105
				lastbutton = 0
			endif
			
			buttonID = 0
			
			if GetGameCenterLoggedIn() = 0
				if GetGameCenterExists() = 1
					GameCenterLogin()
					lastbutton = 105
				endif
			endif
			
			if GetGameCenterLoggedIn() = 1 
				GameCenterAchievementsShow()
			endif
			
		endif
		
		if buttonID = 106 and GetSpriteColorAlpha (102) = 255 and GetTweenSpritePlaying (starttween1, 103) = 0
			
			PlaySound (20)
			buttonID = 0
			
			othermenu = 1
			
			PlayTweenSprite ( starttween2, 103, 0)
			PlayTweenSprite ( lbtween2, 104, 0)
			PlayTweenSprite ( achitween2, 105, 0)
			PlayTweenSprite ( settween2, 106, 0)
			PlayTweenSprite ( premtween2, 2000, 0)
			
			PlayTweenSprite ( soundtween1, 107, 1)
			PlayTweenSprite ( musictween1, 108, 1)
			PlayTweenSprite ( credtween1, 109, 1)
			PlayTweenSprite ( backtween1, 110, 1)
			
		endif
		
		if buttonID = 107 and GetTweenSpritePlaying ( soundtween1, 107) = 0 and GetSpriteCurrentFrame ( 107 ) = 1
			
			PlaySound (20)
			soundoff = 1
			buttonID = 0
			
			SetSpriteFrame ( 107, 2)
			SetSoundSystemVolume(0)
			save()
			
		elseif buttonID = 107 and GetTweenSpritePlaying ( soundtween1, 107) = 0 and GetSpriteCurrentFrame ( 107 ) = 2
	
			PlaySound (20)
			soundoff = 0
			buttonID = 0
			
			SetSpriteFrame ( 107, 1)
			SetSoundSystemVolume(15)
			save()
	
		endif
		
		if buttonID = 108 and GetTweenSpritePlaying ( soundtween1, 107) = 0 and GetSpriteCurrentFrame ( 108 ) = 1
			
			PlaySound (20)
			musicoff = 1
			buttonID = 0
			
			SetSpriteFrame ( 108, 2)
			SetMusicSystemVolumeOGG(0)
			save()
			
		elseif buttonID = 108 and GetTweenSpritePlaying ( soundtween1, 107) = 0 and GetSpriteCurrentFrame ( 108 ) = 2
			
			PlaySound (20)
			musicoff = 0
			buttonID = 0
			
			SetSpriteFrame ( 108, 1)
			PlayMusicOGG ( 1, 1 )
			SetMusicSystemVolumeOGG(20)
			save()
		
		endif
		
		if buttonID = 109
			
			PlaySound (20)
			buttonID = 0
			
			PlayTweenSprite ( soundtween2, 107, 0 )
			PlayTweenSprite ( musictween2, 108, 0 )
			PlayTweenSprite ( credtween2, 109, 0 )
			PlayTweenSprite ( backtween2, 110, 0 )
			
			PlayTweenText ( credtexttween1, 9996, 0.5 )
			PlayTweenText ( credtexttween1, 9995, 0.5 )
			PlayTweenText ( credtexttween11, 9998, 0.5 )
			PlayTweenText ( credtexttween11, 9999, 0.5 )
			
			credsup = 1
			ResetTimer()
			
		endif
		
		if buttonID = 110
			
			PlaySound (20)
			buttonID = 0
			
			othermenu = 0
			
			PlayTweenSprite ( soundtween2, 107, 0 )
			PlayTweenSprite ( musictween2, 108, 0 )
			PlayTweenSprite ( credtween2, 109, 0 )
			PlayTweenSprite ( backtween2, 110, 0 )
			
			PlayTweenSprite ( starttween1, 103, 1)
			PlayTweenSprite ( lbtween1, 104, 1)
			PlayTweenSprite ( achitween1, 105, 1)
			PlayTweenSprite ( settween1, 106, 1)
			PlayTweenSprite ( premtween1, 2000, 1)
		
		endif
		
		if Timer() > 5 and credsup = 1
			PlayTweenSprite ( soundtween1, 107, 1)
			PlayTweenSprite ( musictween1, 108, 1)
			PlayTweenSprite ( credtween1, 109, 1)
			PlayTweenSprite ( backtween1, 110, 1)
			
			PlayTweenText ( credtexttween2, 9996, 0 )
			PlayTweenText ( credtexttween2, 9995, 0 )
			PlayTweenText ( credtexttween22, 9998, 0 )
			PlayTweenText ( credtexttween22, 9999, 0 )
			credsup = 0
			buttonID = 0
		endif
		
		if GetRawKeyPressed(27) = 1
			endFunc()
		endif
		
		if GetTweenSpritePlaying ( wuwtween, 101 ) = 0 and wtstage = 0
			wuwtween = CreateTweenSprite ( 3 )
			SetTweenSpriteYByOffset ( wuwtween, 20.5, 23, TweenSmooth1())
			PlayTweenSprite ( wuwtween, 101, 0.1 )
			wtstage = 1
		elseif GetTweenSpritePlaying ( wuwtween, 101 ) = 0 and wtstage = 1
			wuwtween = CreateTweenSprite ( 3 )
			SetTweenSpriteYByOffset ( wuwtween, 23, 20.5, TweenSmooth1())
			PlayTweenSprite ( wuwtween, 101, 0.1 )
			wtstage = 0
		endif
		
		if lastbutton = 111 and flag = 0
			if GetGameCenterLoggedIn() = 1
				buttonID = 111
			endif
		elseif lastbutton = 112 and flag = 0
			if GetGameCenterLoggedIn() = 1
				buttonID = 112
			endif
		elseif lastbutton = 105 and flag = 0
			if GetGameCenterLoggedIn() = 1
				buttonID = 105
			endif
		endif
		
		Sync()
		
	Until flag = 1
endfunction

function purchases()

	While GetInAppPurchaseState() = 0
		
		Sync()
	endwhile
	
	if GetInAppPurchaseAvailable( 0 ) = 1
		if no_ads < 1
			no_ads = 1
			skin = 1
			othermenu = 0
			SetSpriteImage(2000, 2003)
			SetSpriteAnimation(2000, 216, 51, 2)
			SetSpriteFrame(2000, 2)
			DeleteAdvert()
			SetAdvertVisible(0)
			
			PlayTweenText ( premtext2, 2000, 0)
			PlayTweenSprite ( buytween2, 2001, 0)
			PlayTweenSprite ( premtween2, 2002, 0)
			
			PlayTweenSprite ( starttween1, 103, 1)
			PlayTweenSprite ( lbtween1, 104, 1)
			PlayTweenSprite ( achitween1, 105, 1)
			PlayTweenSprite ( settween1, 106, 1)
			PlayTweenSprite ( premtween1, 2000, 1)
			
			save()
		endif
	elseif GetInAppPurchaseAvailable( 0 ) = 0
			
		Sync()
	endif
	
endfunction

function stageintroScreen()

	RequestAdvertRefresh()

	flag = 0
	
	//text
	CreateText (100, "")
	SetTextColor ( 100, 255, 255, 255, 0 )
	SetTextSize ( 100, 1.25 )
	SetTextAlignment (100, 1 )
	SetTextPosition (100, 48, 48 )
	SetTextDepth (100, 0 )
	
	CreateText (101, "")
	SetTextColor ( 101, 255, 255, 255, 0 )
	SetTextSize ( 101, 2 )
	SetTextAlignment (101, 1 )
	SetTextPosition (101, 53, 50 )
	SetTextDepth (101, 0 )
	
	CreateSprite (9090, 9090)
	SetSpriteSize (9090, 12.2, 9.4)
	SetSpriteColorAlpha (9090, 0)
	SetSpriteOffset (9090, GetSpriteWidth(9090)/2, 0)
	SetSpritePositionByOffset (9090, 50, 56.5)
	SetSpriteAnimation (9090, 44, 60, 2)
	SetSpriteDepth (9090, 0 )
	PlaySprite (9090, 2, 1)
	
	if emode_active = 0
		select stage
		case 1
			SetTextString ( 100, "...AN ADVENTURE BEGINS" )
			SetTextString (101, "STAGE 1: GRASSY PLAINS")
		endcase
		case 2
			SetTextString ( 100, "...OUR HERO CONTINUES" )
			SetTextString (101, "STAGE 2: MURKY FOREST")
		endcase
		case 3
			SetTextString ( 100, "...INTO UNKNOWN DEPTHS" )
			SetTextString (101, "STAGE 3: DARK CAVE")
		endcase
		case 4
			SetTextString ( 100, "...A DESOLATE JOURNEY" )
			SetTextString (101, "STAGE 4: BARREN WASTELANDS")
		endcase
		case 5
			SetTextString ( 100, "...THROUGH PLACES ONCE POWERFUL" )
			SetTextString (101, "STAGE 5: CRUMBLED RUINS")
		endcase
		case 6
			SetTextString ( 100, "...A DARK MAGIC STIRS" )
			SetTextString (101, "STAGE 6: MYSTIC CATHEDRAL")
		endcase
		case 7
			SetTextString ( 100, "...A BRIEF RESPITE" )
			SetTextString (101, "STAGE 7: SNOWY PLAINS")
		endcase
		case 8
			SetTextString ( 100, "...IN HIGH SPIRITS" )
			SetTextString (101, "STAGE 8: TALL MOUNTAINS")
		endcase
		case 9
			SetTextString ( 100, "...EVIL SPREADS" )
			SetTextString (101, "STAGE 9: ICE CASTLE")
		endcase
		case 10
			SetTextString ( 100, "...TO FINISH THE QUEST" )
			SetTextString (101, "STAGE 10: VICTORY ROAD")
		endcase
		case 11
			SetTextString ( 100, "...BE BRAVE AND COURAGEOUS" )
			SetTextString (101, "STAGE 11: INFERNAL DUNGEON")
		endcase
		case 12
			SetTextString ( 100, "...ONWARD, THE FINAL BATTLE" )
			SetTextString (101, "STAGE 12: DARK LAIR")
		endcase
		endselect
	elseif emode_active = 1
		SetTextString ( 100, "...CHAOS RULES THESE LANDS" )
		SetTextString ( 101, "FLOOR " + str(emode_floor) + ": CHAOS DIMENSION" )
	endif
	
	desctween = CreateTweenText ( 8 )
	SetTweenTextX (desctween, 48, 70, TweenEaseIn1())
	stagetween = CreateTweenText ( 8 )
	SetTweenTextX (stagetween, 53, 27, TweenEaseIn1())
	
	PlayTweenText (desctween, 100, 0)
	PlayTweenText (stagetween, 101, 0)
	
	PlaySound (22)
	overlayUp()
	ResetTimer()
	count# = Timer()
	
	Repeat
	
		if (Timer() - count# > 1.5)
			overlayDown()
			flag = 1
		endif
		if GetRawKeyPressed(27) = 1
			endFunc()
		endif
		
		UpdateAllTweens(GetFrameTime())
		
		Sync()
	Until flag = 1
	
	giftrolla = Random(3,5)
	
	giftcount = giftcount + giftrolla
	
endfunction

function mainScreen()
	
	uiSprites()
	statHandler()
	setVars()
	winderhandler()
	wssprite()
	
	genericfade = CreateTweenSprite ( 0.35 )
	SetTweenSpriteAlpha (genericfade, 255, 0, TweenEaseOut1() )
	genericfadet = CreateTweenText ( 1 )
	SetTweenTextAlpha (genericfadet, 255, 0, TweenEaseOut1() )
	
	//charactersprite
	CreateSprite (600, 600)
	if skin = 0
		SetSpriteImage (600, 600)
	elseif skin = 1
		SetSpriteImage (600, 601)
	endif
	SetSpriteColorAlpha (600, 0)
	SetSpriteSize (600, 13.3, 16.4)
	SetSpritePosition (600, 15.8, 16.45)
	SetSpriteAnimation(600, 48, 105, 6)
	FixSpriteToScreen (600, 1)
	SetSpriteDepth (600, 7)
	PlaySprite ( 600, 4, 1, 1, 4 )
	StopSprite ( 600 )
	
	//weaponsprite
	CreateSprite (700, wsprite)
	SetSpriteColorAlpha (700, 0)
	SetSpriteSize (700, 20.8, 21.9)
	SetSpriteOffset ( 700, (GetSpriteWidth(700)/2), (GetSpriteHeight(700) - (GetSpriteHeight(700)/10)) )
	SetSpritePositionByOffset (700, 25.8, 26.3+0.5)
	SetSpriteAngle ( 700, weaponAngle )
	SetSpriteAnimation(700, 75, 140, 2)
	FixSpriteToScreen (700, 1)
	SetSpriteDepth (700, 8)
	PlaySprite ( 700, 4 )
	StopSprite ( 700 )
	
	//trailsprite
	CreateSprite (799, 799)
	SetSpriteSize (799, 20.8, 21.9)
	SetSpriteOffset ( 799, (GetSpriteWidth(799)/2), (GetSpriteHeight(799) - (GetSpriteHeight(799)/10)) )
	SetSpritePositionByOffset (799, 25.8, 26.3+0.5)
	SetSpriteAngle ( 799, weaponAngle )
	SetSpriteAnimation(799, 75, 140, 8)
	FixSpriteToScreen (799, 1)
	SetSpriteDepth (799, 9)
	SetSpriteColorAlpha ( 799, 0 )
	SetSpriteVisible ( 799, 0 )

	traildef()
	
	//shieldsprite
	CreateSprite (800, ssprite)
	SetSpriteColorAlpha (800, 0)
	SetSpriteSize (800, 26.7, 15)
	//SetSpriteOffset ( 800, (GetSpriteWidth(800)/2), (GetSpriteHeight(800)/2) )
	//SetSpritePositionByOffset (800, 23.7, 25.6 + 0.5)
	SetSpritePosition (800, 9.115, 18.32)
	SetSpriteAnimation(800, 96, 96, 2)
	FixSpriteToScreen (800, 1)
	SetSpriteDepth (800, 6)
	PlaySprite ( 800, 4 )
	StopSprite ( 800 )
	
	//windersprite
	CreateSprite (900, winderval)
	SetSpriteColorAlpha (900, 0)
	SetSpriteSize (900, 7.5, 6.1)
	SetSpritePosition (900, 10.8, 21.615)
	SetSpriteAnimation(900, 27, 39, 4)
	FixSpriteToScreen (900, 1)
	SetSpriteDepth (900, 8)
	PlaySprite ( 900, 4 )
	StopSprite ( 900 )
	
	envsprites()
	mainuiText()
	textUpdates()
	barSizer()
	music()
	overlayUp()
	
	//DEBUG TEXT
	//CreateText (100, "" )
	SetTextColor ( 100, 255, 255, 255, 255 )
	SetTextSize ( 100, 2 )
	SetTextAlignment (100, 1 )
	SetTextPosition (100, 50, 30 )
	SetTextDepth (100, 0 )
	//CreateText (101, "" )
	SetTextColor ( 101, 255, 255, 255, 255 )
	SetTextSize ( 101, 2 )
	SetTextAlignment (101, 1 )
	SetTextPosition (101, 50, 35 )
	SetTextDepth (101, 0 )
	//CreateText (102, "" )
	SetTextColor ( 102, 255, 255, 255, 255 )
	SetTextSize ( 102, 2 )
	SetTextAlignment (102, 1 )
	SetTextPosition (102, 50, 40 )
	SetTextDepth (102, 0 )
	//CreateText (103, "" )
	SetTextColor ( 103, 255, 255, 255, 255 )
	SetTextSize ( 103, 2 )
	SetTextAlignment (103, 1 )
	SetTextPosition (103, 50, 45 )
	SetTextDepth (103, 0 )
	//CreateText (104, "" )
	SetTextColor ( 104, 255, 255, 255, 255 )
	SetTextSize ( 104, 2 )
	SetTextAlignment (104, 1 )
	SetTextPosition (104, 50, 50 )
	SetTextDepth (104, 0 )
	
	Repeat
		
		//SetTextString ( 100, str(GetSpriteColorAlpha(250)))
		//SetTextString ( 101, str(GetSpriteExists(250)))
		//SetTextString ( 102, str(max_hp))
		//SetTextString ( 103, str(discur_hp))
		//SetTextString ( 104, str(ma03))
		
		if death = 0
			inputHandling()
			mover()
			envSpriter()
			barSizer()
			textUpdates()
			stanceHandler()
			enemySpawner()
			enemyHandler()
			
			if cur_hp < 1
				enemybardown()
				fightBoolean = 0
				cur_energy = 0
				death = 1
				SetSpriteSize ( 208, 0, 0)
				cur_hp = 0
				discur_hp = cur_hp
				SetTextString (1, str(discur_hp) + "/" + str(dismax_hp) )
				
				//flag = 1
			endif
			
			color()
		endif
		
		dmgCleanup()
		playertexttweens()
		
		if fightBoolean = 1
			SetSpriteVisible ( 799, 1 )
			SetSpriteFrame (204, 2)
			SetTextVisible (21, 0)
		elseif fightBoolean = 0
			SetSpriteVisible ( 799, 0)
		endif
		
		if cur_energy <= 0
			SetSpriteVisible ( 799, 0)
		endif
			
		if death = 1
			fightboolean = 0
			deathseq()
		endif
		
		if cur_energy =< 0 and energyalert = 0 and death = 0
			PlaySprite(205, 3, 1, 1, 2)
			energyalert = 1
		elseif cur_energy > 0 and energyalert = 1 and death = 0
			SetSpriteFrame(205, 1)
			StopSprite(205)
			energyalert = 0
		endif
		
		if fightBoolean = 1 and cur_energy > 0 and death = 0
			weaponSwing()
			//dmgCleanup()
			cur_energy = cur_energy - 0.02
		elseif fightBoolean = 1 and cur_energy <= 0 and death = 0
			weaponCleanup()
		//	dmgCleanup()
		endif
		
	/*	if fightBoolean = 0 and GetTextExists (18) = 1
			dmgCleanup()
		elseif fightboolean = 0 and GetTextExists (18) = 0
			hitcount = 0
			curdmgnum = 1000
			lastmostdmgnum = 0
			DeleteTween (dmgtween)
		endif*/
		
		if fightBoolean = 0 and weaponAngle > 25
			weaponCleanup()
		endif
		
		if buttonID = 201 and activestance = 0
			SetSpriteFrame (201, 1)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 0
			buttonID = 0
		elseif buttonID = 201 and activestance = 1
			PlaySound (2)
			SetSpriteFrame (201, 1)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 0
			buttonID = 0
		elseif buttonID = 201 and activestance = 2
			PlaySound (2)
			SetSpriteFrame (201, 1)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 0
			buttonID = 0
		endif
		
		if buttonID = 202 and activestance = 0
			PlaySound (3)
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 1)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 1
			buttonID = 0
		elseif buttonID = 202 and activestance = 1
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 1)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 1
			buttonID = 0
		elseif buttonID = 202 and activestance = 2
			PlaySound (3)
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 1)
			SetSpriteFrame (203, 2)
			drainspeed = 0.02
			activestance = 1
			buttonID = 0
		endif
		
		if buttonID = 203 and activestance = 0
			PlaySound (4)
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 1)
			drainspeed = 0.02 + stance3drain
			activestance = 2
			buttonID = 0
		elseif buttonID = 203 and activestance = 1
			PlaySound (4)
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 1)
			drainspeed = 0.02 + stance3drain
			activestance = 2
			buttonID = 0
		elseif buttonID = 203 and activestance = 2
			SetSpriteFrame (201, 2)
			SetSpriteFrame (202, 2)
			SetSpriteFrame (203, 1)
			drainspeed = 0.02 + stance3drain
			activestance = 2
			buttonID = 0
		endif
		
		if buttonID = 204 and fightBoolean = 0 and levelup = 0 and lootexist = 0 and GetSpriteCurrentFrame(204) = 1
			PlaySound(20)
			SetSpriteFrame ( 204, 3 )
			SetTextVisible ( 21, 1 )
			getdattime = Timer()
			buttonID = 0
		endif
		
		if buttonID = 204 and fightBoolean = 0 and levelup = 0 and lootexist = 0 and GetSpriteCurrentFrame(204) = 3
			PlaySound(5)
			flag = 1
			buttonID = 0
			SetSpriteFrame ( 204, 1 )
			SetTextVisible ( 21, 0 )
			if stage = 12
				homecheck = 1
			endif
		endif
		
		if GetSpriteCurrentFrame ( 204 ) = 3 and Timer() - getdattime >= 2
			SetTextVisible ( 21, 0 )
			SetSpriteFrame ( 204, 1 )
		endif
		
		if buttonID = 204 and fightBoolean = 1
			buttonID = 0
		endif
		
		if buttonID = 204 and levelup = 1
			buttonID = 0
		endif
		
		if buttonID = 205 and levelup = 0 and levelcomplete = 0
			windUp()
		endif
		
		if buttonID = 206 and levelup = 0 and levelcomplete = 0
			windUp()
		endif
			
		if buttonID = 207 and levelup = 0 and levelcomplete = 0
			windUp()
		endif
		
		if buttonID = 227
			
			levelup2()
			
			if levelup = 1
				PlaySound (20)
				attack = attack + atkup
				defence = defence + defup
				agility = agility + agiup
				luck = luck + lukup
				SetTextString (7, "LEVEL:" + str(level) )	
				SetTextString (9, "ATK:" + str(attack + vattack) )
				SetTextString (10, "AGI:" + str(agility + vagility, 0) )
				SetTextString (11, "DEF:" + str(defence + vdefence) )
				SetTextString (12, "LUK:" + str(luck + vluck, 0) )
				for i = 13 to 16
					SetTextColor ( i, 255, 255, 255, 255 )
					SetTextString ( i, "0")
				next i
				statHandler()
				atkup = 0
				defup = 0
				agiup = 0
				lukup = 0
				levelup = 0
				statpointhold = statpoints
				save()
			endif
			
			if GetSpriteY (222) => 64.1
				for i = 600 to 900 step 100
					ResumeSprite ( i )
				next i
				buttonID = 0
			endif
					
		endif
		
		if buttonID = 228 and levelup = 1
			PlaySound (20)
			statpoints = statpointhold
			atkup = 0
			defup = 0
			agiup = 0
			lukup = 0
			
			for i = 13 to 16
				SetTextColor ( i, 255, 255, 255, 255 )
				SetTextString ( i, "0")
			next i
			
			SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
			
			buttonID = 0
		endif
		
		if buttonID = 223 and statpoints > 0
			PlaySound (20)
			if statpoints > 0
				statpoints = statpoints - 1
				atkup = atkup + 1
				SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
			endif
			
			if atkup > 0
				SetTextColor ( 13, 0, 255, 0, 255 )
				SetTextString ( 13, "+" + str(atkup))
			endif
			
			buttonID = 0
		endif
		
		if buttonID = 224 and statpoints > 0
			PlaySound (20)
			if statpoints > 0
				statpoints = statpoints - 1
				defup = defup + 1
				SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
			endif
			
			if defup > 0
				SetTextColor ( 14, 0, 255, 0, 255 )
				SetTextString ( 14, "+" + str(defup))
			endif
			
			buttonID = 0
		endif
		
		if buttonID = 225 and statpoints > 0
			PlaySound (20)
			if statpoints > 0
				statpoints = statpoints - 1
				agiup = agiup + 1
				SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
			endif
			
			if agiup > 0
				SetTextColor ( 15, 0, 255, 0, 255 )
				SetTextString ( 15, "+" + str(agiup,0))
			endif
			
			buttonID = 0
		endif
		
		if buttonID = 226 and statpoints > 0
			PlaySound (20)
			if statpoints > 0
				statpoints = statpoints - 1
				lukup = lukup + 1
				SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
			endif
			
			if lukup > 0
				SetTextColor ( 16, 0, 255, 0, 255 )
				SetTextString ( 16, "+" + str(lukup))
			endif
			
			buttonID = 0
		endif
		
		if GetRawKeyPressed(27) = 1
			endFunc()
		endif
		
		if statpoints > 0
			for i = 223 to 226
				ResumeSprite(i)
			next i
		elseif statpoints = 0
			for i = 223 to 226
				SetSpriteFrame (i, 1)
				StopSprite(i)
			next i
		endif
		
		//save()

		Sync()
	Until flag = 1
	save()
	for i = 1 to 15
		StopMusicOGG(i)
	next i
	enemyCleanup()
	overlayDown()
endfunction

function winderhandler()
	
	select winder
		case 1
			max_energy = 100
			winderval = 900
		endcase
		case 2
			max_energy = 200
			winderval = 901
		endcase
		case 3
			max_energy = 300
			winderval = 902
		endcase
		case 4
			max_energy = 400
			winderval = 903
		endcase
		case 5
			max_energy = 500
			winderval = 904
		endcase
		case 6
			max_energy = 600
			winderval = 905
		endcase
		case 7
			max_energy = 700
			winderval = 906
		endcase
		case 8
			max_energy = 800
			winderval = 907
		endcase
	endselect
endfunction

function wssprite()
	
	for i = 0 to max_inv_space
		if inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 0
			wsprite = inventoryArray[i].spriteid
		elseif inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 1
			ssprite = inventoryArray[i].spriteid
		endif
	next i
	
endfunction

function homeScreen()
	
	if GetGameCenterLoggedIn() = 1
		GameCenterSubmitScore( level, "" )
		GameCenterSubmitScore ( emode_highs, "" )
	endif
	
	flag = 0
	newrun = 0
	
	if emode_active = 1
		//orb_is_active = 0
		emode_active = 0
		emode_floor = 1
	endif

	if musicoff = 0
		if mapcont = 0
			PlayMusicOGG ( 2, 1 )
		endif
		if gamecomplete = 1
			gamecomplete = 0
			StopMusicOGG(2)
			PlayMusicOGG ( 15, 1)
		endif
		SetMusicSystemVolumeOGG(20)
	endif
	
	weaponAngle = 25
	
	winderhandler()
	wssprite()

	//mainUI
	CreateSprite (300, 300)
	SetSpriteColorAlpha (300, 0)
	SetSpriteSize (300, 100, -1)
	SetSpritePosition (300, 0, 0)
	FixSpriteToScreen (300, 1)
	SetSpriteDepth (300, 3)
	
	//envspriter
	CreateSprite (400, 301)
	SetSpriteColorAlpha (400 , 0)
	SetSpriteSize (400, 100, 48.3)
	SetSpritePosition (400, 0, 0)
	SetSpriteDepth (400, 11)
	SetSpriteShapeBox (400, 0, 0, 0, 0, 0)
	
	//charactersprite
	CreateSprite (600, 600)
	if skin = 0
		SetSpriteImage (600, 600)
	elseif skin = 1
		SetSpriteImage (600, 601)
	endif
	SetSpriteColorAlpha (600, 0)
	SetSpriteSize (600, 13.3, 16.4)
	SetSpritePosition (600, 28.3, 16.45)
	SetSpriteAnimation(600, 48, 105, 6)
	FixSpriteToScreen (600, 1)
	SetSpriteDepth (600, 2)
	PlaySprite ( 600, 4, 1, 1, 4 )
	StopSprite ( 600 )
	
	//weaponsprite
	CreateSprite (700, wsprite)
	SetSpriteColorAlpha (700, 0)
	SetSpriteSize (700, 20.8, 21.9)
	SetSpriteOffset ( 700, (GetSpriteWidth(700)/2), (GetSpriteHeight(700) - (GetSpriteHeight(700)/10)) )
	SetSpritePositionByOffset (700, 38.3, 25.3+0.5)
	SetSpriteAngle ( 700, weaponAngle )
	SetSpriteAnimation(700, 75, 140, 2)
	FixSpriteToScreen (700, 1)
	SetSpriteDepth (700, 3)
	PlaySprite ( 700, 4 )
	StopSprite ( 700 )
	
	//shieldsprite
	CreateSprite (800, ssprite)
	SetSpriteColorAlpha (800, 0)
	SetSpriteSize (800, 26.7, 15)
	//SetSpriteOffset ( 800, (GetSpriteWidth(800)/2), (GetSpriteHeight(800)/2) )
	//SetSpritePositionByOffset (800, 23.7 + 13.1, 25.6 - 0.4)
	SetSpritePosition (800, 21.615, 18.32)
	SetSpriteAnimation(800, 96, 96, 2)
	FixSpriteToScreen (800, 1)
	SetSpriteDepth (800, 1)
	PlaySprite ( 800, 4 )
	StopSprite ( 800 )
	
	//windersprite
	CreateSprite (900, winderval)
	SetSpriteColorAlpha (900, 0)
	SetSpriteSize (900, 7.5, 6.1)
	SetSpritePosition (900, 23.3, 21.62)
	SetSpriteAnimation(900, 27, 39, 4)
	FixSpriteToScreen (900, 1)
	SetSpriteDepth (900, 3)
	PlaySprite ( 900, 4 )
	StopSprite ( 900 )
	
	for i = 600 to 900 step 100
		SetSpriteShapeBox (i, 0, 0, 0, 0, 0)
	next i
	
	//craftsman
	CreateSprite (310, 310)
	SetSpriteColorAlpha (310, 0)
	SetSpriteSize (310, 14.2, 15)
	SetSpritePosition (310, 69.2, 17.85)
	SetSpriteAnimation ( 310, 51, 96, 2 )
	FixSpriteToScreen ( 310, 1)
	SetSpriteDepth (310, 3)
	
	for i = 0 to max_inv_space
		if inventoryArray[i].itemtype = 0 and inventoryArray[i].equipval = 1
			cur_item_sel = i
		endif
	next i
	
	shopui()
	
	exittween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (exittween1, 100, 80.8, TweenSmooth1() )
	/*exittween2 = CreateTweenSprite (1.25/2)
	SetTweenSpriteX (settween2, 80.8, 100, TweenSmooth1() )*/
	
	sidemenutween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (sidemenutween1, -20, 0.8, TweenSmooth1() )
	sidemenutween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (sidemenutween2, 0.8, -20, TweenSmooth1() )
	
	csheettween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (csheettween1, -75, 0.8, TweenSmooth1() )
	csheettween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (csheettween2, 0.8, -75, TweenSmooth1() )
	
	csheettextl1 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextl1, -68.2, 6.8, TweenSmooth1() )
	csheettextl2 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextl2, 6.8, -68.2, TweenSmooth1() )
	
	csheettextl21 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextl21, -52.5, 22.5, TweenSmooth1() )
	csheettextl22 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextl22, 22.5, -52.5, TweenSmooth1() )
	
	csheettextr1 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextr1, -35.2, 39.8, TweenSmooth1() )
	csheettextr2 = CreateTweenText (1.25/3)
	SetTweenTextX (csheettextr2, 39.8, -35.2, TweenSmooth1() )
	
	//orb screen
	cotween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (cotween1, -58.4, 0.8, TweenSmooth1() )
	cotween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (cotween2, 0.8, -58.4, TweenSmooth1() )
	
	//useorb tween
	usecotween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (usecotween1, -23.4, 35.8, TweenSmooth1() )
	usecotween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (usecotween2, 35.8, -23.4, TweenSmooth1() )
	
	//no orb tween
	nocotween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (nocotween1, -34.8, 20.8, TweenSmooth1() )
	nocotween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (nocotween2, 20.8, -34.8, TweenSmooth1() )
	
	//orb text tween	
	cotextl1 = CreateTweenText (1.25/3)
	SetTweenTextX (cotextl1, -23.4, 35.8, TweenSmooth1() )
	cotextl2 = CreateTweenText (1.25/3)
	SetTweenTextX (cotextl2, 35.8, -23.4, TweenSmooth1() )
	
	//actual buttons
	cobtntween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (cobtntween1, -55.9, 3.3, TweenSmooth1() )
	cobtntween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteX (cobtntween2, 3.3, -55.9, TweenSmooth1() )
	
	//gift window tween
	gifttween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteY (gifttween1, -29.5, 0.5, TweenSmooth1() )
	gifttween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteY (gifttween2, 0.5, -29.5, TweenSmooth1() )
	
	//gift button tween
	giftbtntween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteY (giftbtntween1, -16.4, 13.6, TweenSmooth1() )
	giftbtntween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteY (giftbtntween2, 13.6, -16.4, TweenSmooth1() )
	
	/*
	//gift sprite
	giftboxtween1 = CreateTweenSprite (1.25/3)
	SetTweenSpriteAlpha (giftboxtween1, 255, 0, TweenSmooth1() )
	giftboxtween2 = CreateTweenSprite (1.25/3)
	SetTweenSpriteY (giftboxtween2, 0, 255, TweenSmooth1() )
	*/
	
	/*cotextr1 = CreateTweenText (1.25/3)
	SetTweenTextX (cotextr1, -25.6, 29.4, TweenSmooth1() )
	cotextr2 = CreateTweenText (1.25/3)
	SetTweenTextX (cotextr2, 29.4, -25.6, TweenSmooth1() )*/
	
	PlaySprite ( 309, 4 )
	PlaySprite ( 310, 2, 1 )
	StopSprite ( 310 )
	shoptext()
	inventoryUpdates()
	overlayUp()
	
	exittweenup = 0
	sidemenutweenup = 0
	csheetup = 0
	coup = 0
	if justin > 0
		justin = 0
	endif

	Repeat
		
		if exittweenup = 0
			PlayTweenSprite(exittween1, 313, 1)
			exittweenup = 1
		endif
		
		if sidemenutweenup = 0 and csheetup = 0 and coup = 0
			sidemenutweenup = 1
			PlayTweenSprite(sidemenutween1, 314, 1)
			if emode_enable = 1 //orb menu
				PlayTweenSprite(sidemenutween1, 315, 1)
			endif
		endif
		
		inventoryUpdates()
		inputHandling()
		
		if talking = 0
			ResumeSprite ( 310 )
		elseif talking = 1
			SetSpriteFrame ( 310, 1 )
			StopSprite ( 310 )
		endif
		
		//sell
		if buttonID = 302 and GetSpriteCurrentFrame(302) = 1
			PlaySound (20)
			SetSpriteFrame(302, 2)
			SetTextColor (10, 255, 255, 255, 255 )
			
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
			
			SetSpriteFrame(304, 1)
			SetTextColor (12, 255, 255, 255, 0 )
			
			ResetTimer()
			buttonID = 0
		elseif buttonID = 302 and GetSpriteCurrentFrame(302) = 2 and inventoryArray[cur_item_sel].equipval = 0
			PlaySound ( 17 )
			SetSpriteFrame(302, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			gold = gold + (inventoryArray[cur_item_sel].sellval * (inventoryArray[cur_item_sel].upgradelvl + 1))
			if gold > 99999999
				gold = 99999999
			endif
			inventoryArray.remove(cur_item_sel)
			if cur_item_sel > 0
				cur_item_sel = cur_item_sel - 1
			endif
			max_inv_space = max_inv_space - 1
			inventoryArray.length = max_inv_space
			buttonID = 0
		elseif buttonID = 302 and GetSpriteCurrentFrame(302) = 2 and inventoryArray[cur_item_sel].equipval = 1
			PlaySound (20)
			SetSpriteFrame(302, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			buttonID = 0
		endif
		
		//sell text
		if GetSpriteCurrentFrame(302) = 2 and inventoryArray[cur_item_sel].equipval = 0
			SetTextString (10, "SELL" + chr(10) + chr(10) + "FOR" + chr(10) + chr(10) + str(inventoryArray[cur_item_sel].sellval * (inventoryArray[cur_item_sel].upgradelvl + 1)) + "G?" + chr(10) + chr(10) + chr(10) + "OK!")
		elseif GetSpriteCurrentFrame(302) = 2 and inventoryArray[cur_item_sel].equipval = 1
			SetTextString (10, "CAN'T" + chr(10) + chr(10) + "SELL" + chr(10) + chr(10) + "EQUIPPED" + chr(10) + chr(10) + "ITEM!")
		endif
		
		//upgrade
		if buttonID = 303 and GetSpriteCurrentFrame(303) = 1
			PlaySound (20)
			SetSpriteFrame(303, 2)
			SetTextColor (11, 255, 255, 255, 255 )
			
			SetSpriteFrame(302, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			
			SetSpriteFrame(304, 1)
			SetTextColor (12, 255, 255, 255, 0 )
			
			ResetTimer()
			buttonID = 0
		elseif buttonID = 303 and GetSpriteCurrentFrame(303) = 2 and gold => inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl < 10
			PlaySound ( 18 )
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
			
			CreateSprite (312, 312)
			SetSpriteColorAlpha (312, 255)
			SetSpriteSize (312, 15.3, 16.9)
			SetSpritePosition (312, 74.7, 56.05)
			SetSpriteAnimation(312, 55, 106, 8)
			FixSpriteToScreen (312, 1)
			SetSpriteDepth (312, 1)
			PlaySprite (312, 16, 0)
			
			gold = gold - inventoryArray[cur_item_sel].upgradecost
			inventoryArray[cur_item_sel].upgradelvl = inventoryArray[cur_item_sel].upgradelvl + 1
			inventoryArray[cur_item_sel].upgradecost = Round(inventoryArray[cur_item_sel].upgradecost + ((inventoryArray[cur_item_sel].upgradecost * (inventoryArray[cur_item_sel].upgradelvl + 1))/8))
			if inventoryArray[cur_item_sel].itemtype = 0
				inventoryArray[cur_item_sel].mindmg = inventoryArray[cur_item_sel].mindmg + Random(Round(inventoryArray[cur_item_sel].mindmg * 0.05),Round(inventoryArray[cur_item_sel].mindmg * 0.1)) + 1
				inventoryArray[cur_item_sel].maxdmg = inventoryArray[cur_item_sel].maxdmg + Random(Round(inventoryArray[cur_item_sel].maxdmg * 0.10),Round(inventoryArray[cur_item_sel].maxdmg * 0.15)) + 1
			elseif inventoryArray[cur_item_sel].itemtype = 1
				inventoryArray[cur_item_sel].defence = inventoryArray[cur_item_sel].defence + Random(Round(inventoryArray[cur_item_sel].defence * 0.05),Round(inventoryArray[cur_item_sel].defence * 0.1)) + 1
			endif
			buttonID = 0
		elseif buttonID = 303 and GetSpriteCurrentFrame(303) = 2 and gold < inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl < 10
			PlaySound (20)
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
			buttonID = 0
		elseif buttonID = 303 and GetSpriteCurrentFrame(303) = 2 and inventoryArray[cur_item_sel].upgradelvl = 10
			PlaySound (20)
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
			buttonID = 0
		endif
		
		//upgrade text
		
		if GetSpriteCurrentFrame(303) = 2 and gold => inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl < 10
			SetTextString (11, "UPGRADE" + chr(10) + chr(10) + "FOR" + chr(10) + chr(10) + str(inventoryArray[cur_item_sel].upgradecost, 0) + "G?" + chr(10) + chr(10) + chr(10) + "OK!")
		elseif GetSpriteCurrentFrame(303) = 2 and gold < inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl < 10
			SetTextString (11, "NOT" + chr(10) + chr(10) + "ENOUGH" + chr(10) + chr(10) + "GOLD!" + chr(10) + chr(10) + str(inventoryArray[cur_item_sel].upgradecost, 0) + "G" + chr(10) + chr(10) + "NEEDED!" )
		elseif GetSpriteCurrentFrame(303) = 2 and gold => inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl = 10
			SetTextString (11, "ITEM" + chr(10) + chr(10) + "IS" + chr(10) + chr(10) + "MAX" + chr(10) + chr(10) + "LEVEL!")
		elseif GetSpriteCurrentFrame(303) = 2 and gold < inventoryArray[cur_item_sel].upgradecost and inventoryArray[cur_item_sel].upgradelvl = 10
			SetTextString (11, "ITEM" + chr(10) + chr(10) + "IS" + chr(10) + chr(10) + "MAX" + chr(10) + chr(10) + "LEVEL!")
		endif
		
		//equip
		if buttonID = 304 and GetSpriteCurrentFrame(304) = 1
			PlaySound (20)
			SetSpriteFrame(304, 2)
			SetTextColor (12, 255, 255, 255, 255 )
			
			SetSpriteFrame(302, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
			
			ResetTimer()
			buttonID = 0
		elseif buttonID = 304 and GetSpriteCurrentFrame(304) = 2 and inventoryArray[cur_item_sel].equipval = 0
			PlaySound ( 19 )
			SetSpriteFrame(304, 1)
			SetTextColor (12, 255, 255, 255, 0 )
			equiphandler()
			statHandler()
			buttonID = 0
		elseif buttonID = 304 and GetSpriteCurrentFrame(304) = 2 and inventoryArray[cur_item_sel].equipval = 1
			PlaySound (20)
			SetSpriteFrame(304, 1)
			SetTextColor (12, 255, 255, 255, 0 )
			buttonID = 0
		endif
		
		//equip text
		if GetSpriteCurrentFrame(304) = 2 and inventoryArray[cur_item_sel].equipval = 0
			SetTextString (12, "EQUIP" + chr(10) + chr(10) + "THIS" + chr(10) + chr(10) + "ITEM?" + chr(10) + chr(10) + "OK!")
		elseif GetSpriteCurrentFrame(304) = 2 and inventoryArray[cur_item_sel].equipval = 1
			SetTextString (12, "ITEM" + chr(10) + chr(10) + "IS" + chr(10) + chr(10) + "ALREADY" + chr(10) + chr(10) + "EQUIPPED")
		endif
		
		if GetSpriteCurrentFrame(302) = 2 and Timer() > 3
			SetSpriteFrame(302, 1)
			SetTextColor (10, 255, 255, 255, 0 )
		elseif GetSpriteCurrentFrame(303) = 2 and Timer() > 3
			SetSpriteFrame(303, 1)
			SetTextColor (11, 255, 255, 255, 0 )
		elseif GetSpriteCurrentFrame(304) = 2 and Timer() > 3
			SetSpriteFrame(304, 1)
			SetTextColor (12, 255, 255, 255, 0 )
		endif
		
		//out
		if buttonID = 305
			SetSpriteFrame(302, 1)
			SetSpriteFrame(303, 1)
			SetSpriteFrame(304, 1)
			justin = 0
			speak = 0
			talking = 0
			if winderSpeech > 0
				winderSpeech = 0
			endif
			stage = 1
			exitflag = 0
			flag = 1
			buttonID = 0
		endif
		
		//lscroll
		if buttonID = 306
			
			PlaySound ( 20 )
		
			if cur_item_sel = 0
				cur_item_sel = max_inv_space
			elseif cur_item_sel > 0
				cur_item_sel = cur_item_sel - 1
			endif
			
			for i = 302 to 304
				SetSpriteFrame(i, 1)
			next i
			
			for i = 10 to 12
				SetTextColor (i, 255, 255, 255, 0 )
			next i
			
			buttonID = 0
		endif
		
		//rscroll
		if buttonID = 307
			
			PlaySound ( 20 )
			
			if cur_item_sel = max_inv_space
				cur_item_sel = 0
			elseif cur_item_sel < max_inv_space
				cur_item_sel = cur_item_sel + 1
			endif
			
			for i = 302 to 304
				SetSpriteFrame(i, 1)
			next i
			
			for i = 10 to 12
				SetTextColor (i, 255, 255, 255, 0 )
			next i
			
			buttonID = 0
		endif
		
		//next
		if buttonID = 309
			
			PlaySound ( 20 )
			
			if talking = 0
				SetTextColorAlpha(3, 255)
			elseif talking = 1
				speechDef()
				talking = 0
			endif
			
			buttonID = 0
			
		endif
				
		if buttonID = 313
			if emode_active = 1
				emode_active = 0
				orb_is_active = 0
				emode_orbs = emode_orbs + 1
			endif
			if w_orb_active = 1
				w_orb_active = 0
				orb_is_active = 0
			endif
			if m_orb_active = 1
				m_orb_active = 0
				orb_is_active = 0
				m_orbs = m_orbs + 1
			endif
			if p_orb_active = 1
				p_orb_active = 0
				orb_is_active = 0
				p_orbs = p_orbs + 1
			endif
			justin = 0
			speak = 0
			talking = 0
			if winderSpeech > 0
				winderSpeech = 0
			endif
			exitflag = 1
			stage = 1
			splash = 0
			flag = 1
			buttonID = 0
		endif
		
		if buttonID = 314 and csheetup = 0
			PlaySound(20)
			csheetup = 1
			sidemenutweenup = 0
			
			PlayTweenSprite (sidemenutween2, 314, 0)
		
			if emode_enable = 1
				PlayTweenSprite (sidemenutween2, 315, 0)
			endif
			
			SetSpritePosition(316, -20, 23.0)
			
			PlayTweenSprite (sidemenutween1, 316, 1)
			
			PlayTweenSprite (csheettween1, 317, 1)
			
			PlayTweenText (csheettextl1, 500, 1)
			PlayTweenText (csheettextl1, 501, 1)
			PlayTweenText (csheettextl21, 502, 1)
			PlayTweenText (csheettextl1, 503, 1)
			PlayTweenText (csheettextl21, 504, 1)
			PlayTweenText (csheettextl1, 505, 1)
			PlayTweenText (csheettextl1, 506, 1)
			PlayTweenText (csheettextl1, 507, 1)
			PlayTweenText (csheettextl1, 508, 1)
			
			PlayTweenText (csheettextr1, 509, 1)
			PlayTweenText (csheettextr1, 510, 1)
			PlayTweenText (csheettextr1, 511, 1)
			PlayTweenText (csheettextr1, 512, 1)
			
			buttonID = 0
		endif
		
		if buttonID = 315 and coup = 0
			
			PlaySound(20)
			coup = 1
			sidemenutweenup = 0
			
			PlayTweenSprite (sidemenutween2, 314, 0)
			if emode_enable = 1
				PlayTweenSprite (sidemenutween2, 315, 0)
			endif
			
			select orb_sel
				case 1
					if emode_orbs > 0 and orb_is_active = 0
					SetSpriteFrame(319, 1)
				elseif emode_orbs < 1 and orb_is_active = 0
					SetSpriteFrame(319, 2)
				endif
				endcase
				case 2
					if w_orbs > 0 and orb_is_active = 0
						SetSpriteFrame(319, 1)
					elseif w_orbs < 1 and orb_is_active = 0
						SetSpriteFrame(319, 2)
					endif
				endcase
				case 3
					if m_orbs > 0 and orb_is_active = 0
						SetSpriteFrame(319, 1)
					elseif m_orbs < 1 and orb_is_active = 0
						SetSpriteFrame(319, 2)
					endif
				endcase
				case 4
					if p_orbs > 0 and orb_is_active = 0
						SetSpriteFrame(319, 1)
					elseif p_orbs < 1 and orb_is_active = 0
						SetSpriteFrame(319, 2)
					endif
				endcase
			endselect
			if orb_is_active = 1
				SetSpriteFrame(319, 2)
			endif
			//SetSpritePosition(316, -20, 25.8)
			
			//PlayTweenSprite (sidemenutween1, 316, 1)
			
			PlayTweenSprite (cotween1, 318, 1)
			
			PlayTweenSprite (usecotween1, 319, 1)
			PlayTweenSprite (nocotween1, 321, 1)
			
			PlayTweenText (cotextl1, 513, 1)
			
			for i = 324 to 327
				PlayTweenSprite(cobtntween1, i, 1)
			next i
			//PlayTweenText (cotextr1, 514, 1)
			
			buttonID = 0
		endif
		
		if buttonID = 316
			
			if csheetup = 1
				
				PlaySound(20)
				
				PlayTweenSprite(csheettween2, 317, 0)
				PlayTweenText (csheettextl2, 500, 0)
				PlayTweenText (csheettextl2, 501, 0)
				PlayTweenText (csheettextl22, 502, 0)
				PlayTweenText (csheettextl2, 503, 0)
				PlayTweenText (csheettextl22, 504, 0)
				PlayTweenText (csheettextl2, 505, 0)
				PlayTweenText (csheettextl2, 506, 0)
				PlayTweenText (csheettextl2, 507, 0)
				PlayTweenText (csheettextl2, 508, 0)
				
				PlayTweenText (csheettextr2, 509, 0)
				PlayTweenText (csheettextr2, 510, 0)
				PlayTweenText (csheettextr2, 511, 0)
				PlayTweenText (csheettextr2, 512, 0)
				
				PlayTweenSprite(sidemenutween2, 316, 0)
				
				csheetup = 0
				sidemenutweenup = 0
				
			endif
			
			/*if coup = 1
				
				PlaySound(20)
				
				PlayTweenSprite (cotween2, 318, 0)
			
				PlayTweenSprite (usecotween2, 319, 0)
				
				PlayTweenText (cotextl2, 513, 0)
				PlayTweenText (cotextr2, 514, 0)
				
				PlayTweenSprite(sidemenutween2, 316, 0)
				
				coup = 0
				sidemenutweenup = 0
				
			endif*/
			
			buttonID = 0
		endif
		
		if buttonID = 319 and GetSpriteCurrentFrame(319) = 1
			
			//if emode_orbs > 0 and emode_active = 0
			PlaySound(27)
			//emode_active = 1
			//emode_orbs = emode_orbs - 1
			SetSpriteFrame(319, 2)
			SetSpriteVisible(305, 0)
				
			//outbtnchange
			if orb_sel = 1
				CreateSprite(320, 320)
				emode_active = 1
				orb_is_active = 1
				emode_orbs = emode_orbs - 1
			elseif orb_sel = 2
				CreateSprite(320, 9106)
				w_orb_active = 1
				orb_is_active = 1
				//w_orbs = w_orbs - 1
			elseif orb_sel = 3
				CreateSprite(320, 9107)
				m_orb_active = 1
				m_orbs = m_orbs - 1
				orb_is_active = 1
			elseif orb_sel = 4
				CreateSprite(320, 9108)
				p_orb_active = 1
				p_orbs = p_orbs - 1
				orb_is_active = 1
			endif
			SetSpriteColorAlpha(320, 255)
			SetSpriteSize(320, 18.7, 15)
			SetSpritePosition (320, 73.1, 74.5)
			FixSpriteToScreen(320, 1)
			SetSpriteDepth(320, 1)
			SetSpriteAnimation(320, 67, 96, 4)
			SetSpriteFrame(320, 1)
			SetSpriteVisible(320, 1)
			PlaySprite(320, 16, 1)
			sidemenutext()
				
			//addhere
			if coup = 1
			
			PlayTweenSprite(cotween2, 318, 0)
			PlayTweenSprite(usecotween2, 319, 0)
			PlayTweenSprite(nocotween2, 321, 0)
			PlayTweenText (cotextl2, 513, 0)
			for i = 324 to 327
				PlayTweenSprite(cobtntween2, i, 0)
			next i
			
			
			//PlayTweenText (cotextr2, 514, 1.25/3)
			//PlayTweenSprite(sidemenutween2, 316, 1.25/3)
			
			coup = 0
			sidemenutweenup = 0
				
			endif
			
			buttonID = 0
		endif
		
		if buttonID = 320 and GetSpriteVisible(320) = 1 and emode_active = 1
			//emode_orbs = emode_orbs - 1
			orb_is_active = 0
			PlaySound(20)
			SetSpriteFrame(302, 1)
			SetSpriteFrame(303, 1)
			SetSpriteFrame(304, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			SetTextColor (11, 255, 255, 255, 0 )
			SetTextColor (12, 255, 255, 255, 0 )
			justin = 0
			speak = 0
			talking = 0
			if winderSpeech > 0
				winderSpeech = 0
			endif
			stage = 1
			emode_floor = 1
			exitflag = 0
			flag = 1
			sidemenutext()
			buttonID = 0
			save()
		elseif buttonID = 320 and GetSpriteVisible(320) = 1 and w_orb_active = 1
			PlaySound(20)
			SetSpriteFrame(302, 1)
			SetSpriteFrame(303, 1)
			SetSpriteFrame(304, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			SetTextColor (11, 255, 255, 255, 0 )
			SetTextColor (12, 255, 255, 255, 0 )
			//justin = 0
			speak = 0
			talking = 0
			if winderSpeech > 0
				winderSpeech = 0
			endif
			stage = 1
			exitflag = 0
			flag = 1
			buttonID = 0
			save()
		elseif buttonID = 320 and GetSpriteVisible(320) = 1 and m_orb_active = 1
			//magic sound
			//m_orbs = m_orbs - 1
			//PlaySound(20)
			m_orb_active = 0
			orb_is_active = 0
			magicOrb()
			DeleteSprite(320)
			SetSpriteVisible(305, 1)
			SetSpriteFrame(302, 1)
			SetSpriteFrame(303, 1)
			SetSpriteFrame(304, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			SetTextColor (11, 255, 255, 255, 0 )
			SetTextColor (12, 255, 255, 255, 0 )
			SetSpriteFrame(319, 1)
			sidemenutext()
			buttonID = 0
			save()
		elseif buttonID = 320 and GetSpriteVisible(320) = 1 and p_orb_active = 1
			//power sound
			PlaySound(20)
			//p_orbs = p_orbs - 1
			p_orb_active = 0
			orb_is_active = 0
			powerOrb()
			DeleteSprite(320)
			SetSpriteVisible(305, 1)
			SetSpriteFrame(302, 1)
			SetSpriteFrame(303, 1)
			SetSpriteFrame(304, 1)
			SetTextColor (10, 255, 255, 255, 0 )
			SetTextColor (11, 255, 255, 255, 0 )
			SetTextColor (12, 255, 255, 255, 0 )
			SetSpriteFrame(319, 1)
			smallhandler()
			sidemenutext()
			buttonID = 0
			save()
		endif
		
		if buttonID = 324
			PlaySound(20)
			orb_sel = 1
			if emode_orbs > 0 and orb_is_active = 0
				SetSpriteFrame(319, 1)
			elseif emode_orbs < 1 and orb_is_active = 0
				SetSpriteFrame(319, 2)
			endif
			buttonID = 0
		elseif buttonID = 325
			PlaySound(20)
			orb_sel = 2
			if w_orbs > 0 and orb_is_active = 0
				SetSpriteFrame(319, 1)
			elseif w_orbs < 1 and orb_is_active = 0
				SetSpriteFrame(319, 2)
			endif
			buttonID = 0
		elseif buttonID = 326
			PlaySound(20)
			orb_sel = 3
			if m_orbs > 0 and orb_is_active = 0
				SetSpriteFrame(319, 1)
			elseif m_orbs < 1 and orb_is_active = 0
				SetSpriteFrame(319, 2)
			endif
			buttonID = 0
		elseif buttonID = 327
			PlaySound(20)
			orb_sel = 4
			if p_orbs > 0 and orb_is_active = 0
				SetSpriteFrame(319, 1)
			elseif p_orbs < 1 and orb_is_active = 0
				SetSpriteFrame(319, 2)
			endif
			buttonID = 0
		endif
		
		//gift
		if buttonID = 328 and giftfun = 0 and GetTweenSpritePlaying(gifttween1, 323) = 0 and GetTweenSpritePlaying(gifttween2, 323) = 0 and csheetup = 0 and coup = 0
			buttonID = 0
			PlaySound(20)
			if no_ads = 0
				PlayTweenSprite(gifttween1, 323, 0)
				PlayTweenSprite(giftbtntween1, 322, 0)
				PlayTweenSprite(giftbtntween1, 329, 0)
				giftfun = 1
			elseif no_ads = 1
				giftfun = 2
			endif
		endif
		
		if buttonID = 322 and giftfun = 1
			PlaySound(20)
			giftfun = 2
			giftcount = 0
			ShowFullscreenAdvertChartboost()
			PlayTweenSprite(gifttween2, 323, 0)
			PlayTweenSprite(giftbtntween2, 322, 0)
			PlayTweenSprite(giftbtntween2, 329, 0)
			buttonID = 0
		endif
		
		if buttonID = 329 and giftfun = 1
			PlaySound(20)
			PlayTweenSprite(gifttween2, 323, 0)
			PlayTweenSprite(giftbtntween2, 322, 0)
			PlayTweenSprite(giftbtntween2, 329, 0)
			giftfun = 0
			buttonID = 0
		endif
		
		if giftfun = 2
			gifttweena = CreateTweenSprite(1)
			SetTweenSpriteAlpha(gifttweena, 255, 0, TweenEaseOut1())
			PlayTweenSprite(gifttweena, 328, 0)
			giftroll = Random(1,4)
			giftfun = 3
		endif
		
		if GetTweenSpritePlaying(gifttweena, 328) = 0 and giftfun = 3
			if giftroll = 1
				SetSpriteImage(328, 224)
				SetSpriteAnimation(328, 60, 60, 8)
				//PlaySprite(328, 8, 0)
				emode_orbs = emode_orbs + 1
			elseif giftroll = 2
				SetSpriteImage(328, 227)
				SetSpriteAnimation(328, 60, 60, 8)
				//PlaySprite(328, 8, 0)
				w_orbs = w_orbs + 1
			elseif giftroll = 3
				SetSpriteImage(328, 228)
				SetSpriteAnimation(328, 60, 60, 8)
				//PlaySprite(328, 8, 0)
				m_orbs = m_orbs + 1
			elseif giftroll = 4
				SetSpriteImage(328, 229)
				SetSpriteAnimation(328, 60, 60, 8)
				//PlaySprite(328, 8, 0)
				p_orbs = p_orbs + 1
			endif
			gifttweenb = CreateTweenSprite(0.35)
			SetTweenSpriteAlpha(gifttweenb, 0, 255, TweenEaseIn1())
			PlayTweenSprite(gifttweenb, 328, 0)
			PlaySound ( 21 )
			giftfun = 4
		endif
		
		if giftfun = 4 and GetTweenSpritePlaying(gifttweenb, 328) = 0
			PlaySprite(328, 8, 0)
			giftfun = 5
		endif
		
		if giftfun = 5 and GetSpritePlaying(328) = 0
			PlaySprite(328, 8, 0)
			giftfun = 6
		endif
		
		if giftfun = 6 and GetSpritePlaying(328) = 0
			PlaySprite(328, 8, 0)
			giftfun = 7
		endif
		
		if giftfun = 7 and GetSpritePlaying(328) = 0
			PlaySprite(328, 8, 0)
			giftfun = 8
		endif
		
		if giftfun = 8 and GetSpritePlaying(328) = 0
			fadeGift = CreateTweenSprite(0.35)
			SetTweenSpriteAlpha(fadeGift, 255, 0, TweenEaseOut1())
			PlayTweenSprite(fadeGift, 328, 1)
			giftfun = 9
		endif
		
		if giftfun = 9 and GetTweenSpritePlaying(fadeGift, 328) = 0
			DeleteSprite(328)
			giftfun = 0
			giftroll = 0
		endif
		
		if buttonID = 321
			PlaySound(20)
			coup = 0
			sidemenutween = 0
			PlayTweenSprite(cotween2, 318, 0)
			PlayTweenSprite(usecotween2, 319, 0)
			PlayTweenSprite(nocotween2, 321, 0)
			PlayTweenText (cotextl2, 513, 0)
			for i = 324 to 327
				PlayTweenSprite(cobtntween2, i, 0)
			next i
			buttonID = 0
		endif
			
		
		if GetRawKeyPressed(27) = 1
			endFunc()
		endif
		
		UpdateAllTweens(GetFrameTime())
		
		save()
		
		Sync()
	Until flag = 1
	
	if tutorial = 0
		tutorial = 1
	endif
	
	save()
	if w_orb_active = 0
		for i = 1 to 15
			StopMusicOGG(i)
		next i
	endif
	if exitflag = 0
		if w_orb_active = 0
			PlaySound(6)
		endif
	elseif exitflag = 1
		PlaySound(20)
	endif
	overlayDown()
endfunction

function magicOrb()
	
	PlaySound(18)
	
	CreateSprite (312, 9091)
	SetSpriteColorAlpha (312, 255)
	SetSpriteSize (312, 15.3, 16.9)
	SetSpritePosition (312, 74.7, 56.05)
	SetSpriteAnimation(312, 55, 106, 8)
	FixSpriteToScreen (312, 1)
	SetSpriteDepth (312, 1)
	PlaySprite (312, 16, 0)
	
	//check name
	select inventoryArray[cur_item_sel].name
		//STARTER
		case "WOODEN SWORD"
		endcase
		case "BUCKLER"
		endcase
		
		//BRONZE MAGIC
		case "BRONZE HANDAXE"
		endcase
		case "BRONZE GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(1,2)*magicmod
		endcase
		case "BRONZE RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
		endcase
		case "BRONZE SWORD"
		endcase
		case "BRONZE GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(1,2)*magicmod
		endcase
		case "BRONZE HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
		endcase
		case "BRONZE MACE"
		endcase
		case "BRONZE HAMMER"
		endcase
		case "BRONZE GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(1,2)*magicmod
		endcase
		case "BRONZE GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
		endcase
		case "BRONZE SHIELD"
		endcase
		case "BRONZE KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
		endcase
		case "BRONZE GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(1,2)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(1,2)*magicmod
		endcase
		
		//IRON MAGIC
		case "IRON HANDAXE"
		endcase
		case "IRON GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(2,4)*magicmod
		endcase
		case "IRON RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
		endcase
		case "IRON SWORD"
		endcase
		case "IRON GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(2,4)*magicmod
		endcase
		case "IRON HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
		endcase
		case "IRON MACE"
		endcase
		case "IRON HAMMER"
		endcase
		case "IRON GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(2,4)*magicmod
		endcase
		case "IRON GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
		endcase
		case "IRON SHIELD"
		endcase
		case "IRON KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
		endcase
		case "IRON GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(2,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(2,4)*magicmod
		endcase
		
		//MITHRIL MAGIC
		case "MITHRIL HANDAXE"
		endcase
		case "MITHRIL GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,6)*magicmod
		endcase
		case "MITHRIL RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
		endcase
		case "MITHRIL SWORD"
		endcase
		case "MITHRIL GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,6)*magicmod
		endcase
		case "MITHRIL HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
		endcase
		case "MITHRIL MACE"
		endcase
		case "MITHRIL HAMMER"
		endcase
		case "MITHRIL GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,6)*magicmod
		endcase
		case "MITHRIL GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
		endcase
		case "MITHRIL SHIELD"
		endcase
		case "MITHRIL KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
		endcase
		case "MITHRIL GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(3,6)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,6)*magicmod
		endcase
		
		//ADAMANTINE MAGIC
		case "ADAMANTINE HANDAXE"
		endcase
		case "ADAMANTINE GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE SWORD"
		endcase
		case "ADAMANTINE GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE MACE"
		endcase
		case "ADAMANTINE HAMMER"
		endcase
		case "ADAMANTINE GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE SHIELD"
		endcase
		case "ADAMANTINE KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
		endcase
		case "ADAMANTINE GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(4,8)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(4,8)*magicmod
		endcase
		
		//CRYSTAL MAGIC
		case "CRYSTAL HANDAXE"
		endcase
		case "CRYSTAL GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL SWORD"
		endcase
		case "CRYSTAL GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL MACE"
		endcase
		case "CRYSTAL HAMMER"
		endcase
		case "CRYSTAL GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL SHIELD"
		endcase
		case "CRYSTAL KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
		endcase
		case "CRYSTAL GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
		endcase
		
		//OBSIDIAN MAGIC
		case "OBSIDIAN HANDAXE"
		endcase
		case "OBSIDIAN GREATAXE"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN RAPIER"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN SWORD"
		endcase
		case "OBSIDIAN GREATSWORD"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(8,12)*magicmod	
		endcase
		case "OBSIDIAN HALBERD"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN MACE"
		endcase
		case "OBSIDIAN HAMMER"
		endcase
		case "OBSIDIAN GREATHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN GLAIVE"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN SHIELD"
		endcase
		case "OBSIDIAN KITE SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
		endcase
		case "OBSIDIAN GREATSHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(8,12)*magicmod
		endcase
		
		//LEGENDARY MAGIC
		
		case "SLIMEPOLE"
			inventoryArray[cur_item_sel].prop1val = Random(1,3)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(1,3)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(1,3)*magicmod
		endcase
		case "NATURE'S BULWARK"
			inventoryArray[cur_item_sel].prop1val = Random(2,3)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(2,3)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(2,3)*magicmod
		endcase
		case "WEAVER BLADE"
			inventoryArray[cur_item_sel].prop1val = Random(3,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,4)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(3,4)*magicmod
		endcase
		case "COBWEB SHIELD"
			inventoryArray[cur_item_sel].prop1val = Random(3,4)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(3,4)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(3,4)*magicmod
		endcase
		case "BUBONIC WARD"
			inventoryArray[cur_item_sel].prop1val = Random(4,5)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(4,5)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(4,5)*magicmod
		endcase
		case "SERPENTINE REAVER"
			inventoryArray[cur_item_sel].prop1val = Random(5,6)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(5,6)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(5,6)*magicmod
		endcase
		case "SORCERER'S SCEPTRE"
			inventoryArray[cur_item_sel].prop1val = Random(6,7)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,7)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,7)*magicmod
		endcase
		case "SOOTHSAYER'S SIGIL"
			inventoryArray[cur_item_sel].prop1val = Random(6,7)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,7)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,7)*magicmod
		endcase
		case "GLACIAL AEGIS"
			inventoryArray[cur_item_sel].prop1val = Random(6,8)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,8)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,8)*magicmod
		endcase
		case "WAR-TORN RAID SWORD"
			inventoryArray[cur_item_sel].prop1val = Random(6,9)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,9)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,9)*magicmod
		endcase
		case "ROYAL CLAYMORE"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,10)*magicmod
		endcase
		case "ESCUTCHEON"
			inventoryArray[cur_item_sel].prop1val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(6,10)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(6,10)*magicmod
		endcase
		case "AXE OF THE ANCIENTS"
			inventoryArray[cur_item_sel].prop1val = Random(7,11)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(7,11)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(7,11)*magicmod
		endcase
		case "INFERNUS"
			inventoryArray[cur_item_sel].prop1val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(8,12)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(8,12)*magicmod
		endcase
		case "CORRUPTION"
			inventoryArray[cur_item_sel].prop1val = Random(9,13)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(9,13)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(9,13)*magicmod
		endcase
		case "DEATH'S SHELTER"
			inventoryArray[cur_item_sel].prop1val = Random(9,13)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(9,13)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(9,13)*magicmod
		endcase
		
		//CHAOS MAGIC
		
		case "CHAOS LANCE"
			inventoryArray[cur_item_sel].prop1val = Random(11,15)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(11,15)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(11,15)*magicmod
		endcase
		case "CHAOS BLADE"
			inventoryArray[cur_item_sel].prop1val = Random(12,16)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(12,16)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(12,16)*magicmod
		endcase
		case "CHAOS CLEAVER"
			inventoryArray[cur_item_sel].prop1val = Random(13,17)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(13,17)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(13,17)*magicmod
		endcase
		case "CHAOS SCYTHE"
			inventoryArray[cur_item_sel].prop1val = Random(14,18)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(14,18)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(14,18)*magicmod
		endcase
		case "CHAOS SHOTEL"
			inventoryArray[cur_item_sel].prop1val = Random(15,19)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(15,19)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(15,19)*magicmod
		endcase
		case "CHAOS STAFF"
			inventoryArray[cur_item_sel].prop1val = Random(15,19)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(15,19)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(15,19)*magicmod
		endcase
		case "CHAOS BATTLEAXE"
			inventoryArray[cur_item_sel].prop1val = Random(16,20)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(16,20)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(16,20)*magicmod
		endcase
		case "CHAOS WARHAMMER"
			inventoryArray[cur_item_sel].prop1val = Random(17,21)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(17,21)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(17,21)*magicmod
		endcase
		case "CHAOS ULTRASWORD"
			inventoryArray[cur_item_sel].prop1val = Random(18,28)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(18,28)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(18,28)*magicmod
		endcase
		case "CHAOS GUARD"
			inventoryArray[cur_item_sel].prop1val = Random(18,28)*magicmod
			inventoryArray[cur_item_sel].prop2val = Random(18,28)*magicmod
			inventoryArray[cur_item_sel].prop3val = Random(18,28)*magicmod
		endcase
		
	endselect
	
endfunction

function powerOrb()
	
	PlaySound(30)
	
	attack = attack+3
	defence = defence+3
	agility = agility+3
	luck = luck+3
	
	colorRed = CreateTweenSprite(3)
	//SetTweenSpriteRed(colorRed, 0, 255, TweenBounce())
	SetTweenSpriteGreen(colorRed, 0, 255, TweenBounce())
	SetTweenSpriteBlue(colorRed, 0, 255, TweenBounce())
	PlayTweenSprite(colorRed, 600, 0)
	
endfunction

function mapScreen()

	flag = 0
	
	//create all the sprites and text
	
	CreateSprite (2100, 2100)
	SetSpriteColorAlpha (2100, 0)
	SetSpriteSize (2100, 19.2, 10.8)
	SetSpritePosition (2100, 11.4, 31.6-10)
	SetSpriteAnimation(2100, 69, 69, 4)
	SetSpriteFrame(2100, 2)
	
	CreateSprite (2101, 2101)
	SetSpriteColorAlpha (2101, 0)
	SetSpriteSize (2101, 19.2, 10.8)
	SetSpritePosition (2101, 31.4, 31.6-10)
	SetSpriteAnimation(2101, 69, 69, 4)
	SetSpriteFrame(2101, 1)
	
	CreateSprite (2102, 2102)
	SetSpriteColorAlpha (2102, 0)
	SetSpriteSize (2102, 19.2, 10.8)
	SetSpritePosition (2102, 52.5, 31.6-10)
	SetSpriteAnimation(2102, 69, 69, 4)
	SetSpriteFrame(2102, 1)
	
	CreateSprite (2103, 2103)
	SetSpriteColorAlpha (2103, 0)
	SetSpriteSize (2103, 19.2, 10.8)
	SetSpritePosition (2103, 71.4, 31.6-10)
	SetSpriteAnimation(2103, 69, 69, 4)
	SetSpriteFrame(2103, 1)
	
	CreateSprite (2104, 2104)
	SetSpriteColorAlpha (2104, 0)
	SetSpriteSize (2104, 19.2, 10.8)
	SetSpritePosition (2104, 11.4, 42.8-10)
	SetSpriteAnimation(2104, 69, 69, 4)
	SetSpriteFrame(2104, 1)
	
	CreateSprite (2105, 2105)
	SetSpriteColorAlpha (2105, 0)
	SetSpriteSize (2105, 19.2, 10.8)
	SetSpritePosition (2105, 31.4, 42.8-10)
	SetSpriteAnimation(2105, 69, 69, 4)
	SetSpriteFrame(2105, 1)
	
	CreateSprite (2106, 2106)
	SetSpriteColorAlpha (2106, 0)
	SetSpriteSize (2106, 19.2, 10.8)
	SetSpritePosition (2106, 52.5, 42.8-10)
	SetSpriteAnimation(2106, 69, 69, 4)
	SetSpriteFrame(2106, 1)
	
	CreateSprite (2107, 2107)
	SetSpriteColorAlpha (2107, 0)
	SetSpriteSize (2107, 19.2, 10.8)
	SetSpritePosition (2107, 71.4, 42.8-10)
	SetSpriteAnimation(2107, 69, 69, 4)
	SetSpriteFrame(2107, 1)
	
	CreateSprite (2108, 2108)
	SetSpriteColorAlpha (2108, 0)
	SetSpriteSize (2108, 19.2, 10.8)
	SetSpritePosition (2108, 11.4, 54.1-10)
	SetSpriteAnimation(2108, 69, 69, 4)
	SetSpriteFrame(2108, 1)
	
	CreateSprite (2109, 2109)
	SetSpriteColorAlpha (2109, 0)
	SetSpriteSize (2109, 19.2, 10.8)
	SetSpritePosition (2109, 31.4, 54.1-10)
	SetSpriteAnimation(2109, 69, 69, 4)
	SetSpriteFrame(2109, 1)
	
	CreateSprite (2110, 2110)
	SetSpriteColorAlpha (2110, 0)
	SetSpriteSize (2110, 19.2, 10.8)
	SetSpritePosition (2110, 52.5, 54.1-10)
	SetSpriteAnimation(2110, 69, 69, 4)
	SetSpriteFrame(2110, 1)
	
	CreateSprite (2111, 2111)
	SetSpriteColorAlpha (2111, 0)
	SetSpriteSize (2111, 19.2, 10.8)
	SetSpritePosition (2111, 71.4, 54.1-10)
	SetSpriteAnimation(2111, 69, 69, 4)
	SetSpriteFrame(2111, 1)
	
	CreateSprite (2112, 2112)
	SetSpriteColorAlpha (2112, 0)
	SetSpriteSize (2112, 13.3, 7.5)
	SetSpritePosition (2112, 35, 79.7-10)
	
	CreateSprite (2113, 2113)
	SetSpriteColorAlpha (2113, 0)
	SetSpriteSize (2113, 13.3, 7.5)
	SetSpritePosition (2113, 50.8, 79.7-10)
	SetSpriteAnimation(2113, 48, 48, 2)
	SetSpriteFrame(2113, 1)
	
	CreateText (2100, "SELECT LOCATION")
	SetTextColor(2100, 255, 255, 255, 0)
	SetTextSize(2100, 2)
	SetTextAlignment(2100, 1)
	SetTextPosition (2100, 50, 28-10)
	
	CreateText (2101, "STAGE 1: GRASSY PLAINS")
	SetTextColor(2101, 255, 255, 255, 0)
	SetTextSize(2101, 1.6)
	SetTextAlignment(2101, 1)
	SetTextPosition (2101, 50, 66.5+0.5-10)
	
	CreateText (2102, "COST: NOTHING")
	SetTextColor(2102, 255, 255, 255, 0)
	SetTextSize(2102, 1.6)
	SetTextAlignment(2102, 1)
	SetTextPosition (2102, 50, 70.6+0.5-10)
	
	CreateText (2103, "YOU HAVE X ORB AVAILABE")
	SetTextColor(2103, 255, 255, 255, 0)
	SetTextSize(2103, 1.6)
	SetTextAlignment(2103, 1)
	SetTextPosition (2103, 50, 74.7+0.5-10)
	
	mapSel = 1
	mapCost = 0
	mapcont = 0
	mapSetter()
	mapTextUpdate()	
	
	w_orb_active = 0
	orb_is_active = 0
	
	overlayUp()
	
	repeat
		
		if buttonID = 2100 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2100) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 1: GRASSY PLAINS")
			SetTextString(2102, "COST: NOTHING")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2100, 2)
			
			mapSel = 1
			mapCost = 0
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2100 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2100) = 2
			buttonID = 0
		elseif buttonID = 2100 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2100) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 1: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2100, 4)
			SetSpriteFrame(2113, 2)
					
		endif
		
		if buttonID = 2101 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2101) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 2: MURKY FOREST")
			SetTextString(2102, "COST: 1 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2101, 2)
			
			mapSel = 2
			mapCost = 1
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2101 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2101) = 2
			buttonID = 0
		elseif buttonID = 2101 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2101) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 2: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2101, 4)
			SetSpriteFrame(2113, 2)
			
		endif
		
		if buttonID = 2102 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2102) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 3: DARK CAVE")
			SetTextString(2102, "COST: 2 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2102, 2)
			
			mapSel = 3
			mapCost = 2
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2102 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2102) = 2
			buttonID = 0
		elseif buttonID = 2102 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2102) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 3: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2102, 4)
			SetSpriteFrame(2113, 2)
						
		endif
		
		if buttonID = 2103 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2103) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 4: BARREN WASTELANDS")
			SetTextString(2102, "COST: 3 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2103, 2)
			
			mapSel = 4
			mapCost = 3
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2103 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2103) = 2
			buttonID = 0
		elseif buttonID = 2103 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2103) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 4: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2103, 4)
			SetSpriteFrame(2113, 2)
			
		endif
		
		if buttonID = 2104 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2104) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 5: CRUMBLED RUINS")
			SetTextString(2102, "COST: 4 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2104, 2)
			
			mapSel = 5
			mapCost = 4
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2104 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2104) = 2
			buttonID = 0
		elseif buttonID = 2104 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2104) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 5: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
				
			SetSpriteFrame(2104, 4)	
			SetSpriteFrame(2113, 2)			
			
		endif
		
		if buttonID = 2105 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2105) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 6: MYSTIC CATHEDRAL")
			SetTextString(2102, "COST: 4 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2105, 2)
			
			mapSel = 6
			mapCost = 4
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2105 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2105) = 2
			buttonID = 0
		elseif buttonID = 2105 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2105) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 6: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2105, 4)
			SetSpriteFrame(2113, 2)
					
		endif
		
		if buttonID = 2106 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2106) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 7: SNOWY PLAINS")
			SetTextString(2102, "COST: 5 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2106, 2)
			
			mapSel = 7
			mapCost = 5
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2106 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2106) = 2
			buttonID = 0
		elseif buttonID = 2106 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2106) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 7: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2106, 4)
			SetSpriteFrame(2113, 2)
						
		endif
		
		if buttonID = 2107 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2107) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 8: TALL MOUNTAINS")
			SetTextString(2102, "COST: 5 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2107, 2)
			
			mapSel = 8
			mapCost = 5
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2107 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2107) = 2
			buttonID = 0
		elseif buttonID = 2107 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2107) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 8: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2107, 4)
			SetSpriteFrame(2113, 2)
						
		endif
		
		if buttonID = 2108 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2108) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 9: ICE CASTLE")
			SetTextString(2102, "COST: 6 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2108, 2)
			
			mapSel = 9
			mapCost = 6
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2108 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2108) = 2
			buttonID = 0
		elseif buttonID = 2108 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2108) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 9: ???")
			SetTextString(2102, "COST: ???")	
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2108, 4)
			SetSpriteFrame(2113, 2)
					
		endif
		
		if buttonID = 2109 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2109) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 10: VICTORY ROAD")
			SetTextString(2102, "COST: 6 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2109, 2)
			
			mapSel = 10
			mapCost = 6
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2109 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2109) = 2
			buttonID = 0
		elseif buttonID = 2109 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2109) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 10: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2109, 4)
			SetSpriteFrame(2113, 2)
			
		endif
		
		if buttonID = 2110 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2110) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 11: INFERNAL DUNGEON")
			SetTextString(2102, "COST: 7 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2110, 2)
			
			mapSel = 11
			mapCost = 7
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2110 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2110) = 2
			buttonID = 0
		elseif buttonID = 2110 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2110) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 11: ???")
			SetTextString(2102, "COST: ???")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2110, 4)
			SetSpriteFrame(2113, 2)
				
		endif
		
		if buttonID = 2111 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2111) = 1
			PlaySound(20)
			buttonID = 0
			
			SetTextString(2101, "STAGE 12: DARK LAIR")
			SetTextString(2102, "COST: 8 WARP ORBS")
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2111, 2)
			
			mapSel = 12
			mapCost = 8
			
			if w_orbs >= mapCost
				SetSpriteFrame(2113, 1)
			elseif w_orbs < mapCost
				SetSpriteFrame(2113, 2)
			endif
			
		elseif buttonID = 2111 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2111) = 2
			//PlaySound(20)
			buttonID = 0
		elseif buttonID = 2111 and GetTweenSpritePlaying(fadeIn, 2100) = 0 and GetSpriteCurrentFrame(2111) = 3
			PlaySound(20)
			buttonID = 0
			SetTextString(2101, "STAGE 12: ???")
			SetTextString(2102, "COST: ???")		
			
			for i = 2100 to 2111
				if GetSpriteCurrentFrame(i) < 3
					SetSpriteFrame(i, 1)
				endif
				if GetSpriteCurrentFrame(i) > 2
					SetSpriteFrame(i, 3)
				endif
			next i
			
			SetSpriteFrame(2111, 4)
			SetSpriteFrame(2113, 2)
				
		endif
		
		//back
		if buttonID = 2112 and GetTweenSpritePlaying(fadeIn, 2100) = 0
			buttonID = 0
			PlaySound(20)
			mapcont = 2

			flag = 1
		endif
		
		//go
		if buttonID = 2113 and w_orbs => mapCost and GetTweenSpritePlaying(fadeIn, 2100) = 0
			buttonID = 0
			PlaySound(6)
			mapcont = 1
			w_orbs = w_orbs - mapCost
			stage = mapSel
			mapTextUpdate()
			
			for i = 1 to 15
				StopMusicOGG(i)
			next i
			
			flag = 1
		endif
		
	inputHandling()
	
	UpdateAllTweens ( GetFrameTime() )	
	
	Sync()		
	until flag = 1
	overlayDown()
	if loadflag < 12 and mapcont = 1
		bulkload()
	endif
endfunction

function mapSetter()
	
	select beststage
		case 1
			SetSpriteFrame(2100, 1)
			for i = 2101 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 2
			for i = 2100 to 2101
				SetSpriteFrame(i, 1)
			next i
			for i = 2102 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 3
			for i = 2100 to 2102
				SetSpriteFrame(i, 1)
			next i
			for i = 2103 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 4
			for i = 2100 to 2103
				SetSpriteFrame(i, 1)
			next i
			for i = 2104 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 5
			for i = 2100 to 2104
				SetSpriteFrame(i, 1)
			next i
			for i = 2105 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 6
			for i = 2100 to 2105
				SetSpriteFrame(i, 1)
			next i
			for i = 2106 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 7
			for i = 2100 to 2106
				SetSpriteFrame(i, 1)
			next i
			for i = 2107 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 8
			for i = 2100 to 2107
				SetSpriteFrame(i, 1)
			next i
			for i = 2108 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 9
			for i = 2100 to 2108
				SetSpriteFrame(i, 1)
			next i
			for i = 2109 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 10
			for i = 2100 to 2109
				SetSpriteFrame(i, 1)
			next i
			for i = 2110 to 2111
				SetSpriteFrame(i, 3)
			next i
		endcase
		case 11
			for i = 2100 to 2110
				SetSpriteFrame(i, 1)
			next i
			SetSpriteFrame(2111, 3)
		endcase
		case 12
			for i = 2100 to 2111
				SetSpriteFrame(i, 1)
			next i
		endcase
	endselect		
	
endfunction

function mapTextUpdate()
	
	if w_orbs = 1
		SetTextString(2103, "YOU HAVE 1 ORB AVAILABLE")
	elseif w_orbs > 1
		SetTextString(2103, "YOU HAVE " + str(w_orbs) + " ORBS AVAILABLE")
	endif
	
	if w_orbs = 0
		SetTextString(2103, "YOU HAVE 0 ORBS AVAILABLE")
	ENDIF
	
endfunction

function winderUpgrade()
	
	if winderSpeech = 0 and level >= 10 and level < 20 and winder < 2
		winderSpeech = 1
		winder = 2
	elseif winderSpeech = 0 and level >= 20 and level < 30 and winder < 3
		winderSpeech = 1
		winder = 3
	elseif winderSpeech = 0 and level >= 30 and level < 40 and winder < 4
		winderSpeech = 1
		winder = 4
	elseif winderSpeech = 0 and level >= 40 and level < 50 and winder < 5
		winderSpeech = 1
		winder = 5
	elseif winderSpeech = 0 and level >= 50 and level < 60 and winder < 6
		winderSpeech = 1
		winder = 6
	elseif winderSpeech = 0 and level >= 60 and level < 70 and winder < 7
		winderSpeech = 1
		winder = 7
	elseif winderSpeech = 0 and level >= 70 and winder < 8
		winderSpeech = 1
		winder = 8
		winderflag = 1
	endif
	
	if stage = 12 and homecheck = 0 and winderSpeech = 1
		winderSpeech = 0
		staggerspeech = 1
	endif
	
endfunction

function speechDef()
	if tutorial = 0 and speechflag = 0 and winderSpeech = 0
		select tutorialspeech
			case 0
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..AHEM, EXCUSE ME... I AM YOUR" + chr(10) + chr(10) + "CREATOR!")
				tutorialspeech = 1
				buttonID = 0
			endcase
			case 1
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "YOUR DUTY IS TO HUNT ENEMIES," + chr(10) + chr(10) + "AND BECOME STRONGER!")
				tutorialspeech = 2
				buttonID = 0
			endcase
			case 2
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..AND FIND SWEET LOOT AND GOLD," + chr(10) + chr(10) + "OF COURSE!")
				tutorialspeech = 3
				buttonID = 0
			endcase
			case 3
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..NOW LISTEN CAREFULLY BECAUSE" + chr(10) + chr(10) + "I'LL ONLY SAY THIS ONCE!")
				tutorialspeech = 4
				buttonID = 0
			endcase
			case 4
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "IT'S IMPORTANT TO KEEP YOUR" + chr(10) + chr(10) + "ENERGY UP!")
				tutorialspeech = 5
				buttonID = 0
			endcase
			case 5
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "IF YOU DON'T, YOU WILL STOP" + chr(10) + chr(10) + "MOVING ENTIRELY.")
				tutorialspeech = 6
				buttonID = 0
			endcase
			case 6
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "JUST BE SURE TO KEEP YOURSELF" + chr(10) + chr(10) + "WOUND UP, AND YOU'LL BE OKAY!")
				tutorialspeech = 7
				buttonID = 0
			endcase
			case 7
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "IF YOU RUN OUT OF HEALTH, YOU" + chr(10) + chr(10) + "WILL RETURN HERE.")
				tutorialspeech = 8
				buttonID = 0
			endcase
			case 8
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "AND OF COURSE, ONCE YOU'RE HERE," + chr(10) + chr(10) + "YOU CAN SELL OR EQUIP ANY ITEMS!")
				tutorialspeech = 9
				buttonID = 0
			endcase
			case 9
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "I CAN ALSO UPGRADE YOUR ITEMS.." + chr(10) + chr(10) + "FOR A COST, HEHE!")
				tutorialspeech = 10
				buttonID = 0
			endcase
			case 10
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "I THINK THAT JUST ABOUT COVERS" + chr(10) + chr(10) + "WHAT I CAN DO FOR YOU..")
				tutorialspeech = 11
				buttonID = 0
			endcase
			case 11
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "WHEN YOU GO OUTSIDE TO HUNT, BE" + chr(10) + chr(10) + "SURE TO CHANGE YOUR STANCE!")
				tutorialspeech = 12
				buttonID = 0
			endcase
			case 12
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "CHANGING YOUR STANCE ALTERS YOUR" + chr(10) + chr(10) + "DAMAGE, DEFENCE AND MOVE SPEED.")
				tutorialspeech = 13
				buttonID = 0
			endcase
			case 13
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "THE MORE YOU USE THEM, THE" + chr(10) + chr(10) + "MORE EFFECTIVE THEY BECOME!")
				tutorialspeech = 14
				buttonID = 0
			endcase
			case 14
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..AND IN TURN THEY WILL USE UP" + chr(10) + chr(10) + "MORE OF YOUR ENERGY..!")
				tutorialspeech = 15
				buttonID = 0
			endcase
			case 15
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "WHEN YOU GAIN A LEVEL YOU WILL" + chr(10) + chr(10) + "GET STAT POINTS..")
				tutorialspeech = 16
				buttonID = 0
			endcase
			case 16
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "ATTACK INCREASES DAMAGE, DEFENCE" + chr(10) + chr(10) + "REDUCES DAMAGE YOU TAKE..")
				tutorialspeech = 17
				buttonID = 0
			endcase
			case 17
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..AGILITY WILL MAKE YOU ATTACK" + chr(10) + chr(10) + "FASTER! AND LUCK...")
				tutorialspeech = 18
				buttonID = 0
			endcase
			case 18
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "WELL, THAT MEANS YOU'LL FIND" + chr(10) + chr(10) + "MORE TREASURE AND GOLD!")
				tutorialspeech = 19
				buttonID = 0
			endcase
			case 19
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "IT ALSO INCREASES CRIT CHANCE," + chr(10) + chr(10) + "WHATEVER THAT IS..")
				tutorialspeech = 20
				buttonID = 0
			endcase
			case 20
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "...I THINK I'VE RAMBLED ON FOR" + chr(10) + chr(10) + "FAR TOO LONG..")
				tutorialspeech = 21
				buttonID = 0
			endcase
			case 21
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "..BUT DO CHAT WITH ME IF YOU DROP" + chr(10) + chr(10) + "IN FOR A VISIT..")
				tutorialspeech = 22
				buttonID = 0
			endcase
			case 22
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "I'VE GIVEN YOU SOME GEAR TO GET" + chr(10) + chr(10) + "YOU STARTED!")
				tutorialspeech = 23
				buttonID = 0
			endcase
			case 23
				SetTextColorAlpha ( 3, 0 )
				SetTextString ( 3, "GOOD LUCK ON YOUR VERY FIRST" + chr(10) + chr(10) + "ADVENTURE!")
				tutorialspeech = 24
				tutorial = 1
				buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 0 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "DON'T WORRY, YOU'LL DO FINE!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 1 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..DID YOU COME ACROSS THE" + chr(10) + chr(10) + "MEGASLIME?")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "PESKY FIEND, THAT THING!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 2 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "OH! YOUR BOOTS ARE SO MUDDY!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..COULD YOU PLEASE GO OUTSIDE" + chr(10) + chr(10) + "AND CLEAN THEM OFF?")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 3 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..THOSE SPIDERS MAKE MY SKIN" + chr(10) + chr(10) + "CRAWL!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU DON'T SEEM WORRIED THOUGH!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 4 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..IT CAN GET LONELY SOMETIMES..")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "BUT NEVER FORGET, YOU'RE A BRAVE" + chr(10) + chr(10) + "WARRIOR!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 5 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I WONDER WHAT THOSE RUINS USED" + chr(10) + chr(10) + "TO BE..")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "PERHAPS TREASURE IS BURIED" + chr(10) + chr(10) + "SOMEWHERE IN THE RUBBLE!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 6 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..THEY'RE ALL CURSED, YOU SAY?" )
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "HOPEFULLY THE PRINCESS IS OKAY..." )
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 7 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "BRR! AREN'T YOU COLD??")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I SUPPOSE THAT ARMOUR MUST" + chr(10) + chr(10) + "KEEP YOU WARM!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 8 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "ARE YOU ENJOYING THE SIGHTS?")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..SADLY I HAVE TOO MUCH WORK" + chr(10) + chr(10) + "TO DO..")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 9 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "DID YOU MANAGE TO SPEAK WITH THE" + chr(10) + chr(10) + "ICE PRINCESS?")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "HMM.. MAYBE THINGS ARE WORSE" + chr(10) + chr(10) + "THAN I THOUGHT.." )
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 10 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "HMM, YOU MUST BE GETTING CLOSER" + chr(10) + chr(10) + "TO THE SOURCE..")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "DON'T FALTER NOW! I BELIEVE IN" + chr(10) + chr(10) + "YOU!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 11 and winderSpeech = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU MUST NOT LET THE EVIL" + chr(10) + chr(10) + "OVERWHELM YOU!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU WILL TRIUMPH!.. I KNOW IT!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 12 and winderSpeech = 0 and homecheck = 1
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..SOMETHING MUST HAVE AWOKEN IT." + chr(10) + chr(10) + "THE ULTIMATE EVIL...")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU KNOW WHAT TO DO, CHAMPION!")
			if winderflag = 0
				speak = 2
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 12  and winderSpeech = 0 and homecheck = 0
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..YOU'VE DONE IT!.. I CAN SEE" + chr(10) + chr(10) + "THE LAND IS RETURNING TO NORMAL.")
			speak = 1
			
			if staggerspeech = 1 and emode_speech = 2
				winderSpeech = 1
				staggerspeech = 0
				speak = 0
			endif
			
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "THOUGH IT SEEMS EVIL STILL" + chr(10) + chr(10) + "LINGERS...")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..FOR NOW, YOU MUST CONTINUE" + chr(10) + chr(10) + "YOUR ADVENTURES!")
			if winderflag = 0
				speak = 3
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 3
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
				if emode_speech =< 1
					emode_speech = 1
					speechflag = 13
					speak = 0
				endif
			speak = 0
			buttonID = 0
			endcase
		endselect
	endif
	if tutorial = 1 and speechflag = 13 and winderSpeech = 0 and emode_speech = 1
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "IT LOOKS LIKE YOU'VE COME ACROSS" + chr(10) + chr(10) + "A TREASURE ORB...")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "ONLY POWERFUL ENEMIES CAN DROP" + chr(10) + chr(10) + "THESE RARE OBJECTS..")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "THERE ARE FOUR UNIQUE KINDS THAT" + chr(10) + chr(10) + "I KNOW OF..")
			speak = 3
			buttonID = 0
			endcase
			case 3
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "USING THEM WILL SURELY MAKE YOUR" + chr(10) + chr(10) + "ADVENTURES MUCH EASIER!")
			speak = 0
			emode_speech = 2
			if stage = 1
				speechflag = 1
			elseif stage = 2
				speechflag = 2
			elseif stage = 3
				speechflag = 3
			elseif stage = 4
				speechflag = 4
			elseif stage = 5
				speechflag = 5
			elseif stage = 6
				speechflag = 6
			elseif stage = 7
				speechflag = 7
			elseif stage = 8
				speechflag = 8
			elseif stage = 9
				speechflag = 9
			elseif stage = 10
				speechflag = 10
			elseif stage = 11
				speechflag = 11
			elseif stage = 12
				speechflag = 12
			endif
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and speechflag = 13 and winderSpeech = 0 and emode_speech = 2
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..WELL DONE ON CONQUERING IN" + chr(10) + chr(10) + "THE CHAOS DIMENSION!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "DID YOU FIND LOTS OF TREASURE" + chr(10) + chr(10) + "WHILE YOU WERE THERE?")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..IT CAN BE DIFFICULT THOUGH," + chr(10) + chr(10) + "BETTER LUCK NEXT TIME!")
			if winderflag = 0
				speak = 3
			elseif winderflag = 1
				speak = 0
			endif
			buttonID = 0
			endcase
			case 3
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "...I'LL HAVE SOMETHING READY FOR" + chr(10) + chr(10) + "YOU WHEN YOU'RE STRONGER..")
			speak = 0
			buttonID = 0
			endcase
		endselect
	endif
	if tutorial = 1 and winderSpeech = 1 and winder = 2
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'IRON' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 3
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'SILVER' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 4
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'GOLD' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 5
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'EMERALD' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 6
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'SAPPHIRE' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 7
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'RUBY' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	elseif tutorial = 1 and winderSpeech = 1 and winder = 8
		select speak
			case 0
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "I SEE YOU'VE GROWN STRONGER!")
			speak = 1
			buttonID = 0
			endcase
			case 1
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "..I'VE FITTED YOU WITH A NEW" + chr(10) + chr(10) + "'DIAMOND' WINDER!")
			speak = 2
			buttonID = 0
			endcase
			case 2
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "YOU'LL FIND THAT YOU HAVE MUCH" + chr(10) + chr(10) + "MORE ENERGY NOW!")
			speak = 3
			buttonID = 0
			endcase
			case 3
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "THIS IS THE BEST WINDER I WILL" + chr(10) + chr(10) + "EVER BE ABLE TO MAKE!")
			speak = 4
			buttonID = 0
			endcase
			case 4
			SetTextColorAlpha ( 3, 0 )
			SetTextString ( 3, "GOOD LUCK FOR THE REST" + chr(10) + chr(10) + "OF YOUR ADVENTURE..!")
			speak = 0
			winderSpeech = 0
			buttonID = 0
			endcase
		endselect
	endif
	
endfunction

function inputHandling()

	if GetPointerPressed() = 1
		buttonID = GetSpriteHit ( ScreenToWorldX(GetPointerX()), ScreenToWorldY(GetPointerY()) )
	endif
	
	if GetRawKeyPressed(27) = 1
		endFunc()
	endif
	
endfunction

function music()
	if emode_active = 0 and musicoff = 0
		select stage
		case 1
			PlayMusicOGG ( 3, 1 )
		endcase
		case 2
			PlayMusicOGG ( 4, 1)
		endcase
		case 3
			PlayMusicOGG ( 5, 1)
		endcase
		case 4
			PlayMusicOGG ( 6, 1)
		endcase
		case 5
			PlayMusicOGG ( 7, 1)
		endcase
		case 6
			PlayMusicOGG ( 8, 1)
		endcase
		case 7
			PlayMusicOGG ( 9, 1)
		endcase
		case 8
			PlayMusicOGG ( 10, 1)
		endcase
		case 9
			PlayMusicOGG ( 11, 1)
		endcase
		case 10
			PlayMusicOGG ( 12, 1)
		endcase
		case 11
			PlayMusicOGG ( 13, 1)
		endcase
		case 12
			PlayMusicOGG ( 14, 1)
		endcase
		endselect
		SetMusicSystemVolumeOGG(20)
	elseif emode_active = 1 and musicoff = 0
		
		PlayMusicOGG ( emode_music, 1)
		SetMusicSystemVolumeOGG(20)
		
	endif	
	
endfunction

function mover()
	if Timer() > 0.2 and cur_energy > 0 and enemycount => 0 and bosstrue < 3 and fightBoolean = 0 and lootexist = 0 and GetTweenSpritePlaying ( genericfade, 250 ) = 0 and levelup = 0
		for i = 600 to 900 step 100
			ResumeSprite ( i )
			FixSpriteToScreen ( i, 1 )
		next i
		SetSpriteX ( 400 , (GetSpriteX ( 400 ) - movespeed*2) )
		SetSpriteX ( 500 , (GetSpriteX ( 500 ) - movespeed) )
		cur_energy = cur_energy - drainspeed
	endif
	
	if cur_energy > 0 and fightBoolean = 1
		for i = 600 to 900 step 100
			ResumeSprite ( i )
			FixSpriteToScreen ( i, 1 )
		next i
	endif
	
	if Timer() > 0.2 and enemycount = 0 and bosstrue = 3 and fightBoolean = 0 and lootexist = 0 and levelup = 0 and levelcomplete = 0
		
		if levelcomplete = 0
			beststagehandler()
			levelcomplete = 1
		endif
	
		if GetGameCenterLoggedIn() = 1
			bossachievement()
		endif
		
		drainspeed = 0
		weaponCleanup()
		movespeed = 0.35
		
		SetSpriteFrame ( 205, 3)
		
		if stage = 12
			SetSpriteFrame(204, 2)
			SetTextVisible ( 13, 0 )
		endif
		
	endif
	
	if levelcomplete = 1
		
		for i = 600 to 900 step 100
			FixSpriteToScreen ( i, 0 )
			SetSpriteX ( i, (GetSpriteX ( i ) + movespeed) )
		next i
		
		for i = 600 to 900 step 100
			ResumeSprite(i)
		next i
		
		save()
		
	endif
		
	
	if cur_energy > 0 and enemyTrue = 1 and fightBoolean = 0 and lootexist = 0 and levelup = 0
		SetSpriteX ( 250, (GetSpriteX ( 250 ) - movespeed*2) )
	endif

	if cur_energy =< 0 and levelcomplete = 0
		for i = 600 to 900 step 100
			StopSprite ( i )
		next i
	endif
	
	if lootexist = 1
		for i = 600 to 900 step 100
			StopSprite ( i )
		next i
	endif
	
	if GetSpriteX ( 600 ) => 110
		PlaySound(6)
		if emode_active = 0
			if stage < 12
				contcheck = 1
			//stage = 1 //next stage
				stage = stage + 1 //next stage
			elseif stage => 12
				stage = 1
				contcheck = 0
				gamecomplete = 1
			endif
		elseif emode_active = 1
			contcheck = 1
			emode_floor = emode_floor + 1
			if emode_highs < emode_floor
				emode_highs = emode_floor - 1
			endif
		endif
		flag = 1
	endif
endfunction

function enemySpawner()
	if enemytrue = 0 and enemycount => 0 and GetSpriteExists (250) = 0 and bosstrue = 0
		enemytrue = 1
		mobdefine()
		SetSpriteColorAlpha (250, 255)
		SetSpriteSize (250, 58.3, 32.8)
		SetSpriteOffset (250, (GetSpriteWidth(250)/2), (GetSpriteHeight(250)) )
		SetSpritePosition (250, Random2(180, 280), 0.05 )
		SetSpriteAnimation(250, 210, 210, 2)
		SetSpriteDepth (250, 10)
		PlaySprite (250, 4)
	endif
	
	if bosstrue = 1 and levelup = 0 and lootexist = 0 and fightboolean = 0
		alert()
	endif
endfunction

function mobdefine()
	
	if enemycount = 0 and bosstrue = 0
		bosstrue = 1
	endif
	
	if emode_active = 0
		select stage
		case 1
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 250)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 251)
				elseif mobcheck > 79
					CreateSprite (250, 252)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 286)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 250
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 30 * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 251
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 60 * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 252
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 95 * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 286
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 650 * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 2
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 253)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 254)
				elseif mobcheck > 79
					CreateSprite (250, 255)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 287)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 253
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 30 * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 254
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 60 * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 255
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 95 * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 287
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 650 * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 3
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 256)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 257)
				elseif mobcheck > 79
					CreateSprite (250, 258)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 288)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 256
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 30 * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 257
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 60 * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 258
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 95 * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 288
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = 650 * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 4
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 259)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 260)
				elseif mobcheck > 79
					CreateSprite (250, 261)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 289)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 259
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 260
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 261
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 289
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 5
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 262)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 263)
				elseif mobcheck > 79
					CreateSprite (250, 264)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 290)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 262
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 263
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 264
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 290
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 6
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 265)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 266)
				elseif mobcheck > 79
					CreateSprite (250, 267)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 291)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 265
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 266
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 267
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 291
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 7
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 268)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 269)
				elseif mobcheck > 79
					CreateSprite (250, 270)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 292)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 268
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 269
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 270
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 292
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 8
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 271)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 272)
				elseif mobcheck > 79
					CreateSprite (250, 273)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 293)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 271
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 272
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 273
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 293
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 9
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 274)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 275)
				elseif mobcheck > 79
					CreateSprite (250, 276)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 294)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 274
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 275
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 276
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 294
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 10
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 277)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 278)
				elseif mobcheck > 79
					CreateSprite (250, 279)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 295)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 277
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 278
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 279
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 295
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 11
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 280)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 281)
				elseif mobcheck > 79
					CreateSprite (250, 282)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 296)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 280
				enemyhp = 50 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 281
				enemyhp = 70 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 282
				enemyhp = 130 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 296
				enemyhp = 1000 * stagemod * hpmod
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		case 12
			if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, 283)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, 284)
				elseif mobcheck > 79
					CreateSprite (250, 285)
				endif
			elseif bosstrue = 1
				CreateSprite (250, 297)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = 283
				enemyhp = 50 * stagemod * (hpmod * 2)
				enemymaxhp = enemyhp
				enemyexp = (30 * 2) * stagemod	
				enemygold = 2 * stagemod
			elseif curmob = 284
				enemyhp = 70 * stagemod * (hpmod * 2)
				enemymaxhp = enemyhp
				enemyexp = (60 * 2) * stagemod
				enemygold = 4 * stagemod
			elseif curmob = 285
				enemyhp = 130 * stagemod * (hpmod * 2)
				enemymaxhp = enemyhp
				enemyexp = (95 * 2) * stagemod
				enemygold = 9 * stagemod
			elseif curmob = 297
				enemyhp = 1000 * stagemod * (hpmod * 2)
				enemymaxhp = enemyhp
				enemyexp = (650 * 2) * stagemod
				enemygold = 100 * stagemod
			endif
		endcase
		endselect
	elseif emode_active = 1
		
		if bosstrue = 0
				mobcheck = Random(0,100)
				if mobcheck < 50
					CreateSprite (250, emode_mob1)
				elseif mobcheck => 50 and mobcheck =< 79
					CreateSprite (250, emode_mob2)
				elseif mobcheck > 79
					CreateSprite (250, emode_mob3)
				endif
			elseif bosstrue = 1
				CreateSprite (250, emode_boss)
				SetSpritePosition (250, Random2(200, 250), 0 )
			endif
			curmob = GetSpriteImageID (250)
			if curmob = emode_mob1
				enemyhp = (50 * stagemod * (hpmod * 2)) * emode_floor
				enemymaxhp = (enemyhp)
				enemyexp = ((30 * 2) * stagemod	) * emode_floor
				enemygold = (2 * stagemod) * emode_floor
			elseif curmob = emode_mob2
				enemyhp = (70 * stagemod * (hpmod * 2)) * emode_floor
				enemymaxhp = (enemyhp)
				enemyexp = ((60 * 2) * stagemod) * emode_floor
				enemygold = (4 * stagemod) * emode_floor
			elseif curmob = emode_mob3
				enemyhp = (130 * stagemod * (hpmod * 2)) * emode_floor
				enemymaxhp = (enemyhp)
				enemyexp = ((95 * 2) * stagemod) * emode_floor
				enemygold = (9 * stagemod) * emode_floor
			elseif curmob = emode_boss
				enemyhp = (1000 * stagemod * (hpmod * 2)) * emode_floor
				enemymaxhp = (enemyhp)
				enemyexp = ((650 * 2) * stagemod) * emode_floor
				enemygold = (100 * stagemod) * emode_floor
			endif
		
	endif
	
	dmgheightdef()
	
endfunction

function dmgheightdef()
	if curmob = 250			
		dmgheight = 2
	elseif curmob = 251
		dmgheight = 2
	elseif curmob = 252
		dmgheight = 2
	elseif curmob = 253
		dmgheight = 2
	elseif curmob = 254
		dmgheight = 0
	elseif curmob = 255
		dmgheight = 0
	elseif curmob = 256
		dmgheight = 0
	elseif curmob = 257
		dmgheight = 0
	elseif curmob = 258
		dmgheight = 2
	elseif curmob = 259
		dmgheight = 2
	elseif curmob = 260
		dmgheight = 2
	elseif curmob = 261
		dmgheight = 2
	elseif curmob = 262
		dmgheight = 0
	elseif curmob = 263
		dmgheight = 0
	elseif curmob = 264
		dmgheight = 1
	elseif curmob = 265
		dmgheight = 0
	elseif curmob = 266
		dmgheight = 0
	elseif curmob = 267
		dmgheight = 0
	elseif curmob = 268
		dmgheight = 2
	elseif curmob = 269
		dmgheight = 2
	elseif curmob = 270
		dmgheight = 0
	elseif curmob = 271
		dmgheight = 0
	elseif curmob = 272
		dmgheight = 0
	elseif curmob = 273
		dmgheight = 2
	elseif curmob = 274
		dmgheight = 0
	elseif curmob = 275
		dmgheight = 1
	elseif curmob = 276
		dmgheight = 1
	elseif curmob = 277
		dmgheight = 2
	elseif curmob = 278
		dmgheight = 0
	elseif curmob = 279
		dmgheight = 1
	elseif curmob = 280
		dmgheight = 0
	elseif curmob = 281
		dmgheight = 1
	elseif curmob = 282
		dmgheight = 1
	elseif curmob = 283
		dmgheight = 1
	elseif curmob = 284
		dmgheight = 0
	elseif curmob = 285
		dmgheight = 1
	elseif curmob = 286
		dmgheight = 2
	elseif curmob = 287
		dmgheight = 1
	elseif curmob = 288
		dmgheight = 1
	elseif curmob = 289
		dmgheight = 1
	elseif curmob = 290
		dmgheight = 1
	elseif curmob = 291
		dmgheight = 1
	elseif curmob = 292
		dmgheight = 1
	elseif curmob = 293
		dmgheight = 1
	elseif curmob = 294
		dmgheight = 1
	elseif curmob = 295
		dmgheight = 1
	elseif curmob = 296
		dmgheight = 1
	elseif curmob = 297
		dmgheight = 1
	endif
endfunction

function dmgdefine()
	
	if emode_active = 0
		emode_floor = 1
	endif
	
	if curmob = 250			
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 251
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 252
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 253
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 254
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 255
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 256
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 257
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 258
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 259
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 260
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 261
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 262
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 263
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 264
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 265
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 266
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 267
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 268
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 269
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 270
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 271
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 272
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 273
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 274
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 275
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 276
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 277
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 278
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 279
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 280
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 281
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 282
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 283
		enemydefdmg = Random(5,8) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 284
		enemydefdmg = Random(11,15) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 285
		enemydefdmg = Random(15,21) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 286
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 287
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 288
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 289
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 290
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 291
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 292
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 293
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 294
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 295
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 296
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	elseif curmob = 297
		enemydefdmg = Random(32,45) * (stagemod * dmgmod) * emode_floor
	endif
endfunction

function alert()
	if alert = 0
		//alert
		CreateSprite (950, 223)
		SetSpriteSize (950, 1.7, 5.6)
		SetSpritePosition (950, GetSpriteX(600), 13.1)
		SetSpriteAnimation(950, 6, 36, 4)
		FixSpriteToScreen (950, 1)
		SetSpriteDepth (950, 1)
		PlaySprite ( 950, 2, 0 )
		alert = 1
	endif
	
	if GetSpriteCurrentFrame ( 950 ) = 1 and alert = 1
		PlaySound (26)
		alert = 2
	elseif GetSpriteCurrentFrame (950) = 3 and alert = 2
		PlaySound (26)
		alert = 3
	endif
	
	if alert = 3 and GetSpritePlaying (950) = 0
		DeleteSprite (950)
		alert = 4
	endif

endfunction

function enemyHandler()
	
	if GetSpriteX(250) =< GetSpriteX(600) + 20 and enemyTrue = 1
		dmgtween = CreateTweenText ( 0.5 )
		SetTweenTextAlpha ( dmgtween, 255, 0, TweenLinear() )
		fightBoolean = 1
	endif
	
	if fightBoolean = 1 and barup = 0
		enemybarup()
	endif
	
	if fightBoolean = 0 and barup = 1 and Timer() > 0.25
		enemybardown()
	endif
	
	/*if fightBoolean = 1 and timecheck = 0
		ResetTimer()
		wait = Timer()
		timecheck = 1
	endif*/
	
	if fightBoolean = 1 and enemyloccheck = 0
		enemyx = GetSpriteX(250)
		enemyloccheck = 1
	endif
	
	if bosstrue = 0 and turn = 0 and timeset = 0
		atktime = 0.9
		timeset = 1
	elseif bosstrue = 1 and turn = 0 and timeset = 0
		patterndef()
		timeset = 1
	endif
	
	if fightBoolean = 1 and death = 0
		enemyAttack()
	endif
	
	if fightBoolean = 1 and enemytrue = 1 and enemyhp =< 0
		PlayTweenSprite ( genericfade, 250, 0 )
		if bosstrue = 0
			enemycount = enemycount - 1
			if totalkills < 10000000
				totalkills = totalkills + 1
			endif
			if GetGameCenterLoggedIn() = 1 and totalkills < 2501
				achievementhandler()
			endif
		elseif bosstrue = 1
			bosstrue = 2
		endif
		cur_exp = cur_exp + enemyexp
		goldget = Ceil(enemygold * pgoldfind)
		if gold + goldget < 99999999
			gold = gold + goldget
		endif
		if gold > 99999999
			gold = 99999999
		endif
		totalgold = totalgold + goldget
		if GetGameCenterLoggedIn() = 1 and totalgold < 1000001
			achievementhandler()
		endif
		PlaySound (11)
		PlaySound (12)
		
		expgoldtext()
		
		if bosstrue = 0
			lootcheck = Random(0,100) + pmagicfind
		elseif bosstrue = 2
			lootcheck = 100
			orbcheck = -1
			if emode_active = 0 and stage = 1
				orbcheck = 8
				if emode_enable = 0
					orbcheck = 100
				endif
			elseif emode_active = 0 and stage = 2
				orbcheck = 16
			elseif emode_active = 0 and stage = 3
				orbcheck = 25
			elseif emode_active = 0 and stage = 4
				orbcheck = 32
			elseif emode_active = 0 and stage = 5
				orbcheck = 40
			elseif emode_active = 0 and stage = 6
				orbcheck = 50
			elseif emode_active = 0 and stage = 7
				orbcheck = 56
			elseif emode_active = 0 and stage = 8
				orbcheck = 64
			elseif emode_active = 0 and stage = 9
				orbcheck = 75
			elseif emode_active = 0 and stage = 10
				orbcheck = 80
			elseif emode_active = 0 and stage = 11
				orbcheck = 88
			elseif emode_active = 0 and stage = 12
				orbcheck = 100
			endif
		endif		
		
		turn = 0
		timecheck = 0
		enemyloccheck = 0
		fightBoolean = 0
		SetSpriteFrame(204, 1)
		enemytrue = 0		
		timeset = 0
		ResetTimer()
		save()
	endif
		
	if GetTweenSpritePlaying ( genericfade, 214 ) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
	if GetTweenSpritePlaying ( genericfade, 250 ) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
	if GetSpriteColorAlpha ( 250 ) = 0
		DeleteSprite(250)
	endif
	
	if GetSpriteColorAlpha ( 250 ) = 0 and lootcheck > 97.5 and lootexist = 0 and enemyCount => 0
		if bosstrue = 0
			lootexist = 1
			chest()
		elseif bosstrue = 2
			lootexist = 1
			chest()
			bosstrue = 3
		endif
	endif
	
	if chestexist = 1 and levelup = 0
		PlaySound(21)
		PlaySprite ( 214, 8, 0 )
		PlaySprite ( 2000, 8, 0 )
		lootdrop()
		chestexist = 2
	endif
	
	if chestexist = 2 and GetSpritePlaying (214) = 0
		lootgaintext()
		PlayTweenSprite ( genericfade, 214, 0 )
		PlayTweenSprite ( genericfade, 2000, 0)
		chestexist = 3
	endif
	
	if GetSpriteColorAlpha (214) = 0 and chestexist = 3
		DeleteSprite ( 214 )
		DeleteSprite ( 2000 )
		save()
		lootexist = 0
		chestexist = 0
	endif

endfunction

function color()
	
	if GetSpriteColorBlue (600) < 255 and GetSpriteColorGreen (600) < 255 and GetSpriteColorRed ( 600 ) = 255
		SetSpriteColorBlue ( 600, GetSpriteColorBlue(600) + 3 )
		SetSpriteColorGreen ( 600, GetSpriteColorGreen(600) + 3 )
	elseif GetSpriteColorRed ( 600 ) < 255 and GetSpriteColorGreen (600) < 255 and GetSpriteColorBlue ( 600 ) = 255
		SetSpriteColorRed ( 600, GetSpriteColorRed(600) + 3 )
		SetSpriteColorGreen ( 600, GetSpriteColorGreen(600) + 3 )
	endif
	
	if GetSpriteColorBlue (250) < 255 and GetSpriteColorGreen (250) < 255 and GetSpriteColorRed ( 250 ) = 255
		SetSpriteColorBlue ( 250, GetSpriteColorBlue(250) + 3 )
		SetSpriteColorGreen ( 250, GetSpriteColorGreen(250) + 3 )
	endif
	
	if GetSpriteColorGreen (600) > 255
		SetSpriteColorBlue (600, 255)
		SetSpriteColorRed (600, 255)
		SetSpriteColorGreen (600, 255)
	endif
	
	if GetSpriteColorGreen (250) > 255
		SetSpriteColorBlue (250, 255)
		SetSpriteColorRed (250, 255)
		SetSpriteColorGreen (250, 255)
	endif
	
endfunction

function playertexttweens()
	
	if GetTextExists (18) = 1 and gaintext = 1
		PlayTweenText (genericfadet, 18, 1)
		gaintext = 2
	endif
	
	if gaintext = 2
		UpdateAllTweens (GetFrameTime())
	endif
	
	if GetTweenTextPlaying (genericfadet, 18)
		SetTextY (18, GetTextY(18) - 0.1 )
	endif
	
	if GetTextColorAlpha (18) = 0 and gaintext = 2
		gaintext = 0
		DeleteText (18)
	endif
	
	if GetTextExists (19) = 1 and dmgtaken = 1 and flag = 0
		PlayTweenText (genericfadet, 19, 1)
		dmgtaken = 2
	endif
	
	if dmgtaken = 2
		UpdateAllTweens (GetFrameTime())
	endif
	
	if GetTweenTextPlaying (genericfadet, 19)
		SetTextY (19, GetTextY(19) - 0.1 )
	endif
	
	if GetTextColorAlpha (19) = 0 and dmgtaken = 2
		dmgtaken = 0
		DeleteText (19)
	endif
	
	if GetTextExists (20) = 1 and loottext = 1
		PlayTweenText (genericfadet, 20, 1)
		loottext = 2
	endif
	
	if loottext = 2
		UpdateAllTweens (GetFrameTime())
	endif
	
	if GetTweenTextPlaying (genericfadet, 20)
		SetTextY (20, GetTextY(20) - 0.1 )
	endif
	
	if GetTextColorAlpha (20) = 0 and loottext = 2
		loottext = 0
		DeleteText (20)
	endif
	
endfunction

function expgoldtext()
	if gaintext = 0
		CreateText (18, "+" + str(enemyexp) + "EXP!" + chr(10) + "+" + str(goldget,0) + "GOLD!")
		SetTextFontImage (18, 4)
		SetTextSize (18, 3)
		SetTextAlignment (18, 0)
		SetTextPosition (18, GetSpriteX(600) + 12, 12 )
		SetTextDepth (18, 0 )
		gaintext = 1
	endif
endfunction

function lootgaintext()
	if loottext = 0
		if orbexist = 0 and roll_orb_type = 0
			CreateText (20, "FOUND " + inventoryArray[max_inv_space].name + "!")
		elseif orbexist = 1 and roll_orb_type = 1
			CreateText (20, "FOUND " + inventoryArray[max_inv_space].name + "!" + chr(10) + " AND CHAOS ORB X1")
		elseif orbexist = 1 and roll_orb_type = 2
			CreateText (20, "FOUND " + inventoryArray[max_inv_space].name + "!" + chr(10) + " AND WARP ORB X1")
		elseif orbexist = 1 and roll_orb_type = 3
			CreateText (20, "FOUND " + inventoryArray[max_inv_space].name + "!" + chr(10) + " AND MAGIC ORB X1")
		elseif orbexist = 1 and roll_orb_type = 4
			CreateText (20, "FOUND " + inventoryArray[max_inv_space].name + "!" + chr(10) + " AND POWER ORB X1")
		endif
		roll_orb_type = 0
		orbexist = 0
		SetTextFontImage (20, 2)
		SetTextSize (20, 2)
		SetTextAlignment (20, 0)
		SetTextPosition (20, 2.5, 15 )
		SetTextDepth (20, 0 )
		loottext = 1
	endif
endfunction

function enemybarup()
	
	bartween = CreateTweenSprite ( 0.25 )
	SetTweenSpriteY ( bartween, -6.4, 0, TweenEaseIn1() )
	piptween = CreateTweenSprite ( 0.25 )
	SetTweenSpriteY ( piptween, -5.5, 0.95, TweenEaseIn1() )
	enemynametween = CreateTweenText ( 0.25 )
	SetTweenTextY ( enemynametween, -5, 1.45, TweenEaseIn1() )
	
	if barup = 0
		CreateSprite ( 220, 213 )
		SetSpriteSize (220, 100, 6.1)
		SetSpritePosition (220, 0, -6.4)
		FixSpriteToScreen (220, 1)
		SetSpriteDepth (220, 2)
		
		CreateSprite (221, 208)
		SetSpriteSize (221, 78.4, 2.35)
		SetSpritePosition (221, 10.8, -5.5)
		FixSpriteToScreen (221, 1)
		SetSpriteDepth (221, 1)
		
		CreateText ( 222, "" )
		SetTextSize ( 222, 1.35 )
		SetTextColor ( 222, 0, 0, 0, 255)
		SetTextPosition ( 222, 50, -5 )
		SetTextAlignment (222, 1 )
		FixTextToScreen ( 222, 1 )
		SetTextDepth ( 222, 1 )
		
		mobnamer()
		
		PlayTweenSprite (bartween, 220, 0)
		PlayTweenSprite (piptween, 221, 0)
		PlayTweenText (enemynametween, 222, 0)
		barup = 1
	endif
	
	if GetSpriteY (220) = 0
		DeleteTween (bartween)
		DeleteTween (piptween)
	endif
	
	if GetTweenSpritePlaying ( bartween, 220 ) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
endfunction

function enemybardown()
	
	bartween2 = CreateTweenSprite ( 0.25 )
	SetTweenSpriteY ( bartween2, 0, -6.4, TweenEaseOut1() )
	piptween2 = CreateTweenSprite ( 0.25 )
	SetTweenSpriteY ( piptween2, 0.95, -5.5, TweenEaseOut1() )
	enemynametween2 = CreateTweenText ( 0.25 )
	SetTweenTextY ( enemynametween2, 1.45, -5, TweenEaseOut1() )
	
	if GetSpriteY (220) > -6.4
		PlayTweenSprite (bartween2, 220, 0)
		PlayTweenSprite (piptween2, 221, 0)
		PlayTweenText (enemynametween2, 222, 0)
	endif
	
	if GetTweenSpritePlaying ( bartween2, 220 ) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
	if GetTweenSpritePlaying ( bartween2, 220 ) = 0
		DeleteSprite(220)
		DeleteTween ( bartween2 )
		DeleteTween ( piptween2 )
		DeleteText (222)
		barup = 0
	endif
	
endfunction

function mobnamer()
	
	select curmob
		case 250
			SetTextString (222, "PLAINS SLIME")
		endcase
		case 251
			SetTextString (222, "BEAR")
		endcase
		case 252
			SetTextString (222, "WOLF")
		endcase
		case 253
			SetTextString (222, "MUD CRAB")
		endcase
		case 254
			SetTextString (222, "FOREST GHOUL")
		endcase
		case 255
			SetTextString (222, "CURSED ENT")
		endcase
		case 256
			SetTextString (222, "BAT")
		endcase
		case 257
			SetTextString (222, "SKELETON")
		endcase
		case 258
			SetTextString (222, "SPIDERLING")
		endcase
		case 259
			SetTextString (222, "RAT")
		endcase
		case 260
			SetTextString (222, "WASTELAND SLIME")
		endcase
		case 261
			SetTextString (222, "TOXIC SHROOM")
		endcase
		case 262
			SetTextString (222, "UNDEAD FOOTMAN")
		endcase
		case 263
			SetTextString (222, "GOLEM")
		endcase
		case 264
			SetTextString (222, "SERPENT SOLDIER")
		endcase
		case 265
			SetTextString (222, "SKELETON SORCERER")
		endcase
		case 266
			SetTextString (222, "SPRITE")
		endcase
		case 267
			SetTextString (222, "CURSED SAGE")
		endcase
		case 268
			SetTextString (222, "ICE SLIME")
		endcase
		case 269
			SetTextString (222, "SNOW WOLF")
		endcase
		case 270
			SetTextString (222, "WISP")
		endcase
		case 271
			SetTextString (222, "GOBLIN FIGHTER")
		endcase
		case 272
			SetTextString (222, "HARPY")
		endcase
		case 273
			SetTextString (222, "SCORPION")
		endcase
		case 274
			SetTextString (222, "ICE GOLEM")
		endcase
		case 275
			SetTextString (222, "CURSED SOLDIER")
		endcase
		case 276
			SetTextString (222, "DOOMED KNIGHT")
		endcase
		case 277
			SetTextString (222, "ROCKWORM")
		endcase
		case 278
			SetTextString (222, "EARTH ELEMENTAL")
		endcase
		case 279
			SetTextString (222, "GIANT")
		endcase
		case 280
			SetTextString (222, "IMP")
		endcase
		case 281
			SetTextString (222, "FOOTSOLDIER DEMON")
		endcase
		case 282
			SetTextString (222, "REAPER")
		endcase
		case 283
			SetTextString (222, "TWISTED BEING")
		endcase
		case 284
			SetTextString (222, "UNHOLY ENTITY")
		endcase
		case 285
			SetTextString (222, "CORRUPTED ANGEL")
		endcase
		case 286
			SetTextString (222, "MEGASLIME")
		endcase
		case 287
			SetTextString (222, "GREAT ENT")
		endcase
		case 288
			SetTextString (222, "QUEEN SPIDER")
		endcase
		case 289
			SetTextString (222, "RATKING")
		endcase
		case 290
			SetTextString (222, "SERPENT CAPTAIN")
		endcase
		case 291
			SetTextString (222, "GRAND SORCERER")
		endcase
		case 292
			SetTextString (222, "SNOW GIANT")
		endcase
		case 293
			SetTextString (222, "CHIEFTAIN")
		endcase
		case 294
			SetTextString (222, "CORRUPT ICE PRINCESS")
		endcase
		case 295
			SetTextString (222, "OLD GIANT LORD")
		endcase
		case 296
			SetTextString (222, "KING OF DEMONS")
		endcase
		case 297
			SetTextString (222, "EMBODIMENT OF CHAOS")
		endcase
	endselect
	
endfunction

function chest()
	
	orbroll = Random(0,100)
	
	if orbroll <= orbcheck and bosstrue = 2 and emode_active = 0
		if emode_enable < 1
			emode_enable = 1
			//emode_active = 1
		endif
		orbexist = 1
		//if emode_active = 1
			//PlaySprite ( 2000, 8, 0 )
		//endif
	endif
	
	if chestexist = 0 and lootexist = 1
		if bosstrue = 0
			CreateSprite (214, 214)
		elseif bosstrue > 0
			CreateSprite (214, 222)
		endif
		SetSpriteColorAlpha (214, 255)
		SetSpriteSize (214, 16.7, 9.55)
		SetSpritePosition (214, enemyx, 23.4-0.1)
		SetSpriteAnimation(214, 60, 60, 10)
		FixSpriteToScreen (214, 1)
		//PlaySprite ( 214, 8, 0 )
		SetSpriteDepth (214, 7)
		
		if emode_active = 0 and orbexist = 1
			roll_orb_type = 0
			orbrolla = Random(1,100)
			if orbrolla > 0 and orbrolla < 20
				roll_orb_type = 1
			elseif orbrolla => 20 and orbrolla < 60
				roll_orb_type = 2
			elseif orbrolla => 60 and orbrolla < 80
				roll_orb_type = 3
			elseif orbrolla => 80
				roll_orb_type = 4
			endif
			if roll_orb_type = 1
				CreateSprite (2000, 224)
				emode_orbs = emode_orbs + 1
				//roll_orb_type = 0
			elseif roll_orb_type = 2
				CreateSprite (2000, 227)
				w_orbs = w_orbs + 1
				//roll_orb_type = 0
			elseif roll_orb_type = 3
				CreateSprite (2000, 228)
				m_orbs = m_orbs + 1
				//roll_orb_type = 0
			elseif roll_orb_type = 4
				CreateSprite (2000, 229)
				p_orbs = p_orbs + 1
				//roll_orb_type = 0
			endif
			SetSpriteColorAlpha (2000, 255)
			SetSpriteSize (2000, 16.7, 9.55)
			SetSpritePosition (2000, enemyx + 15, 23.4-0.1)
			SetSpriteAnimation(2000, 60, 60, 8)
			FixSpriteToScreen (2000, 1)
			//PlaySprite ( 214, 8, 0 )
			SetSpriteDepth (2000, 7)
			//orbexist = 0
			//emode_orbs = emode_orbs + 1
		endif
		
		chestexist = 1
	endif	
	
endfunction

function lootdrop()
	
	chaos = 0
	chaosroll = 0
	
	max_inv_space = max_inv_space + 1
	inventoryArray.length = max_inv_space
	
	if emode_active = 1
		stage = Random(1,beststage)
	endif
	
	if stage = 1
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "BRONZE HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3,4)
			inventoryArray[max_inv_space].maxdmg = Random(6,8)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 701
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "BRONZE SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(4,5)
			inventoryArray[max_inv_space].maxdmg = Random(7,9)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 705
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "BRONZE MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3,4)
			inventoryArray[max_inv_space].maxdmg = Random(6,8)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 703
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "BRONZE HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(4,5)
			inventoryArray[max_inv_space].maxdmg = Random(7,10)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 708
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "BRONZE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 3
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 801
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "BRONZE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(6,8)
			inventoryArray[max_inv_space].maxdmg = Random(10,13)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 707
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "BRONZE RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(5,8)
			inventoryArray[max_inv_space].maxdmg = Random(9,12)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 704
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "IRON HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(9,12)
			inventoryArray[max_inv_space].maxdmg = Random(18,24)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 711
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "IRON MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(9,12)
			inventoryArray[max_inv_space].maxdmg = Random(18,24)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 713
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "BRONZE GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(6,9)
			inventoryArray[max_inv_space].maxdmg = Random(10,12)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 710	
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "IRON SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(21,27)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 715
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "BRONZE KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 4
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 802
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "BRONZE GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,16)
			inventoryArray[max_inv_space].maxdmg = Random(17,22)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 709
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "BRONZE GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 6
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 803
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "BRONZE GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(11,14)
			inventoryArray[max_inv_space].maxdmg = Random(15,19)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 702
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
				inventoryArray[max_inv_space].name = "SLIMEPOLE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(21,25)
				inventoryArray[max_inv_space].maxdmg = Random(26,30)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "LUCK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(1,3)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(1,3)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(1,3)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 300*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 500*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 3
				inventoryArray[max_inv_space].spriteid = 761
				
				if l1g = 0 and GetGameCenterLoggedIn() = 1
					l1g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			elseif chaos = 1
				
				//chaos lance
				
				inventoryArray[max_inv_space].name = "CHAOS LANCE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2400,2600)
				inventoryArray[max_inv_space].maxdmg = Random(2700,2900)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "LUCK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 65000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 85000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 774
				
				if c1g = 0 and GetGameCenterLoggedIn() = 1
					c1g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
		endif
	elseif stage = 2
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "BRONZE SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(4,5)
			inventoryArray[max_inv_space].maxdmg = Random(7,9)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 30*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 50*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 705
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "BRONZE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(6,8)
			inventoryArray[max_inv_space].maxdmg = Random(10,13)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 707
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "BRONZE KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 4
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 802
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "IRON HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(9,12)
			inventoryArray[max_inv_space].maxdmg = Random(18,24)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 711
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "IRON SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(21,27)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 715
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "IRON MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(9,12)
			inventoryArray[max_inv_space].maxdmg = Random(18,24)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 713
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "IRON SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 6
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 804
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "BRONZE RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(5,8)
			inventoryArray[max_inv_space].maxdmg = Random(9,12)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 704
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "BRONZE GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 6
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 803
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "IRON RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(15,24)
			inventoryArray[max_inv_space].maxdmg = Random(27,36)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 714
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "IRON GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,27)
			inventoryArray[max_inv_space].maxdmg = Random(30,36)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 720
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "IRON KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 8
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 805
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "BRONZE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(16,21)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 706
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "IRON GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,45)
			inventoryArray[max_inv_space].maxdmg = Random(48,63)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 716
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "IRON HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,24)
			inventoryArray[max_inv_space].maxdmg = Random(30,39)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 717
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "NATURE'S BULWARK"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 10
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = "DEFENCE"
			inventoryArray[max_inv_space].prop1val = Random(2,3)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,3)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(2,3)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 450*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 600*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 819
			
			if l10g = 0 and GetGameCenterLoggedIn() = 1
				l10g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos blade
				
				inventoryArray[max_inv_space].name = "CHAOS BLADE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2900,3100)
				inventoryArray[max_inv_space].maxdmg = Random(3800,4200)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 70000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 90000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 770
				
				if c2g = 0 and GetGameCenterLoggedIn() = 1
					c2g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 3
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "BRONZE RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(5,8)
			inventoryArray[max_inv_space].maxdmg = Random(9,12)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 704
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "BRONZE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(6,8)
			inventoryArray[max_inv_space].maxdmg = Random(10,13)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 707
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "BRONZE GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(6,9)
			inventoryArray[max_inv_space].maxdmg = Random(10,12)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 50*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 710
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "IRON RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(15,24)
			inventoryArray[max_inv_space].maxdmg = Random(27,36)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 714
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "IRON SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(21,27)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 715
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "IRON HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(21,30)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 718
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "IRON KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 8
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 805
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "BRONZE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(16,21)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 706
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "BRONZE GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,16)
			inventoryArray[max_inv_space].maxdmg = Random(17,22)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(1,2)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 100*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 709
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "IRON HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,24)
			inventoryArray[max_inv_space].maxdmg = Random(30,39)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 717
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "IRON GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,27)
			inventoryArray[max_inv_space].maxdmg = Random(30,36)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 720
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "IRON GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,48)
			inventoryArray[max_inv_space].maxdmg = Random(51,66)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 719
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "IRON GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,45)
			inventoryArray[max_inv_space].maxdmg = Random(48,63)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 716
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "IRON GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,48)
			inventoryArray[max_inv_space].maxdmg = Random(51,66)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 719
		elseif itemcheck => 96 and itemcheck =< 98
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "COBWEB SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 16
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 1500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1700*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 820
			
			if l11g = 0 and GetGameCenterLoggedIn() = 1
				l11g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos blade
				
				inventoryArray[max_inv_space].name = "CHAOS BLADE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2900,3100)
				inventoryArray[max_inv_space].maxdmg = Random(3800,4200)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 70000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 90000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 770
				
				if c2g = 0 and GetGameCenterLoggedIn() = 1
					c2g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "WEAVER BLADE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(45,60)
			inventoryArray[max_inv_space].maxdmg = Random(75,80)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "AGILITY"
			inventoryArray[max_inv_space].prop1val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(3,4)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 1500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1700*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 762
			
			if l2g = 0 and GetGameCenterLoggedIn() = 1
				l2g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos cleaver
				
				inventoryArray[max_inv_space].name = "CHAOS CLEAVER"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(4100,4800)
				inventoryArray[max_inv_space].maxdmg = Random(6100,6600)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "DEFENCE"
				inventoryArray[max_inv_space].prop1val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 80000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 100000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 778
				
				if c3g = 0 and GetGameCenterLoggedIn() = 1
					c3g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 4
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "IRON HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,24)
			inventoryArray[max_inv_space].maxdmg = Random(30,39)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 717
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "IRON HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(12,15)
			inventoryArray[max_inv_space].maxdmg = Random(21,30)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 718
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "IRON GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(18,27)
			inventoryArray[max_inv_space].maxdmg = Random(30,36)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 150*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 240*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 720
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "IRON SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 6
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 90*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 150*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 804
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "MITHRIL HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(30,40)
			inventoryArray[max_inv_space].maxdmg = Random(60,80)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 721
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "MITHRIL SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 14
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 807
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "MITHRIL MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(30,40)
			inventoryArray[max_inv_space].maxdmg = Random(60,80)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 723
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "IRON GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,48)
			inventoryArray[max_inv_space].maxdmg = Random(51,66)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 719
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "MITHRIL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(50,80)
			inventoryArray[max_inv_space].maxdmg = Random(90,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 724
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "MITHRIL SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(40,50)
			inventoryArray[max_inv_space].maxdmg = Random(70,90)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 725
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "MITHRIL HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(40,50)
			inventoryArray[max_inv_space].maxdmg = Random(70,100)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 728
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "MITHRIL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,90)
			inventoryArray[max_inv_space].maxdmg = Random(100,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 730
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "MITHRIL GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(110,140)
			inventoryArray[max_inv_space].maxdmg = Random(150,190)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 722
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "MITHRIL GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(120,150)
			inventoryArray[max_inv_space].maxdmg = Random(160,210)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 726
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "MITHRIL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 20
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 809
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "BUBONIC WARD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 25
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(4,5)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,5)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(4,5)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 3500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 821
			
			if l12g = 0 and GetGameCenterLoggedIn() = 1
				l12g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos cleaver
				
				inventoryArray[max_inv_space].name = "CHAOS CLEAVER"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(4100,4800)
				inventoryArray[max_inv_space].maxdmg = Random(6100,6600)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "DEFENCE"
				inventoryArray[max_inv_space].prop1val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 80000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 100000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 778
				
				if c3g = 0 and GetGameCenterLoggedIn() = 1
					c3g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 5
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "IRON GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,48)
			inventoryArray[max_inv_space].maxdmg = Random(51,66)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 719
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "IRON GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 11
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 806
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "MITHRIL HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(30,40)
			inventoryArray[max_inv_space].maxdmg = Random(60,80)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 721
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "MITHRIL SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(40,50)
			inventoryArray[max_inv_space].maxdmg = Random(70,90)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 725
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "MITHRIL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,80)
			inventoryArray[max_inv_space].maxdmg = Random(100,130)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 727
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "MITHRIL HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(40,50)
			inventoryArray[max_inv_space].maxdmg = Random(70,100)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 728
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "MITHRIL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,90)
			inventoryArray[max_inv_space].maxdmg = Random(100,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 730
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "MITHRIL GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(110,140)
			inventoryArray[max_inv_space].maxdmg = Random(150,190)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 722
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "MITHRIL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(50,80)
			inventoryArray[max_inv_space].maxdmg = Random(90,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 724
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "MITHRIL GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(120,150)
			inventoryArray[max_inv_space].maxdmg = Random(160,210)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 726
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "IRON GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(36,45)
			inventoryArray[max_inv_space].maxdmg = Random(48,63)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(2,4)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 450*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 716
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "MITHRIL KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 18
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 808
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "MITHRIL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(120,160)
			inventoryArray[max_inv_space].maxdmg = Random(170,220)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 729
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "MITHRIL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 20
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 809
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "ADAMANTINE SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,297)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 735
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "SERPENTINE REAVER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(140,160)
			inventoryArray[max_inv_space].maxdmg = Random(180,260)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(5,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(5,6)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(5,6)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 4000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 763
			
			if l3g = 0 and GetGameCenterLoggedIn() = 1
				l3g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos lance
				
				inventoryArray[max_inv_space].name = "CHAOS LANCE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2400,2600)
				inventoryArray[max_inv_space].maxdmg = Random(2700,2900)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "LUCK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 65000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 85000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 774
				
				if c1g = 0 and GetGameCenterLoggedIn() = 1
					c1g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 6
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "MITHRIL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(50,80)
			inventoryArray[max_inv_space].maxdmg = Random(90,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 724
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "MITHRIL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,80)
			inventoryArray[max_inv_space].maxdmg = Random(100,130)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 727
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "MITHRIL HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(40,50)
			inventoryArray[max_inv_space].maxdmg = Random(70,100)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 728
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "MITHRIL KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 18
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 808
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "ADAMANTINE HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(99,132)
			inventoryArray[max_inv_space].maxdmg = Random(198,264)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 731
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "ADAMANTINE SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,297)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 735
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "ADAMANTINE MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(99,132)
			inventoryArray[max_inv_space].maxdmg = Random(198,264)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 733
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "MITHRIL GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(110,140)
			inventoryArray[max_inv_space].maxdmg = Random(150,190)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 722
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "MITHRIL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(120,160)
			inventoryArray[max_inv_space].maxdmg = Random(170,220)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 729
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "MITHRIL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 20
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 809
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "ADAMANTINE RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(165,264)
			inventoryArray[max_inv_space].maxdmg = Random(297,396)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 734
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "ADAMANTINE KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 37
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 811
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(363,462)
			inventoryArray[max_inv_space].maxdmg = Random(495,627)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 732
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,528)
			inventoryArray[max_inv_space].maxdmg = Random(561,726)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 739
		elseif itemcheck => 96 and itemcheck =< 98
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "SORCERER'S SCEPTRE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(440,520)
			inventoryArray[max_inv_space].maxdmg = Random(540,700)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 7500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 13000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 764
			
			if l4g = 0 and GetGameCenterLoggedIn() = 1
				l4g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos blade
				
				inventoryArray[max_inv_space].name = "CHAOS BLADE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2900,3100)
				inventoryArray[max_inv_space].maxdmg = Random(3800,4200)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(12,16)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 70000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 90000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 770
				
				if c2g = 0 and GetGameCenterLoggedIn() = 1
					c2g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "SOOTHSAYER'S SIGIL"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 43
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,7)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 7500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 13000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 822
			
			if l13g = 0 and GetGameCenterLoggedIn() = 1
				l13g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos lance
				
				inventoryArray[max_inv_space].name = "CHAOS LANCE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(2400,2600)
				inventoryArray[max_inv_space].maxdmg = Random(2700,2900)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "LUCK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(11,15)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 65000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 85000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 774
				
				if c1g = 0 and GetGameCenterLoggedIn() = 1
					c1g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 7
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "MITHRIL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(50,80)
			inventoryArray[max_inv_space].maxdmg = Random(90,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 724
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "MITHRIL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,80)
			inventoryArray[max_inv_space].maxdmg = Random(100,130)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 727
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "MITHRIL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(60,90)
			inventoryArray[max_inv_space].maxdmg = Random(100,120)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 500*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 800*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 730
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "ADAMANTINE HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(99,132)
			inventoryArray[max_inv_space].maxdmg = Random(198,264)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 731
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "ADAMANTINE RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(165,264)
			inventoryArray[max_inv_space].maxdmg = Random(297,396)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 734
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "ADAMANTINE MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(99,132)
			inventoryArray[max_inv_space].maxdmg = Random(198,264)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 733
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "ADAMANTINE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 35
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 810
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "MITHRIL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(120,160)
			inventoryArray[max_inv_space].maxdmg = Random(170,220)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 729
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "ADAMANTINE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(198,264)
			inventoryArray[max_inv_space].maxdmg = Random(330,429)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 737
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "ADAMANTINE HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,330)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 738
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,528)
			inventoryArray[max_inv_space].maxdmg = Random(561,726)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 739
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "ADAMANTINE KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 37
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 811
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(363,462)
			inventoryArray[max_inv_space].maxdmg = Random(495,627)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 732
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,495)
			inventoryArray[max_inv_space].maxdmg = Random(528,693)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 736
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 40
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 812
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "GLACIAL AEGIS"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 55
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = "DEFENCE"
			inventoryArray[max_inv_space].prop1val = Random(6,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,8)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,8)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 8000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 14000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 823
			
			if l14g = 0 and GetGameCenterLoggedIn() = 1
				l14g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos cleaver
				
				inventoryArray[max_inv_space].name = "CHAOS CLEAVER"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(4100,4800)
				inventoryArray[max_inv_space].maxdmg = Random(6100,6600)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "DEFENCE"
				inventoryArray[max_inv_space].prop1val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(13,17)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 80000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 100000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 778
				
				if c3g = 0 and GetGameCenterLoggedIn() = 1
					c3g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 8
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "MITHRIL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 20
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(3,6)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1500*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 809
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "ADAMANTINE SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,297)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 735
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "ADAMANTINE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(198,264)
			inventoryArray[max_inv_space].maxdmg = Random(330,429)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 737
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "ADAMANTINE HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,330)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 738
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "ADAMANTINE GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(198,297)
			inventoryArray[max_inv_space].maxdmg = Random(330,396)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 740
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "ADAMANTINE KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 37
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 811
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "CRYSTAL HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(300,400)
			inventoryArray[max_inv_space].maxdmg = Random(600,800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 741
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,495)
			inventoryArray[max_inv_space].maxdmg = Random(528,693)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 736
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "CRYSTAL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(500,800)
			inventoryArray[max_inv_space].maxdmg = Random(900,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 744
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "CRYSTAL SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(400,500)
			inventoryArray[max_inv_space].maxdmg = Random(700,900)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 745
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "CRYSTAL MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(300,400)
			inventoryArray[max_inv_space].maxdmg = Random(600,800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 743
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "CRYSTAL HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(400,500)
			inventoryArray[max_inv_space].maxdmg = Random(700,1000)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 748
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "CRYSTAL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,800)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1300)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 747
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "CRYSTAL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,900)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 750
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "CRYSTAL KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 95
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 814
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "WAR-TORN RAID SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(700,950)
			inventoryArray[max_inv_space].maxdmg = Random(1150,1350)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = "ATTACK"
			inventoryArray[max_inv_space].prop1val = Random(6,9)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,9)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,9)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 18000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 765
			
			if l5g = 0 and GetGameCenterLoggedIn() = 1
				l5g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos scythe
				
				inventoryArray[max_inv_space].name = "CHAOS SCYTHE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(6100,6600)
				inventoryArray[max_inv_space].maxdmg = Random(7600,8300)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "AGILITY"
				inventoryArray[max_inv_space].prop1val = Random(14,18)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(14,18)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(14,18)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 90000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 110000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 771
				
				if c4g = 0 and GetGameCenterLoggedIn() = 1
					c4g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 9
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "ADAMANTINE HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(99,132)
			inventoryArray[max_inv_space].maxdmg = Random(198,264)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 731
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "ADAMANTINE HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(198,264)
			inventoryArray[max_inv_space].maxdmg = Random(330,429)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 1650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 2640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 737
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "ADAMANTINE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 35
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 810
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "CRYSTAL SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(400,500)
			inventoryArray[max_inv_space].maxdmg = Random(700,900)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 745
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "CRYSTAL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,900)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 750
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "CRYSTAL MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(300,400)
			inventoryArray[max_inv_space].maxdmg = Random(600,800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 743
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "CRYSTAL HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(400,500)
			inventoryArray[max_inv_space].maxdmg = Random(700,1000)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 748
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,495)
			inventoryArray[max_inv_space].maxdmg = Random(528,693)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 736
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 40
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 812
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "CRYSTAL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(500,800)
			inventoryArray[max_inv_space].maxdmg = Random(900,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 744
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "CRYSTAL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,800)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1300)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 747
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "CRYSTAL SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 92
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 813
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "CRYSTAL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1200,1600)
			inventoryArray[max_inv_space].maxdmg = Random(1700,2200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 749
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "CRYSTAL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 100
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 815
		elseif itemcheck => 96 and itemcheck =< 98
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "ESCUTCHEON"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 130
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 18000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 30000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 824
			
			if l15g = 0 and GetGameCenterLoggedIn() = 1
				l15g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos staff
				
				inventoryArray[max_inv_space].name = "CHAOS STAFF"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(5600,6100)
				inventoryArray[max_inv_space].maxdmg = Random(7100,7800)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "LUCK"
				inventoryArray[max_inv_space].prop2 = "LUCK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 100000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 100000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 775
				
				if c6g = 0 and GetGameCenterLoggedIn() = 1
					c6g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "ROYAL CLAYMORE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1350,1750)
			inventoryArray[max_inv_space].maxdmg = Random(1950,2450)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "AGILITY"
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 18000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 30000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 766
			
			if l6g = 0 and GetGameCenterLoggedIn() = 1
				l6g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos shotel
				
				inventoryArray[max_inv_space].name = "CHAOS SHOTEL"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(5600,6100)
				inventoryArray[max_inv_space].maxdmg = Random(7100,7800)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "AGILITY"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(15,19)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 100000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 120000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 776
				
				if c5g = 0 and GetGameCenterLoggedIn() = 1
					c5g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 10
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(396,495)
			inventoryArray[max_inv_space].maxdmg = Random(528,693)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 736
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "ADAMANTINE HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(132,165)
			inventoryArray[max_inv_space].maxdmg = Random(231,330)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 1650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 738
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "ADAMANTINE GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 40
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(4,8)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 4950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 812
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "CRYSTAL SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(400,500)
			inventoryArray[max_inv_space].maxdmg = Random(700,900)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 745
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "CRYSTAL HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,800)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1300)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 747
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "CRYSTAL SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 92
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 813
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "CRYSTAL KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 95
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 814
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "CRYSTAL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(500,800)
			inventoryArray[max_inv_space].maxdmg = Random(900,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 744
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "CRYSTAL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1200,1600)
			inventoryArray[max_inv_space].maxdmg = Random(1700,2200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 749
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "CRYSTAL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 100
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 815
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "OBSIDIAN HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(999,1332)
			inventoryArray[max_inv_space].maxdmg = Random(1998,2664)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 751
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "OBSIDIAN SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 160
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 816
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "CRYSTAL GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1100,1400)
			inventoryArray[max_inv_space].maxdmg = Random(1500,1900)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 742
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "CRYSTAL GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1200,1500)
			inventoryArray[max_inv_space].maxdmg = Random(1600,2100)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 746
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "OBSIDIAN HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1998,2664)
			inventoryArray[max_inv_space].maxdmg = Random(3330,4329)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 757
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "AXE OF THE ANCIENTS"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(2200,2900)
			inventoryArray[max_inv_space].maxdmg = Random(3450,4700)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = "AGILITY"
			inventoryArray[max_inv_space].prop1val = Random(7,11)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(7,11)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(7,11)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 25000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 48000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 767
			
			if l7g = 0 and GetGameCenterLoggedIn() = 1
				l7g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos battleaxe
				
				inventoryArray[max_inv_space].name = "CHAOS BATTLEAXE"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(6600,7100)
				inventoryArray[max_inv_space].maxdmg = Random(8100,8800)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "ATTACK"
				inventoryArray[max_inv_space].prop3 = "LUCK"
				inventoryArray[max_inv_space].prop1val = Random(16,20)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(16,20)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(16,20)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 110000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 130000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 773
				
				if c7g = 0 and GetGameCenterLoggedIn() = 1
					c7g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 11
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "CRYSTAL HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(300,400)
			inventoryArray[max_inv_space].maxdmg = Random(600,800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 3000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 5000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 741
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "CRYSTAL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(500,800)
			inventoryArray[max_inv_space].maxdmg = Random(900,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 744
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "CRYSTAL GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1200,1600)
			inventoryArray[max_inv_space].maxdmg = Random(1700,2200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 749
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "CRYSTAL GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 100
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 815
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "OBSIDIAN HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(999,1332)
			inventoryArray[max_inv_space].maxdmg = Random(1998,2664)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 751
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "OBSIDIAN HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1332,1665)
			inventoryArray[max_inv_space].maxdmg = Random(2331,3330)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 758
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "OBSIDIAN SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 160
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 816
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "CRYSTAL GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1100,1400)
			inventoryArray[max_inv_space].maxdmg = Random(1500,1900)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 742
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "CRYSTAL GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1200,1500)
			inventoryArray[max_inv_space].maxdmg = Random(1600,2100)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 10000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 15000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 746
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "CRYSTAL GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(600,900)
			inventoryArray[max_inv_space].maxdmg = Random(1000,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 750
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "OBSIDIAN HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1998,2664)
			inventoryArray[max_inv_space].maxdmg = Random(3330,4329)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 757
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "OBSIDIAN KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 180
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 817
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3663,4662)
			inventoryArray[max_inv_space].maxdmg = Random(4995,6327)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 752
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "OBSIDIAN RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1665,2664)
			inventoryArray[max_inv_space].maxdmg = Random(2997,3996)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 754
		elseif itemcheck => 96 and itemcheck =< 98
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 200
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 818
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "INFERNUS"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3800,5000)
			inventoryArray[max_inv_space].maxdmg = Random(5500,6800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 33000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 55000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 768
			
			if l8g = 0 and GetGameCenterLoggedIn() = 1
				l8g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos warhammer
				
				inventoryArray[max_inv_space].name = "CHAOS WARHAMMER"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(8600,9100)
				inventoryArray[max_inv_space].maxdmg = Random(10100,10800)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "ATTACK"
				inventoryArray[max_inv_space].prop3 = "DEFENCE"
				inventoryArray[max_inv_space].prop1val = Random(17,21)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(17,21)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(17,21)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 120000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 140000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 772
				
				if c8g = 0 and GetGameCenterLoggedIn() = 1
					c8g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	elseif stage = 12
		if bosstrue = 0
			itemcheck = Random(0,100)
		elseif bosstrue = 3
			itemcheck = Random(65,100)
		endif
		if itemcheck => 0 and itemcheck =< 10
			inventoryArray[max_inv_space].name = "CRYSTAL RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(500,800)
			inventoryArray[max_inv_space].maxdmg = Random(900,1200)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(6,10)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 5000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 8000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 744
		elseif itemcheck => 11 and itemcheck =< 19
			inventoryArray[max_inv_space].name = "OBSIDIAN KITE SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 180
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 817
		elseif itemcheck => 20 and itemcheck =< 28
			inventoryArray[max_inv_space].name = "OBSIDIAN HANDAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(999,1332)
			inventoryArray[max_inv_space].maxdmg = Random(1998,2664)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 751
		elseif itemcheck => 29 and itemcheck =< 37
			inventoryArray[max_inv_space].name = "OBSIDIAN SWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1332,1665)
			inventoryArray[max_inv_space].maxdmg = Random(2331,2997)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 755
		elseif itemcheck => 38 and itemcheck =< 46
			inventoryArray[max_inv_space].name = "OBSIDIAN MACE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(999,1332)
			inventoryArray[max_inv_space].maxdmg = Random(1998,2664)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 753
		elseif itemcheck => 47 and itemcheck =< 55
			inventoryArray[max_inv_space].name = "OBSIDIAN HAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1332,1665)
			inventoryArray[max_inv_space].maxdmg = Random(2331,3330)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 758
		elseif itemcheck => 56 and itemcheck =< 64
			inventoryArray[max_inv_space].name = "OBSIDIAN SHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 160
			inventoryArray[max_inv_space].prop1 = ""
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = 0
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 0
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 9990*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 16650*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 0
			inventoryArray[max_inv_space].spriteid = 816
		elseif itemcheck => 65 and itemcheck =< 69
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATAXE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3663,4662)
			inventoryArray[max_inv_space].maxdmg = Random(4995,6327)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 752
		elseif itemcheck => 70 and itemcheck =< 74
			inventoryArray[max_inv_space].name = "OBSIDIAN RAPIER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1665,2664)
			inventoryArray[max_inv_space].maxdmg = Random(2997,3996)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "AGILITY"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 754
		elseif itemcheck => 75 and itemcheck =< 79
			inventoryArray[max_inv_space].name = "OBSIDIAN HALBERD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1998,2664)
			inventoryArray[max_inv_space].maxdmg = Random(3330,4329)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 757
		elseif itemcheck => 80 and itemcheck =< 84
			inventoryArray[max_inv_space].name = "OBSIDIAN GLAIVE"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(1998,2997)
			inventoryArray[max_inv_space].maxdmg = Random(3330,3996)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = ""
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = 0
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 0
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 16650*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 26640*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 1
			inventoryArray[max_inv_space].spriteid = 760
		elseif itemcheck => 85 and itemcheck =< 89
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATSHIELD"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 200
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "DEFENCE"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 818
		elseif itemcheck => 90 and itemcheck =< 92
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATSWORD"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3996,4995)
			inventoryArray[max_inv_space].maxdmg = Random(5328,6993)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "LUCK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 756
		elseif itemcheck => 93 and itemcheck =< 95
			inventoryArray[max_inv_space].name = "OBSIDIAN GREATHAMMER"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(3996,5328)
			inventoryArray[max_inv_space].maxdmg = Random(5661,7326)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "ATTACK"
			inventoryArray[max_inv_space].prop3 = ""
			inventoryArray[max_inv_space].prop1val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(8,12)*magicmod
			inventoryArray[max_inv_space].prop3val = 0
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 0
			inventoryArray[max_inv_space].sellval = 33300*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 49950*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 2
			inventoryArray[max_inv_space].spriteid = 759
		elseif itemcheck => 96 and itemcheck =< 98
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "CORRUPTION"
			inventoryArray[max_inv_space].itemtype = 0
			inventoryArray[max_inv_space].mindmg = Random(5000,5500)
			inventoryArray[max_inv_space].maxdmg = Random(6500,7800)
			inventoryArray[max_inv_space].defence = 0
			inventoryArray[max_inv_space].prop1 = "ATTACK"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 60000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 769
			
			if l9g = 0 and GetGameCenterLoggedIn() = 1
				l9g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos ultrasword
				
				inventoryArray[max_inv_space].name = "CHAOS ULTRASWORD"
				inventoryArray[max_inv_space].itemtype = 0
				inventoryArray[max_inv_space].mindmg = Random(9800,10300)
				inventoryArray[max_inv_space].maxdmg = Random(12300,13600)
				inventoryArray[max_inv_space].defence = 0
				inventoryArray[max_inv_space].prop1 = "ATTACK"
				inventoryArray[max_inv_space].prop2 = "ATTACK"
				inventoryArray[max_inv_space].prop3 = "ATTACK"
				inventoryArray[max_inv_space].prop1val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 120000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 150000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 777
				
				if c9g = 0 and GetGameCenterLoggedIn() = 1
					c9g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		elseif itemcheck => 99 and itemcheck =< 100
			if emode_active = 1
				chaosroll = Random(1,100)
				if chaosroll < 40
					chaos = 1
				elseif chaosroll => 40
					chaos = 0
				endif
			endif
			if chaos = 0
			inventoryArray[max_inv_space].name = "DEATH'S SHELTER"
			inventoryArray[max_inv_space].itemtype = 1
			inventoryArray[max_inv_space].mindmg = Random(0,0)
			inventoryArray[max_inv_space].maxdmg = Random(0,0)
			inventoryArray[max_inv_space].defence = 220
			inventoryArray[max_inv_space].prop1 = "DEFENCE"
			inventoryArray[max_inv_space].prop2 = "AGILITY"
			inventoryArray[max_inv_space].prop3 = "LUCK"
			inventoryArray[max_inv_space].prop1val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop2val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop3val = Random(9,13)*magicmod
			inventoryArray[max_inv_space].prop1exist = 1
			inventoryArray[max_inv_space].prop2exist = 1
			inventoryArray[max_inv_space].prop3exist = 1
			inventoryArray[max_inv_space].sellval = 60000*costmod
			inventoryArray[max_inv_space].upgradelvl = 0
			inventoryArray[max_inv_space].upgradecost = 80000*costmod
			inventoryArray[max_inv_space].equipval = 0
			inventoryArray[max_inv_space].rarity = 3
			inventoryArray[max_inv_space].spriteid = 825
			
			if l16g = 0 and GetGameCenterLoggedIn() = 1
				l16g = 1
				GameCenterSubmitAchievement ( "", 100 )
			endif
			
			elseif chaos = 1
				
				//chaos guard
				
				inventoryArray[max_inv_space].name = "CHAOS GUARD"
				inventoryArray[max_inv_space].itemtype = 1
				inventoryArray[max_inv_space].mindmg = Random(0,0)
				inventoryArray[max_inv_space].maxdmg = Random(0,0)
				inventoryArray[max_inv_space].defence = 300
				inventoryArray[max_inv_space].prop1 = "DEFENCE"
				inventoryArray[max_inv_space].prop2 = "DEFENCE"
				inventoryArray[max_inv_space].prop3 = "DEFENCE"
				inventoryArray[max_inv_space].prop1val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop2val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop3val = Random(18,28)*magicmod
				inventoryArray[max_inv_space].prop1exist = 1
				inventoryArray[max_inv_space].prop2exist = 1
				inventoryArray[max_inv_space].prop3exist = 1
				inventoryArray[max_inv_space].sellval = 120000*costmod
				inventoryArray[max_inv_space].upgradelvl = 0
				inventoryArray[max_inv_space].upgradecost = 150000*costmod
				inventoryArray[max_inv_space].equipval = 0
				inventoryArray[max_inv_space].rarity = 4
				inventoryArray[max_inv_space].spriteid = 826
				
				if c10g = 0 and GetGameCenterLoggedIn() = 1
					c10g = 1
					GameCenterSubmitAchievement ( "", 100 )
				endif
			endif
			
		endif
	endif
	
	if emode_active = 1
		stage = 1
	endif
	
endfunction

function patterndef()
	select stage
		case 1
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 2
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 3
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 4
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 5
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 6
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 7
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 8
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 9
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 10
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 11
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
		case 12
			patternset = Random(0,3)
			if patternset = 0
				atktime = 0.6
			elseif patternset = 1
				atktime = 0.9
			elseif patternset = 2
				atktime = 1.2
			elseif patternset = 3
				atktime = 1.75
			endif
		endcase
	endselect
endfunction

function enemyAttack()
	
	if fightBoolean = 1 and timecheck = 0
		ResetTimer()
		wait = Timer()
		timecheck = 1
	endif
	
	if (Timer() - wait) > atktime
		
		dmgdefine()
	
		pdef = (((defence + vdefence)/4) + edef)

		if enemyx =< GetSpriteX(250) and turn = 0
			turn = 1
			timecheck = 0
		elseif enemyx - GetSpriteX(250) > 8 and turn = 1 and activestance = 0
			turn = 0
			enemydmg = enemydefdmg / pdef
			cur_hp = cur_hp - enemydmg
			PlaySound ( 14 )
			//timecheck = 0
			//timeset = 0
			playerHit()
		elseif enemyx - GetSpriteX(250) > 8 and turn = 1 and activestance = 1
			turn = 0
			if cur_energy > 0
				enemydmg = (enemydefdmg / pdef) / stance2mod
			elseif cur_energy =< 0
				enemydmg = (enemydefdmg / pdef)
			endif
			cur_hp = cur_hp - enemydmg
			if cur_energy > 0
				cur_energy = cur_energy - (stance2drain/2)
			endif
			PlaySound ( 14 )
			//timecheck = 0
			//timeset = 0
			playerHit()
		elseif enemyx - GetSpriteX(250) > 8 and turn = 1 and activestance = 2
			turn = 0
			enemydmg = enemydefdmg / pdef
			if enemydmg < 1
				enemydmg = 0
			endif
			cur_hp = cur_hp - enemydmg
			PlaySound ( 14 )
			//timecheck = 0
			//timeset = 0
			playerHit()
		endif
		
		if fightBoolean = 1 and turn = 1 and timecheck = 1
			SetSpriteX ( 250, GetSpriteX(250) - 0.3 )
		elseif fightBoolean = 1 and turn = 0
			SetSpriteX ( 250, GetSpriteX(250) + 0.3 )
		endif
	
	endif

endfunction

function playerHit()
	
	if dmgtaken = 0
		enemydmgdisp = enemydmg
		if enemydmgdisp > 0
			CreateText (19, "-" + str(enemydmgdisp))
		elseif enemydmgdisp =< 0
			CreateText (19, "MISS!")
		endif
		SetTextFontImage (19, 3)
		SetTextSize (19, 3.5)
		SetTextAlignment (19, 0)
		SetTextPosition (19, GetSpriteX(600), 15 )
		SetTextDepth (19, 0 )
		SetSpriteColor (600, 255, 200, 200, 255 )
		if activestance = 1
			SetSpriteColor (600, 200, 200, 255, 255 )
		endif
		timeset = 0
		s2gain = 1
		dmgtaken = 1
	endif
	
endfunction	

function enemyCleanup()
	turn = 0
	timecheck = 0
	enemyloccheck = 0
	fightBoolean = 0
	enemytrue = 0
	bosstrue = 0
	timeset = 0
endfunction

function weaponSwing()
		
	if weaponAngle <= 25
		swingstage = 0
	elseif weaponAngle => 110 and swingstage = 0 and cur_energy > 0
		dmgCalc()
		dmgNumcounter()
		dmgNumber()
	endif
	
	if swingstage = 0
		weaponAngle = weaponAngle + (patkspeed * 2) + 5
		SetSpriteAngle ( 700, weaponAngle )
		SetSpriteAngle ( 799, weaponAngle )
		trailflag = 1
		SetSpriteVisible ( 799, 1 )
	elseif swingstage = 1
		weaponAngle = weaponAngle - (patkspeed * 2) - 5
		SetSpriteAngle ( 700, weaponAngle )
		SetSpriteAngle ( 799, weaponAngle )
		SetSpriteVisible ( 799, 0 )
		trailflag = 2
	endif
	
	trailfunc()
	
	SetSpriteColorAlpha ( 799, Random(120,220) )
	
endfunction

function trailfunc()

	if trailflag = 1
		if trailsize = 0
			PlaySprite (799, 8, 1, 1, 2)
		elseif trailsize = 1
			PlaySprite (799, 8, 1, 5, 6)
		endif
		trailflag = 3
	elseif trailflag = 2
		if trailsize = 0
			PlaySprite (799, 8, 1, 3, 4)
		elseif trailsize = 1
			PlaySprite (799, 8, 1, 7, 8)
		endif
		trailflag = 3
	endif
	
endfunction

function traildef()
	
	trailsize = 0
	
	if wsprite = 709 or wsprite = 710 or wsprite = 719 or wsprite = 720 or wsprite = 729 or wsprite = 730 or wsprite = 739 or wsprite = 740 or wsprite = 749 or wsprite = 750 or wsprite = 759 or wsprite = 760 or wsprite = 761 or wsprite = 762 or wsprite = 763 or wsprite = 764 or wsprite = 765 or wsprite = 767 or wsprite = 768 or wsprite = 769 or wsprite = 770 or wsprite = 771 or wsprite = 772 or wsprite = 773 or wsprite = 775 or wsprite = 776 or wsprite = 777 or wsprite = 778 or wsprite = 779
		trailsize = 1
	endif
	
	if wsprite = 700
		SetSpriteColor ( 799, 255, 255, 255, 150 )
	elseif wsprite > 700 and wsprite <= 710
		SetSpriteColor ( 799, 186, 61, 11, 150 )
	elseif wsprite > 710 and wsprite <= 720
		SetSpriteColor ( 799, 121, 121, 121, 150 )
	elseif wsprite > 720 and wsprite <= 730
		SetSpriteColor ( 799, 0, 160, 219, 150 )
	elseif wsprite > 730 and wsprite <= 740
		SetSpriteColor ( 799, 0, 200, 16, 150 )
	elseif wsprite > 740 and wsprite <= 750
		SetSpriteColor ( 799, 204, 204, 204, 150 )
	elseif wsprite > 750 and wsprite <= 760
		SetSpriteColor ( 799, 75, 75, 75, 150 )
	elseif wsprite = 761
		SetSpriteColor ( 799, 249, 64, 244, 150 )
	elseif wsprite = 762
		SetSpriteColor ( 799, 59, 59, 59, 150 )
	elseif wsprite = 763
		SetSpriteColor ( 799, 240, 221, 90, 150 )
	elseif wsprite = 764
		SetSpriteColor ( 799, 234, 12, 5, 150 )
	elseif wsprite = 765
		SetSpriteColor ( 799, 129, 129, 129, 150 )
	elseif wsprite = 766
		SetSpriteColor ( 799, 0, 255, 204, 150 )
	elseif wsprite = 767
		SetSpriteColor ( 799, 155, 86, 18, 150 )
	elseif wsprite = 768
		SetSpriteColor ( 799, 251, 41, 0, 150 )
	elseif wsprite = 769
		SetSpriteColor ( 799, 255, 19, 19, 150 )
	elseif wsprite > 769 and wsprite < 779
		SetSpriteColor ( 799, 189, 0, 225, 150 )
	endif
	
endfunction

function weaponCleanup()
	if weaponAngle > 25 and cur_energy > 0
		weaponAngle = weaponAngle - (patkspeed * 2) - 5
		SetSpriteAngle ( 700, weaponAngle )
		SetSpriteAngle ( 799, weaponAngle )
	endif
	
	if weaponAngle > 25 and levelcomplete = 1
		weaponAngle = weaponAngle - (patkspeed * 2) - 5
		SetSpriteAngle ( 700, weaponAngle )
		SetSpriteAngle ( 799, weaponAngle )
	endif
	
	if weaponAngle <= 25
		swingstage = 0
	endif

endfunction

function dmgCalc()
	
	pdmg = Random2(emindmg, emaxdmg) + ((Random2(emindmg, emaxdmg) * (attack + vattack))/10)

	critroll = Random(0,100)

	if activestance = 0 and pcc > critroll
		critcheck = 1
		cur_energy = cur_energy - (stance1drain/2)
		dmgNum = ((pdmg * stance1mod) * 2)
		enemyhp = enemyhp - dmgNum
	elseif activestance = 0 and pcc < critroll
		critcheck = 0
		cur_energy = cur_energy - (stance1drain/2)
		dmgNum = (pdmg * stance1mod)
		enemyhp = enemyhp - dmgNum
	elseif activestance = 1 and pcc > critroll
		critcheck = 1
		dmgNum = (pdmg * 2)
		enemyhp = enemyhp - dmgNum
	elseif activestance = 1 and pcc < critroll
		critcheck = 0
		dmgNum = pdmg
		enemyhp = enemyhp - dmgNum
	elseif activestance = 2 and pcc > critroll
		critcheck = 1
		dmgNum = (pdmg * 2)
		enemyhp = enemyhp - dmgNum
	elseif activestance = 2 and pcc < critroll
		critcheck = 0
		dmgNum = pdmg
		enemyhp = enemyhp - dmgNum
	endif
	
	if critcheck = 0
		hitsound = Random(1,3)
		if hitsound = 1
			PlaySound (9)
		elseif hitsound = 2
			PlaySound (28)
		elseif hitsound = 3
			PlaySound (29)
		endif
	elseif critcheck = 1
		PlaySound (10)
	endif
	
endfunction

function dmgNumcounter()
	if swingstage = 0
		hitcount = hitcount + 1
		curdmgnum = 1000 + hitcount
		swingstage = 1
		s1gain = 1
	endif
endfunction

function dmgNumber()
		
	if critcheck = 1
		weaponFx()
		CreateText (curdmgnum, "" )
		SetTextFontImage (curdmgnum, 5)
		SetTextSize ( curdmgnum, 3.75 )
		SetTextAlignment (curdmgnum, 1 )
		if dmgheight = 0
			SetTextPosition (curdmgnum, Random(47.0,50.0), Random(11.0,12.0))
		elseif dmgheight = 1
			SetTextPosition (curdmgnum, Random(47.0,50.0), Random(8.0,10.0))
		elseif dmgheight = 2
			SetTextPosition (curdmgnum, Random(47.0,50.0), Random(17.0,19.0))
		endif
		SetTextDepth (curdmgnum, 4 )
		SetTextString (curdmgnum, "CRIT!" + chr(10) + str(dmgNum))
		FixTextToScreen (curdmgnum, 1)
		PlayTweenText ( dmgtween, curdmgnum, 0.1 )
	elseif critcheck = 0
		weaponFx()
		CreateText (curdmgnum, "" )
		SetTextFontImage (curdmgnum, 2)
		SetTextSize ( curdmgnum, 4 )
		SetTextAlignment (curdmgnum, 1 )
			if dmgheight = 0
				SetTextPosition (curdmgnum, Random(47.0,50.0), Random(14.0,16.0))
			elseif dmgheight = 1
				SetTextPosition (curdmgnum, Random(47.0,50.0), Random(11.0,13.0))
			elseif dmgheight = 2
				SetTextPosition (curdmgnum, Random(47.0,50.0), Random(19.0,22.0))
			endif
		SetTextDepth (curdmgnum, 0 )
		SetTextString ( curdmgnum, str(dmgNum))
		FixTextToScreen (curdmgnum, 1)
		PlayTweenText ( dmgtween, curdmgnum, 0.1 )
	endif
	
	SetSpriteColor (250, 255, 200, 200, 255 )
	
endfunction

function weaponFx()
	
	CreateSprite (curdmgnum, 101)
	SetSpriteSize (curdmgnum, 15, -1)
	SetSpriteOffset (curdmgnum, GetSpriteWidth(curdmgnum)/2, GetSpriteHeight(curdmgnum)/2)
	SetSpritePositionByOffset (curdmgnum, Random(45.0,47.0), Random(27.0,29.0))
	SetSpriteAnimation(curdmgnum, 60, 60, 4)
	FixSpriteToScreen (curdmgnum, 1)
	SetSpriteDepth (curdmgnum, 9)
	PlaySprite (curdmgnum, 16 )
	SetSpriteColorAlpha (curdmgnum, 150)
	
endfunction

function dmgCleanup()
	
	if lastmostdmgnum = 0
		lastmostdmgnum = curdmgnum
	endif
	
	for i = lastmostdmgnum to curdmgnum
		if GetTextExists (i) = 1
			if GetTextColorAlpha (i) < 255 and GetTextColorAlpha (i) > 0 
				SetTextY(i, GetTextY(i) - 0.3)
			elseif GetTextColorAlpha (i) <= 0
				lastmostdmgnum = i
				DeleteText (i)
			endif
		endif
		if GetSpriteCurrentFrame (i) = 4
			DeleteSprite(i)
		endif
	next i
	for i = 1000 + lastmostdmgnum to curdmgnum + 1000
		if GetTextExists (i) = 1
			if GetTextColorAlpha (i) < 255 and GetTextColorAlpha (i) > 0 
					SetTextY(i, GetTextY(i) - 0.3)
			elseif GetTextColorAlpha (i) = 0
				DeleteText (i)
			endif
		endif
	next i
	
	UpdateAllTweens ( GetFrameTime() )
	
endfunction

function uiSprites()
	//mainUI
	CreateSprite (200, 200)
	SetSpriteColorAlpha (200, 0)
	SetSpriteSize (200, 100, 61.1)
	SetSpritePosition (200, 0, 38.9)
	FixSpriteToScreen (200, 1)
	SetSpriteDepth (200, 3)
	
	//atkstance
	CreateSprite (201, 201)
	SetSpriteColorAlpha (201, 0)
	SetSpriteSize (201, 27.3, 18.3)
	SetSpritePosition (201, 8.3, 54.8)
	SetSpriteAnimation(201, 98, 117, 2)
	FixSpriteToScreen (201, 1)
	SetSpriteDepth (201, 2)
	
	//defstance
	CreateSprite (202, 202)
	SetSpriteColorAlpha (202, 0)
	SetSpriteSize (202, 27.3, 18.3)
	SetSpritePosition (202, 36.4, 54.8)
	SetSpriteAnimation(202, 98, 117, 2)
	FixSpriteToScreen (202, 1)
	SetSpriteDepth (202, 2)
	SetSpriteFrame (202, 2)
	
	//spdstance
	CreateSprite (203, 203)
	SetSpriteColorAlpha (203, 0)
	SetSpriteSize (203, 27.3, 18.3)
	SetSpritePosition (203, 64.4, 54.8)
	SetSpriteAnimation(203, 98, 117, 2)
	FixSpriteToScreen (203, 1)
	SetSpriteDepth (203, 2)
	SetSpriteFrame (203, 2)
	
	//homebtn
	CreateSprite (204, 204)
	SetSpriteColorAlpha (204, 0)
	SetSpriteSize (204, 18.6, 15.4)
	SetSpritePosition (204, 45, 74.1)
	FixSpriteToScreen (204, 1)
	SetSpriteDepth (204, 2)
	SetSpriteAnimation (204, 67, 99, 3)
	SetSpriteFrame(204,1)
	
	//cogbtn
	CreateSprite (205, 205)
	SetSpriteColorAlpha (205, 0)
	SetSpriteSize (205, 27.3, 15.4)
	SetSpritePosition (205, 64.4, 74.1)
	SetSpriteAnimation (205, 98, 99, 3 )
	FixSpriteToScreen (205, 1)
	SetSpriteDepth (205, 2)
	PlaySprite(205, 3)
	StopSprite(205)
	
	//largecog
	CreateSprite (206, 206)
	SetSpriteColorAlpha (206, 0)
	SetSpriteSize (206, 10.8, 6.1)
	SetSpritePosition (206, 70.8, 77.3)
	FixSpriteToScreen (206, 1)
	SetSpriteDepth (206, 1)
	
	//smallcog
	CreateSprite (207, 207)
	SetSpriteColorAlpha (207, 0)
	SetSpriteSize (207, 7.5, 4.1)
	SetSpritePosition (207, 78.3, 81.1)
	FixSpriteToScreen (207, 1)
	SetSpriteDepth (207, 1)
	
	//hpbar
	CreateSprite (208, 208)
	SetSpriteColorAlpha (208, 0)
	SetSpriteSize (208, 0, 2.35)
	SetSpritePosition (208, 10.8, 41.7)
	FixSpriteToScreen (208, 1)
	SetSpriteDepth (208, 2)
	
	//energybar
	CreateSprite (209, 209)
	SetSpriteColorAlpha (209, 0)
	SetSpriteSize (209, 0, 2.35)
	SetSpritePosition (209, 10.8, 45.45)
	FixSpriteToScreen (209, 1)
	SetSpriteDepth (209, 2)
	
	//expbar
	CreateSprite (210, 210)
	SetSpriteColorAlpha (210, 0)
	SetSpriteSize (210, 0, 2.35)
	SetSpritePosition (210, 10.8, 49.25)
	FixSpriteToScreen (210, 1)
	SetSpriteDepth (210, 2)
	
	//s1 bar
	CreateSprite (211, 211)
	SetSpriteColorAlpha (211, 0)
	SetSpriteSize (211, 0, 0.5)
	SetSpritePosition (211, 10.8, 70.3)
	FixSpriteToScreen (211, 1)
	SetSpriteDepth (211, 2)
	
	//s2 bar
	CreateSprite (212, 211)
	SetSpriteColorAlpha (212, 0)
	SetSpriteSize (212, 0, 0.5)
	SetSpritePosition (212, 38.9, 70.3)
	FixSpriteToScreen (212, 1)
	SetSpriteDepth (212, 2)
	
	//s3 bar
	CreateSprite (213, 211)
	SetSpriteColorAlpha (213, 0)
	SetSpriteSize (213, 0, 0.5)
	SetSpritePosition (213, 66.9, 70.3)
	FixSpriteToScreen (213, 1)
	SetSpriteDepth (213, 2)
	
	//pbar
	CreateSprite (229, 225)
	SetSpriteColorAlpha (229, 0)
	SetSpriteSize (229, 51.7, 6.1-0.05)
	SetSpritePosition (229, 38.3, 35.2)
	SetSpriteAnimation (229, 186, 39, 2)
	SetSpriteFrame ( 229, 1)
	FixSpriteToScreen (229, 1)
	SetSpriteDepth (229, 2)
	
	//pbar pip
	CreateSprite (230, 226)
	SetSpriteColorAlpha (230, 0)
	SetSpriteSize (230, 0, 0.45)
	SetSpritePosition (230, 40, 38)
	FixSpriteToScreen (230, 1)
	SetSpriteDepth (230, 1)	
	
endfunction

function mainuiText()
	for i = 1 to 12
		CreateText ( i, "" )
		FixTextToScreen ( i, 1 )
		SetTextDepth ( i, 1 )
	next i
	
	CreateText ( 21, "" )
	FixTextToScreen ( 21, 1 )
	SetTextDepth ( 21, 0 )
	
	for i = 1 to 6
		SetTextColor (i, 0, 0, 0, 0 )
	next i
	
	for i = 7 to 12
		SetTextColor (i, 255, 255, 255, 0 )
	next i
	
	for i = 1 to 8
		SetTextSize (i, 1.5)
	next i
	
	for i = 9 to 12
		SetTextSize (i, 1.25)
	next i
	
		SetTextSize (21, 1.15)
	
	for i = 1 to 3
		SetTextAlignment (i, 1 )
		SetTextSize (i, 1.35)
	next i
	for i = 4 to 12
		SetTextAlignment (i, 0 )
	next i
	
	SetTextAlignment ( 21, 1 )
		
	SetTextSize (1, 1.36)
	
	SetTextPosition (1, 50, 42.225 )
	SetTextPosition (2, 50, 45.95)
	SetTextPosition (3, 50, 49.75 )
	SetTextPosition (4, 10.8, 67.8 )	
	SetTextPosition (5, 38.8, 67.8 )
	SetTextPosition (6, 66.7, 67.8 )
	SetTextPosition (7, 11.8, 77.2-0.1 )
	SetTextPosition (8, 11.8, 80.2-0.2 )
	SetTextPosition (9, 11.8, 83-0.2 )
	SetTextPosition (10, 11.8, 85.3-0.2 )
	SetTextPosition (11, 27.5, 83-0.2 )
	SetTextPosition (12, 27.5, 85.3-0.2 )
	SetTextPosition (21, 54.3, 77.1 )
	
	SetTextString ( 21, "GO" + chr(10) + chr(10) + "BACK" + chr(10) + chr(10) + "HOME?" + chr(10) + chr(10) + "OK!" )
	SetTextVisible ( 21, 0)
	SetTextDepth ( 21, 0)
	
endfunction

function shopui()
	
	//sellbtn
	CreateSprite (302, 302)
	SetSpriteColorAlpha (302, 0)
	SetSpriteSize (302, 20.9, 15)
	SetSpritePosition (302, 8.3, 74.5)
	SetSpriteAnimation(302, 75, 96, 2)
	FixSpriteToScreen (302, 1)
	SetSpriteDepth (302, 1)
	
	//upgradebtn
	CreateSprite (303, 303)
	SetSpriteColorAlpha (303, 0)
	SetSpriteSize (303, 20.9, 15)
	SetSpritePosition (303, 30, 74.5)
	SetSpriteAnimation(303, 75, 96, 2)
	FixSpriteToScreen (303, 1)
	SetSpriteDepth (303, 1)
	
	//equipbtn
	CreateSprite (304, 304)
	SetSpriteColorAlpha (304, 0)
	SetSpriteSize (304, 20.55, 15)
	SetSpritePosition (304, 51.7, 74.5)
	SetSpriteAnimation(304, 74, 96, 2)
	FixSpriteToScreen (304, 1)
	SetSpriteDepth (304, 1)
	
	//outbtn
	CreateSprite (305, 305)
	SetSpriteColorAlpha (305, 0)
	SetSpriteSize (305, 18.7, 15)
	SetSpritePosition (305, 73.1, 74.5)
	FixSpriteToScreen (305, 1)
	SetSpriteDepth (305, 1)
	
	//lscroll
	CreateSprite (306, 306)
	SetSpriteColorAlpha (306, 0)
	SetSpriteSize (306, 4.1, 2.4)
	SetSpritePosition (306, 12.5, 68.4)
	FixSpriteToScreen (306, 1)
	SetSpriteDepth (306, 2)
	SetSpriteShapeBox (306, (GetSpriteWidth(306)/2) - 10, (GetSpriteHeight(306)/2) - 6, GetSpriteWidth(306) + 2, GetSpriteHeight(306) + 2, 0 )
	
	//rscroll
	CreateSprite (307, 307)
	SetSpriteColorAlpha (307, 0)
	SetSpriteSize (307, 4.1, 2.4)
	SetSpritePosition (307, 64.2, 68.4)
	FixSpriteToScreen (307, 1)
	SetSpriteDepth (307, 2)
	SetSpriteShapeBox (307, (GetSpriteWidth(307)/2) - 10, (GetSpriteHeight(307)/2) - 6, GetSpriteWidth(307) + 2, GetSpriteHeight(307) + 2, 0 )
	
	//tierbg
	CreateSprite (308, 308)
	SetSpriteColorAlpha (308, 0)
	SetSpriteSize (308, 15.3, 16.9)
	SetSpritePosition (308, 74.7, 55.8)
	SetSpriteAnimation(308, 55, 108, 5)
	FixSpriteToScreen (308, 1)
	SetSpriteDepth (308, 2)
	
	//itempreview
	CreateSprite (311, 0)
	SetSpriteColorAlpha (311, 0)
	FixSpriteToScreen (311, 1)
	SetSpriteDepth (311, 1)	
	
	//next
	CreateSprite (309, 309)
	SetSpriteColorAlpha (309, 0)
	SetSpriteSize (309, 4.1, 1.4)
	SetSpritePosition (309, 84.2, 50.6)
	SetSpriteAnimation(309, 15, 12, 2)
	FixSpriteToScreen (309, 1)
	SetSpriteDepth (309, 2)
	SetSpriteShapeBox (309, (GetSpriteWidth(309)/2) - 6, (GetSpriteHeight(309)/2) - 6, GetSpriteWidth(309) + 2, GetSpriteHeight(309) + 2, 0 )
	
	//exit
	CreateSprite(313, 313)
	SetSpriteColorAlpha(313, 255)
	SetSpriteSize(313, 18.4, 10.3)
	SetSpritePosition(313, 100, 0.5)
	FixSpriteToScreen(313, 1)
	SetSpriteDepth(313, 1)
	
	//sidemenu
	//csheetbtn 500
	CreateSprite(314, 314)
	SetSpriteColorAlpha(314, 255)
	SetSpriteSize(314, 15, 8.4)
	SetSpritePosition(314, -20, 0.5)
	FixSpriteToScreen(314, 1)
	SetSpriteDepth(314, 1)
	
	//chaosorbbtn 501
	
	CreateSprite(315, 315)
	SetSpriteColorAlpha(315, 255)
	SetSpriteSize(315, 15, 8.4)
	SetSpritePosition(315, -20, 9.4)
	FixSpriteToScreen(315, 1)
	SetSpriteDepth(315, 1)
	
	//closewindbtn 502
	
	CreateSprite(316, 316)
	SetSpriteColorAlpha(316, 255)
	SetSpriteSize(316, 15, 8.4)
	SetSpritePosition(316, -20, 23.0)
	FixSpriteToScreen(316, 1)
	SetSpriteDepth(316, 1)
	
	if giftcount > 24 and GetFullscreenAdvertLoadedChartboost() = 1 and emode_enable = 1
		//giftsprite
		CreateSprite(328, 9109)
		SetSpriteColorAlpha(328, 0)
		SetSpriteSize(328, 16.7, 9.4)
		SetSpritePosition(328, 53.3, 23.45)
		FixSpriteToScreen(328, 1)
		SetSpriteDepth(328, 1)
		SetSpriteAnimation(328, 60, 60, 8)
		PlaySprite(328, 8, 1)
	endif
	
	//csheetbg 503
	
	CreateSprite(317, 317)
	SetSpriteColorAlpha(317, 255)
	SetSpriteSize(317, 72.5, 22)
	SetSpritePosition(317, -80, 0.5)
	FixSpriteToScreen(317, 1)
	SetSpriteDepth(317, 1)
	
	//chaosorbbg 504
	
	CreateSprite(318, 318)
	SetSpriteColorAlpha(318, 255)
	SetSpriteSize(318, 55, 34.2)
	SetSpritePosition(318, -59.2, 0.5)
	FixSpriteToScreen(318, 1)
	SetSpriteDepth(318, 1)
	SetSpriteShapeBox(318, 0, 0, 0, 0, 0)
	
	//useorbbtn 505
	
	CreateSprite(319, 319)
	SetSpriteColorAlpha(319, 255)
	SetSpriteSize(319, 15, 8.4)
	SetSpritePosition(319, -23.4, 24.4)
	FixSpriteToScreen(319, 1)
	SetSpriteDepth(319, 1)
	SetSpriteAnimation(319, 54, 54, 2)
	
	//no orb
	CreateSprite(321, 316)
	SetSpriteColorAlpha(321, 255)
	SetSpriteSize(321, 15, 8.4)
	SetSpritePosition(321, -34.8, 24.4) //to 11.7
	FixSpriteToScreen(321, 1)
	SetSpriteDepth(321, 1)
	
	//giftwind
	CreateSprite(323, 9101)
	SetSpriteColorAlpha(323, 255)
	SetSpriteSize(323, 32.5, 12.7)
	SetSpritePosition(323, 35.8, -29.5)
	FixSpriteToScreen(323, 1)
	SetSpriteDepth(323, 1)
	
	//giftok
	CreateSprite(322, 9100)
	SetSpriteColorAlpha(322, 255)
	SetSpriteSize(322, 15, 8.4)
	SetSpritePosition(322, 52.5, -16.4)
	FixSpriteToScreen(322, 1)
	SetSpriteDepth(322, 1)
	
	//gift no
	CreateSprite(329, 316)
	SetSpriteColorAlpha(329, 255)
	SetSpriteSize(329, 15, 8.4)
	SetSpritePosition(329, 36.7, -16.4)
	FixSpriteToScreen(329, 1)
	SetSpriteDepth(329, 1)
	
	//c_orb
	CreateSprite(324, 9102)
	SetSpriteColorAlpha(324, 255)
	SetSpriteSize(324, 14.2, 7.5)
	SetSpritePosition(324, -55.9, 1.9)
	FixSpriteToScreen(324, 1)
	SetSpriteDepth(324, 1)
	
	//w_orb
	CreateSprite(325, 9103)
	SetSpriteColorAlpha(325, 255)
	SetSpriteSize(325, 14.2, 7.5)
	SetSpritePosition(325, -55.9, 9.8)
	FixSpriteToScreen(325, 1)
	SetSpriteDepth(325, 1)
	
	//morb
	CreateSprite(326, 9104)
	SetSpriteColorAlpha(326, 255)
	SetSpriteSize(326, 14.2, 7.5)
	SetSpritePosition(326, -55.9, 17.8)
	FixSpriteToScreen(326, 1)
	SetSpriteDepth(326, 1)
	
	//porb
	CreateSprite(327, 9105)
	SetSpriteColorAlpha(327, 255)
	SetSpriteSize(327, 14.2, 7.5)
	SetSpritePosition(327, -55.9, 25.8)
	FixSpriteToScreen(327, 1)
	SetSpriteDepth(327, 1)

	if emode_orbs > 0
		SetSpriteFrame(319, 1)
	elseif emode_orbs < 1
		SetSpriteFrame(319, 2)
	endif
	
	orb_sel = 1
	
endfunction

function shoptext()
	
	for i = 1 to 13
		CreateText(i, "")
		SetTextColor(i, 255, 255, 255, 0)
		SetTextDepth(i, 1)
	next i
	
	if inventoryArray[cur_item_sel].rarity = 0
		SetSpriteFrame (308, 1)
		SetTextColor(4, 255, 255, 255, 255)
	elseif inventoryArray[cur_item_sel].rarity = 1
		SetSpriteFrame (308, 2)
		SetTextColor(4, 114, 255, 0, 255)
	elseif inventoryArray[cur_item_sel].rarity = 2
		SetSpriteFrame (308, 3)
		SetTextColor(4, 0, 90, 255, 255)
	elseif inventoryArray[cur_item_sel].rarity = 3
		SetSpriteFrame (308, 4)
		SetTextColor(4, 255, 90, 0, 255)
	endif
	
	for i = 1 to 3
		SetTextAlignment (i, 0)
		SetTextSize (i, 1.44)
	next i
	
	SetTextSize (4, 1.5)
	SetTextSize (5, 1.25)
	
	for i = 6 to 13
		SetTextSize (i, 1.15)
	next i
	
	for i = 4 to 13
		SetTextAlignment (i, 1)
	next i
	
	SetTextPosition (1, 14.2, 36.5+0.05)
	SetTextPosition (2, 49.2, 41.2+0.1)
	SetTextPosition (3, 11.7, 44.9)
	SetTextPosition (4, 40.8, 57.4)
	SetTextPosition (5, 40.8, 59.4)
	SetTextPosition (6, 40.8, 61.9)
	SetTextPosition (7, 40.8, 63.9)
	SetTextPosition (8, 40.8, 65.9)
	SetTextPosition (9, 40.8, 68.5)
	SetTextPosition (13, 40.8, 70.5)
	
	SetTextPosition (10, 18.8, 76.8)
	SetTextPosition (11, 40.4, 76.8)
	SetTextPosition (12, 61.8, 76.8)
	
	for i = 500 to 513
		CreateText(i, "")
		SetTextColor(i, 255, 255, 255, 255)
		SetTextDepth(i, 0)
		SetTextSize(i, 1.15)
		SetTextAlignment(i, 0)
	next i
	
	SetTextSize(500, 1.45)
	for i = 513 to 514
		SetTextSize(i, 1.05)
	next i
	
	SetTextPosition(500, -68.2, 4.1-0.25)
	SetTextPosition(501, -68.2, 6.9-0.25)
	SetTextPosition(502, -52.5, 6.9-0.25)
	SetTextPosition(503, -68.2, 9.2-0.25)
	SetTextPosition(504, -52.5, 9.2-0.25)
	SetTextPosition(505, -68.2, 11.5-0.25)
	SetTextPosition(506, -68.2, 13.8-0.25)
	SetTextPosition(507, -68.2, 16.1-0.25)
	SetTextPosition(508, -68.2, 18.4-0.25)
	SetTextPosition(509, -35.2, 6.9-0.25)
	SetTextPosition(510, -35.2, 9.2-0.25)
	SetTextPosition(511, -35.2, 11.5-0.25)
	SetTextPosition(512, -35.2, 13.8-0.25)
	SetTextAlignment(513, 1)
	SetTextLineSpacing(513, 0.2)
	SetTextPosition(513, -23.4, 4.6)
	//SetTextPosition(514, -25.6, 9.4)
	
	sidemenutext()
	
endfunction

function inventoryUpdates()
	
	if GetSpritePlaying (312) = 0
		DeleteSprite(312)
	endif
		
	SetTextString (1, "GOLD:" + str(gold) )
	SetTextString (2, "MASTER CRAFSTMAN")
	
	if justin = 0 and tutorial = 1 and death = 0
		SetTextString (3, "...WELCOME BACK!")
		if mapcont = 2
			SetTextString (3, "...THERE'S NO RUSH!")
		endif
		justin = 1
	elseif justin = 0 and tutorial = 1 and death = 1
		SetTextString (3, "DON'T YOU WORRY. I'VE FIXED YOU" + chr(10) + chr(10) + "RIGHT BACK UP!")
		justin = 1
	endif
	
	if tutorial = 0 and justin = 0
		SetTextString (3, "OH, FINALLY! IT'S ALIIIVEE!")
		justin = 1
	endif
	
	if GetTextColorAlpha (1) = 255 and talking = 0
		for i = 0 to GetTextLength(3)
			if GetTextCharColorAlpha(3, i) = 0 and Timer() > 0.04
				SetTextCharColorAlpha(3, i, 255)
				for l = i+1 to GetTextLength(3)
					SetTextCharColorAlpha(3, l, 0)
				next l
				PlaySound(16)
				ResetTimer()
			endif
		next i
	endif
	
	if GetTextCharColorAlpha (3, GetTextLength(3) - 1) = 255
		talking = 1
	endif
	
	if inventoryArray[cur_item_sel].upgradelvl = 0
		SetTextString (4, inventoryArray[cur_item_sel].name)
	elseif inventoryArray[cur_item_sel].upgradelvl => 1
		SetTextString (4, inventoryArray[cur_item_sel].name + "+" + str(inventoryArray[cur_item_sel].upgradelvl))
	endif
	if inventoryArray[cur_item_sel].itemtype = 0
		SetTextString (5, str(inventoryArray[cur_item_sel].mindmg) + " - " + str(inventoryArray[cur_item_sel].maxdmg) + " DMG" )
	elseif inventoryArray[cur_item_sel].itemtype = 1
		SetTextString (5, str(inventoryArray[cur_item_sel].defence) + " DEF" )
	endif
	if inventoryArray[cur_item_sel].prop1exist = 1
		SetTextString (6, inventoryArray[cur_item_sel].prop1 + ":+" + str(inventoryArray[cur_item_sel].prop1val) )
	elseif inventoryArray[cur_item_sel].prop1exist = 0
		SetTextString (6, "---")
	endif
	if inventoryArray[cur_item_sel].prop2exist = 1
		SetTextString (7, inventoryArray[cur_item_sel].prop2 + ":+" + str(inventoryArray[cur_item_sel].prop2val) )
	elseif inventoryArray[cur_item_sel].prop2exist = 0
		SetTextString (7, "---")
	endif
	if inventoryArray[cur_item_sel].prop3exist = 1
		SetTextString (8, inventoryArray[cur_item_sel].prop3 + ":+" + str(inventoryArray[cur_item_sel].prop3val) )
	elseif inventoryArray[cur_item_sel].prop3exist = 0
		SetTextString (8, "---")
	endif

	if inventoryArray[cur_item_sel].equipval = 0
		SetTextString (9, "(NOT EQUIPPED)")
	elseif inventoryArray[cur_item_sel].equipval = 1
		SetTextString (9, "(EQUIPPED)")
	endif
	
	if inventoryArray[cur_item_sel].rarity = 0
		SetSpriteFrame (308, 1)
		SetTextColor(4, 255, 255, 255, 255)
	elseif inventoryArray[cur_item_sel].rarity = 1
		SetSpriteFrame (308, 2)
		SetTextColor(4, 114, 255, 0, 255)
	elseif inventoryArray[cur_item_sel].rarity = 2
		SetSpriteFrame (308, 3)
		SetTextColor(4, 0, 90, 255, 255)
	elseif inventoryArray[cur_item_sel].rarity = 3
		SetSpriteFrame (308, 4)
		SetTextColor(4, 255, 90, 0, 255)
	elseif inventoryArray[cur_item_sel].rarity = 4
		SetSpriteFrame (308, 5)
		SetTextColor(4, 168, 0, 211, 255)
	endif
	
	SetTextString (13, str(cur_item_sel + 1) + "/" + str(max_inv_space + 1) )
	
	itempreview()
	smallhandler()
	sidemenutext()
	
endfunction

function itempreview()
	
	previewnum = inventoryArray[cur_item_sel].spriteid

	if inventoryArray[cur_item_sel].itemtype = 0
		SetSpriteImage (311, previewnum )
		SetSpriteSize ( 311, 20.8*0.75, 21.9*0.75)
		SetSpriteAnimation (311, 75, 140, 2)
		SetSpriteOffset (311, GetSpriteWidth(311)/2, GetSpriteHeight(311) - GetSpriteHeight(311)/10)
		SetSpritePositionByOffset (311, 82.35, 70)
	elseif inventoryArray[cur_item_sel].itemtype = 1
		SetSpriteImage (311, previewnum )
		SetSpriteSize (311, 26.7*0.75, 15*0.75)
		SetSpriteAnimation (311, 96, 96, 2)
		SetSpriteOffset (311, GetSpriteWidth(311)/2, GetSpriteHeight(311)/2)
		SetSpritePositionByOffset (311, 82.35, 64.25-0.6)
	endif
	
endfunction

function sidemenutext()
	
	SetTextString(500, "LEVEL:" + str(level))
	SetTextString(501, "ATK:" + str(attack + vattack))
	SetTextString(502, "DEF:" + str(defence + vdefence))
	SetTextString(503, "AGI:" + str(agility + vagility, 0))
	SetTextString(504, "LUCK:" + str(luck + vluck, 0))
	SetTextString(505, "CRIT CHANCE:" + str(pcc, 1) + "%")
	SetTextString(506, "ATK SPEED:" + str(patkspeed*10, 1) + "%")
	SetTextString(507, "AVG DMG:" + str(((emindmg) + ((emaxdmg) * (attack + vattack))/10)*stance1mod, 0))
	SetTextString(508, "DMG REDUCTION:" + str((((defence + vdefence)/4) + edef), 0))
	SetTextString(509, "MAGIC FIND:" + str(pmagicfind*10, 1) + "%")
	SetTextString(510, "GOLD FIND:" + str(pgoldfind, 1) + "X")
	SetTextString(511, "MOB KILLS:" + str(totalkills))
	SetTextString(512, "DEATHS:" + str(timesdied))
	
	if orb_sel = 1
		SetTextColor(513, 255, 255, 255, 255)
		for i = 0 to 8
			SetTextCharColor(513, i, 168, 0, 211, 255)
		next i
		if emode_orbs = 0
			SetTextString(513, "CHAOS ORB"+chr(10)+chr(10)+ "OPENS A PORTAL"+chr(10)+chr(10)+"LEADING TO THE"+chr(10)+chr(10)+"CHAOS DIMENSION."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(emode_orbs)+chr(10)+chr(10)+"CHAOS ORBS"+chr(10)+chr(10)+"AVAILABLE")
		elseif emode_orbs = 1
			SetTextString(513, "CHAOS ORB"+chr(10)+chr(10)+ "OPENS A PORTAL"+chr(10)+chr(10)+"LEADING TO THE"+chr(10)+chr(10)+"CHAOS DIMENSION."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(emode_orbs)+chr(10)+chr(10)+"CHAOS ORB"+chr(10)+chr(10)+"AVAILABLE")
		elseif emode_orbs > 1
			SetTextString(513, "CHAOS ORB"+chr(10)+chr(10)+ "OPENS A PORTAL"+chr(10)+chr(10)+"LEADING TO THE"+chr(10)+chr(10)+"CHAOS DIMENSION."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(emode_orbs)+chr(10)+chr(10)+"CHAOS ORBS"+chr(10)+chr(10)+"AVAILABLE")
		endif
	elseif orb_sel = 2
		SetTextColor(513, 255, 255, 255, 255)
		for i = 0 to 7
			SetTextCharColor(513, i, 67, 211, 0, 255)
		next i
		if w_orbs = 0
			SetTextString(513, "WARP ORB"+chr(10)+chr(10)+ "TELEPORT TO AN"+chr(10)+chr(10)+"AREA YOU HAVE"+chr(10)+chr(10)+"BEATEN BEFORE."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(w_orbs)+chr(10)+chr(10)+"WARP ORBS"+chr(10)+chr(10)+"AVAILABLE")
		elseif w_orbs = 1
			SetTextString(513, "WARP ORB"+chr(10)+chr(10)+ "TELEPORT TO AN"+chr(10)+chr(10)+"AREA YOU HAVE"+chr(10)+chr(10)+"BEATEN BEFORE."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(w_orbs)+chr(10)+chr(10)+"WARP ORB"+chr(10)+chr(10)+"AVAILABLE")
		elseif w_orbs > 1
			SetTextString(513, "WARP ORB"+chr(10)+chr(10)+ "TELEPORT TO AN"+chr(10)+chr(10)+"AREA YOU HAVE"+chr(10)+chr(10)+"BEATEN BEFORE."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(w_orbs)+chr(10)+chr(10)+"WARP ORBS"+chr(10)+chr(10)+"AVAILABLE")
		endif
	elseif orb_sel = 3
		SetTextColor(513, 255, 255, 255, 255)
		for i = 0 to 8
			SetTextCharColor(513, i, 0,203, 211, 255)
		next i
		if m_orbs = 0
			SetTextString(513, "MAGIC ORB"+chr(10)+chr(10)+ "REFORGE THE"+chr(10)+chr(10)+"MAGIC PROPERTIES"+chr(10)+chr(10)+"OF AN ITEM."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(m_orbs)+chr(10)+chr(10)+"MAGIC ORBS"+chr(10)+chr(10)+"AVAILABLE")
		elseif m_orbs = 1
			SetTextString(513, "MAGIC ORB"+chr(10)+chr(10)+ "REFORGE THE"+chr(10)+chr(10)+"MAGIC PROPERTIES"+chr(10)+chr(10)+"OF AN ITEM."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(m_orbs)+chr(10)+chr(10)+"MAGIC ORB"+chr(10)+chr(10)+"AVAILABLE")
		elseif m_orbs > 1
			SetTextString(513, "MAGIC ORB"+chr(10)+chr(10)+ "REFORGE THE"+chr(10)+chr(10)+"MAGIC PROPERTIES"+chr(10)+chr(10)+"OF AN ITEM."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(m_orbs)+chr(10)+chr(10)+"MAGIC ORBS"+chr(10)+chr(10)+"AVAILABLE")
		endif
	elseif orb_sel = 4
		SetTextColor(513, 255, 255, 255, 255)
		for i = 0 to 8
			SetTextCharColor(513, i, 211, 0, 26, 255)
		next i
		if p_orbs = 0
			SetTextString(513, "POWER ORB"+chr(10)+chr(10)+ "INCREASES YOUR"+chr(10)+chr(10)+"STATS BY"+chr(10)+chr(10)+"3 POINTS EACH."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(p_orbs)+chr(10)+chr(10)+"POWER ORBS"+chr(10)+chr(10)+"AVAILABLE")
		elseif p_orbs = 1
			SetTextString(513, "POWER ORB"+chr(10)+chr(10)+ "INCREASES YOUR"+chr(10)+chr(10)+"STATS BY"+chr(10)+chr(10)+"3 POINTS EACH."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(p_orbs)+chr(10)+chr(10)+"POWER ORB"+chr(10)+chr(10)+"AVAILABLE")
		elseif p_orbs > 1
			SetTextString(513, "POWER ORB"+chr(10)+chr(10)+ "INCREASES YOUR"+chr(10)+chr(10)+"STATS BY"+chr(10)+chr(10)+"3 POINTS EACH."+chr(10)+chr(10)+"YOU HAVE"+chr(10)+chr(10)+str(p_orbs)+chr(10)+chr(10)+"POWER ORBS"+chr(10)+chr(10)+"AVAILABLE")
		endif
	endif
	
endfunction

function textUpdates()
	discur_hp = cur_hp
	discur_energy = cur_energy
	discur_exp = cur_exp
	
	dismax_hp = max_hp
	dismax_energy = max_energy
	disreq_exp = req_exp
	
	SetTextString (1, str(discur_hp) + "/" + str(dismax_hp) )
	SetTextString (2, str(discur_energy) + "/" + str(dismax_energy) )
	SetTextString (3, str(discur_exp) + "/" + str(disreq_exp) )
	
	if stance1 < 20
		SetTextString (4, "LVL." + str(stance1) )
	elseif stance1 = 20
		SetTextString (4, "LVL." + "MAX" )
	endif
	if stance2 < 20
		SetTextString (5, "LVL." + str(stance2) )
	elseif stance2 = 20
		SetTextString (5, "LVL." + "MAX" )
	endif
	if stance3 < 10
		SetTextString (6, "LVL." + str(stance3) )
	elseif stance3 = 10
		SetTextString (6, "LVL." + "MAX" )
	endif
	
	SetTextString (7, "LEVEL:" + str(level) )
	SetTextString (8, "GOLD:" + str(gold) )
	SetTextString (9, "ATK:" + str(attack + vattack) )
	SetTextString (10, "AGI:" + str(agility + vagility, 0) )
	SetTextString (11, "DEF:" + str(defence + vdefence) )
	SetTextString (12, "LUK:" + str(luck + vluck, 0) )
		
endfunction

function envsprites()
	
	if emode_active = 0
		select stage
		case 1
			env1num = 400
			env2num = 500
		endcase
		case 2
			env1num = 401
			env2num = 501
		endcase
		case 3
			env1num = 402
			env2num = 502
		endcase
		case 4
			env1num = 403
			env2num = 503
		endcase
		case 5
			env1num = 404
			env2num = 504
		endcase
		case 6
			env1num = 405
			env2num = 505
		endcase
		case 7
			env1num = 406
			env2num = 506
		endcase
		case 8
			env1num = 407
			env2num = 507
		endcase
		case 9
			env1num = 408
			env2num = 508
		endcase
		case 10
			env1num = 409
			env2num = 509
		endcase
		case 11
			env1num = 410
			env2num = 510
		endcase
		case 12
			env1num = 411
			env2num = 511
		endcase
		endselect
	elseif emode_active = 1
		
		if emode_env = 1
			env1num = 400
			env2num = 500
		elseif emode_env = 2
			env1num = 401
			env2num = 501
		elseif emode_env = 3
			env1num = 402
			env2num = 502
		elseif emode_env = 4
			env1num = 403
			env2num = 503
		elseif emode_env = 5
			env1num = 404
			env2num = 504
		elseif emode_env = 6
			env1num = 405
			env2num = 505
		elseif emode_env = 7
			env1num = 406
			env2num = 506
		elseif emode_env = 8
			env1num = 407
			env2num = 507
		elseif emode_env = 9
			env1num = 408
			env2num = 508
		elseif emode_env = 10
			env1num = 409
			env2num = 509
		elseif emode_env = 11
			env1num = 410
			env2num = 510
		elseif emode_env = 12
			env1num = 411
			env2num = 511
		endif
	
	endif
	
	//envspriter
	if splash = 1
		CreateSprite (400, env1num)
		SetSpriteColorAlpha (400 , 0)
		SetSpriteSize (400, 200, 48.3)
		SetSpritePosition (400, 0, 0)
		SetSpriteDepth (400 , 11)
		SetSpriteShapeBox (400, 0, 0, 0, 0, 0)
		
		CreateSprite (500, env2num)
		SetSpriteColorAlpha (500 , 0)
		SetSpriteSize (500, 400, 48.3)
		SetSpritePosition (500, 0, 0)
		SetSpriteDepth (500, 12)
		SetSpriteShapeBox (500, 0, 0, 0, 0, 0)
		
	elseif splash = 0
		CreateSprite (400, 400)
		SetSpriteColorAlpha (400 , 0)
		SetSpriteSize (400, 200, 48.3)
		SetSpritePosition (400, 0, 25.3)
		SetSpriteDepth (400, 11)
		SetSpriteShapeBox (400, 0, 0, 0, 0, 0)
		
		CreateSprite (500, 500)
		SetSpriteColorAlpha (500 , 0)
		SetSpriteSize (500, 400, 48.3)
		SetSpritePosition (500 , 0, 25.3)
		SetSpriteDepth (500, 12)
		SetSpriteShapeBox (500, 0, 0, 0, 0, 0)
		
	endif
	
endfunction

function envSpriter()
	
	if splash = 1
		if GetSpriteX(400) =< -100
			env1x = GetSpriteX(400)
			SetSpritePosition (400, env1x + 100, 0)
		endif
	
		if GetSpriteX(500) =< -200
			env2x = GetSpriteX(500)
			SetSpritePosition (500, env2x + 200, 0)
		endif
		
	elseif splash = 0
		
		if GetSpriteX(400) =< -100
			env1x = GetSpriteX(400)
			SetSpritePosition (400, env1x + 100, 25.3)
		endif
	
		if GetSpriteX(500) =< -200
			env2x = GetSpriteX(500)
			SetSpritePosition (500, env2x + 200, 25.3)
		endif
	
	endif
		
endfunction

function stanceHandler()
	if activestance = 0 and cur_energy > 0 and stance1 < 20 and fightBoolean = 1 and s1gain = 1
		s1gain = 0
		s1exp = s1exp + 25
	elseif activestance = 1 and cur_energy > 0 and stance2 < 20 and fightBoolean = 1 and s2gain = 1
		s2gain = 0
		s2exp = s2exp + 175
	elseif activestance = 2 and cur_energy > 0 and stance3 < 10 and levelup = 0 and fightboolean = 0 and lootexist = 0 and levelcomplete = 0
		s3exp = s3exp + 0.85
	endif
	
	if enemyCount => 0
		if activestance = 0
			movespeed = 0.35
		elseif activestance = 1
			movespeed = 0.35
		elseif activestance = 2 and levelcomplete = 0
			movespeed = 0.35 + stance3mod
		endif
	endif
endfunction

function setVars()
	
	buttonID = 0
	death = 0
	dseq = 0
	alert = 0
	energyalert = 0
	
	weaponAngle = 25
	
	flag = 0
		
	if newrun = 0
		cur_hp = max_hp
		activestance = 0
		movespeed = 0.35
		cur_energy = 0
		newrun = 1
	endif
	
	if mapcont = 1
		mapcont = 0
	endif
	
	if activestance = 0
		SetSpriteFrame (201, 1)
		SetSpriteFrame (202, 2)
		SetSpriteFrame (203, 2)
		drainspeed = 0.02
	elseif activestance = 1
		SetSpriteFrame (201, 2)
		SetSpriteFrame (202, 1)
		SetSpriteFrame (203, 2)
		drainspeed = 0.02
	elseif activestance = 2
		SetSpriteFrame (201, 2)
		SetSpriteFrame (202, 2)
		SetSpriteFrame (203, 1)
		drainspeed = 0.02 + stance3drain
	endif
	
	barup = 0
	
	buttonID = 0
	
	enemycounter()
	
	contcheck = 0
	homecheck = 0
	
	hitcount = 0
	curdmgnum = 1000
	lastmostdmgnum = 0
	
	levelcomplete = 0
	
	//stagemods
	if emode_active = 0
		select stage
		case 1
			stagemod = 1
			hpmod = 1
			dmgmod = 1
			if loadflag < 1
				LoadMusicOGG ( 3, "music/SILENCE.OGG" )
				LoadImage ( 250, "enemies/mob1.png" )
				LoadImage ( 251, "enemies/mob2.png" )
				LoadImage ( 252, "enemies/mob3.png" )
				LoadImage ( 286, "bosses/boss1.png" )
				loadflag = 1
			endif
		endcase
		case 2
			stagemod = 2
			hpmod = 3
			dmgmod = 3
			if loadflag < 2
				LoadMusicOGG ( 4, "music/SILENCE.OGG" )
				LoadImage ( 401, "env/env2.png" )
				LoadImage ( 501, "env/env2_bg.png" )
				LoadImage ( 253, "enemies/mob4.png" )
				LoadImage ( 254, "enemies/mob5.png" )
				LoadImage ( 255, "enemies/mob6.png" )
				LoadImage ( 287, "bosses/boss2.png" )
				loadflag =  2
			endif
		endcase
		case 3
			stagemod = 3
			hpmod = 11
			dmgmod = 5
			if loadflag < 3
				LoadMusicOGG ( 5, "music/SILENCE.OGG" )
				LoadImage ( 402, "env/env3.png" )
				LoadImage ( 502, "env/env3_bg.png" )
				LoadImage ( 256, "enemies/mob7.png" )
				LoadImage ( 257, "enemies/mob8.png" )
				LoadImage ( 258, "enemies/mob9.png" )
				LoadImage ( 288, "bosses/boss3.png" )
				loadflag = 3
			endif
		endcase
		case 4
			stagemod = 5
			hpmod = 21
			dmgmod = 8
			if loadflag < 4
				LoadMusicOGG ( 6, "music/SILENCE.OGG" )
				LoadImage ( 403, "env/env4.png" )
				LoadImage ( 503, "env/env4_bg.png" )
				LoadImage ( 259, "enemies/mob10.png" )
				LoadImage ( 260, "enemies/mob11.png" )
				LoadImage ( 261, "enemies/mob12.png" )
				LoadImage ( 289, "bosses/boss4.png" )
				loadflag = 4 
			endif
		endcase
		case 5
			stagemod = 6
			hpmod = 38
			dmgmod = 12
			if loadflag < 5
				LoadMusicOGG ( 7, "music/SILENCE.OGG" )
				LoadImage ( 404, "env/env5.png" )
				LoadImage ( 504, "env/env5_bg.png" )
				LoadImage ( 262, "enemies/mob13.png" )
				LoadImage ( 263, "enemies/mob14.png" )
				LoadImage ( 264, "enemies/mob15.png" )
				LoadImage ( 290, "bosses/boss5.png" )
				loadflag = 5
			endif
		endcase
		case 6
			stagemod = 8
			hpmod = 60
			dmgmod = 15
			if loadflag < 6
				LoadMusicOGG ( 8, "music/SILENCE.OGG" )
				LoadImage ( 405, "env/env6.png" )
				LoadImage ( 505, "env/env6_bg.png" )
				LoadImage ( 265, "enemies/mob16.png" )
				LoadImage ( 266, "enemies/mob17.png" )
				LoadImage ( 267, "enemies/mob18.png" )
				LoadImage ( 291, "bosses/boss6.png" )
				loadflag = 6
			endif
		endcase
		case 7
			stagemod = 10
			hpmod = 174
			dmgmod = 20
			if loadflag < 7
				LoadMusicOGG ( 9, "music/SILENCE.OGG" )
				LoadImage ( 406, "env/env7.png" )
				LoadImage ( 506, "env/env7_bg.png" )
				LoadImage ( 268, "enemies/mob19.png" )
				LoadImage ( 269, "enemies/mob20.png" )
				LoadImage ( 270, "enemies/mob21.png" )
				LoadImage ( 292, "bosses/boss7.png" )
				loadflag = 7
			endif
		endcase
		case 8
			stagemod = 12
			hpmod = 240
			dmgmod = 27
			if loadflag < 8
				LoadMusicOGG ( 10, "music/SILENCE.OGG" )
				LoadImage ( 407, "env/env8.png" )
				LoadImage ( 507, "env/env8_bg.png" )
				LoadImage ( 271, "enemies/mob22.png" )
				LoadImage ( 272, "enemies/mob23.png" )
				LoadImage ( 273, "enemies/mob24.png" )
				LoadImage ( 293, "bosses/boss8.png" )
				loadflag = 8
			endif
		endcase
		case 9
			stagemod = 15
			hpmod = 315
			dmgmod = 33
			if loadflag < 9
				LoadMusicOGG ( 11, "music/SILENCE.OGG" )
				LoadImage ( 408, "env/env9.png" )
				LoadImage ( 508, "env/env9_bg.png" )
				LoadImage ( 274, "enemies/mob25.png" )
				LoadImage ( 275, "enemies/mob26.png" )
				LoadImage ( 276, "enemies/mob27.png" )
				LoadImage ( 294, "bosses/boss9.png" )
				loadflag = 9
			endif
		endcase
		case 10
			stagemod = 18
			hpmod = 399
			dmgmod = 80
			if loadflag < 10
				LoadMusicOGG ( 12, "music/SILENCE.OGG" )
				LoadImage ( 409, "env/env10.png" )
				LoadImage ( 509, "env/env10_bg.png" )
				LoadImage ( 277, "enemies/mob28.png" )
				LoadImage ( 278, "enemies/mob29.png" )
				LoadImage ( 279, "enemies/mob30.png" )
				LoadImage ( 295, "bosses/boss10.png" )
				loadflag = 10
			endif
		endcase
		case 11
			stagemod = 21
			hpmod = 738
			dmgmod = 95
			if loadflag < 11
				LoadMusicOGG ( 13, "music/SILENCE.OGG" )
				LoadImage ( 410, "env/env11.png" )
				LoadImage ( 510, "env/env11_bg.png" )
				LoadImage ( 280, "enemies/mob31.png" )
				LoadImage ( 281, "enemies/mob32.png" )
				LoadImage ( 282, "enemies/mob33.png" )
				LoadImage ( 296, "bosses/boss11.png" )
				loadflag = 11
			endif
		endcase
		case 12
			stagemod = 24
			hpmod = 900
			dmgmod = 113
			if loadflag < 12
				LoadMusicOGG ( 14, "music/SILENCE.OGG" )
				LoadMusicOGG ( 15, "music/SILENCE.OGG" )
				LoadImage ( 411, "env/env12.png" )
				LoadImage ( 511, "env/env12_bg.png" )
				LoadImage ( 283, "enemies/mob34.png" )
				LoadImage ( 284, "enemies/mob35.png" )
				LoadImage ( 285, "enemies/mob36.png" )
				LoadImage ( 297, "bosses/boss12.png" )
				loadflag = 12 
			endif
		endcase
		endselect
	
	elseif emode_active = 1
	
		if loadflag < 12
			bulkload()
		endif
	
		stagemod = 12
		hpmod = 150 * 2
		dmgmod = 24 * 2
	
	//emode specific vars
		
		if beststage = 1
			
			emode_mob1 = Random2(250, 252)
			emode_mob2 = Random2(250, 252)
			emode_mob3 = Random2(250, 252)
			emode_boss = Random(286, 286)
			
		elseif beststage = 2
			
			emode_mob1 = Random2(250, 255)
			emode_mob2 = Random2(250, 255)
			emode_mob3 = Random2(250, 255)
			emode_boss = Random(286, 287)
			
		elseif beststage = 3
			
			emode_mob1 = Random2(250, 258)
			emode_mob2 = Random2(250, 258)
			emode_mob3 = Random2(250, 258)
			emode_boss = Random(286, 288)
			
		elseif beststage = 4
			
			emode_mob1 = Random2(250, 261)
			emode_mob2 = Random2(250, 261)
			emode_mob3 = Random2(250, 261)
			emode_boss = Random(286, 289)
						
		elseif beststage = 5
			
			emode_mob1 = Random2(250, 264)
			emode_mob2 = Random2(250, 264)
			emode_mob3 = Random2(250, 264)
			emode_boss = Random(286, 290)
			
		elseif beststage = 6
			
			emode_mob1 = Random2(250, 267)
			emode_mob2 = Random2(250, 267)
			emode_mob3 = Random2(250, 267)
			emode_boss = Random(286, 291)
			
		elseif beststage = 7
			
			emode_mob1 = Random2(250, 270)
			emode_mob2 = Random2(250, 270)
			emode_mob3 = Random2(250, 270)
			emode_boss = Random(286, 292)
			
		elseif beststage = 8
			
			emode_mob1 = Random2(250, 273)
			emode_mob2 = Random2(250, 273)
			emode_mob3 = Random2(250, 273)
			emode_boss = Random(286, 293)
		
		elseif beststage = 9
			
			emode_mob1 = Random2(250, 276)
			emode_mob2 = Random2(250, 276)
			emode_mob3 = Random2(250, 276)
			emode_boss = Random(286, 294)
			
		elseif beststage = 10
			
			emode_mob1 = Random2(250, 279)
			emode_mob2 = Random2(250, 279)
			emode_mob3 = Random2(250, 279)
			emode_boss = Random(286, 295)
			
		elseif beststage = 11
			
			emode_mob1 = Random2(250, 282)
			emode_mob2 = Random2(250, 282)
			emode_mob3 = Random2(250, 282)
			emode_boss = Random(286, 296)
			
		elseif beststage = 12
			
			emode_mob1 = Random2(250, 285)
			emode_mob2 = Random2(250, 285)
			emode_mob3 = Random2(250, 285)
			emode_boss = Random(286, 297)
			
		endif
		
		emode_env = Random(1,beststage)
		
		emode_music = Random(3, beststage + 2)
		
	endif

endfunction

function bulkload()
	
		LoadMusicOGG ( 3, "music/SILENCE.OGG" )
		LoadImage ( 250, "enemies/mob1.png" )
		LoadImage ( 251, "enemies/mob2.png" )
		LoadImage ( 252, "enemies/mob3.png" )
		LoadImage ( 286, "bosses/boss1.png" )
		LoadMusicOGG ( 4, "music/SILENCE.OGG" )
		LoadImage ( 401, "env/env2.png" )
		LoadImage ( 501, "env/env2_bg.png" )
		LoadImage ( 253, "enemies/mob4.png" )
		LoadImage ( 254, "enemies/mob5.png" )
		LoadImage ( 255, "enemies/mob6.png" )
		LoadImage ( 287, "bosses/boss2.png" )
		LoadMusicOGG ( 5, "music/SILENCE.OGG" )
		LoadImage ( 402, "env/env3.png" )
		LoadImage ( 502, "env/env3_bg.png" )
		LoadImage ( 256, "enemies/mob7.png" )
		LoadImage ( 257, "enemies/mob8.png" )
		LoadImage ( 258, "enemies/mob9.png" )
		LoadImage ( 288, "bosses/boss3.png" )
		LoadMusicOGG ( 6, "music/SILENCE.OGG" )
		LoadImage ( 403, "env/env4.png" )
		LoadImage ( 503, "env/env4_bg.png" )
		LoadImage ( 259, "enemies/mob10.png" )
		LoadImage ( 260, "enemies/mob11.png" )
		LoadImage ( 261, "enemies/mob12.png" )
		LoadImage ( 289, "bosses/boss4.png" )
		LoadMusicOGG ( 7, "music/SILENCE.OGG" )
		LoadImage ( 404, "env/env5.png" )
		LoadImage ( 504, "env/env5_bg.png" )
		LoadImage ( 262, "enemies/mob13.png" )
		LoadImage ( 263, "enemies/mob14.png" )
		LoadImage ( 264, "enemies/mob15.png" )
		LoadImage ( 290, "bosses/boss5.png" )
		LoadMusicOGG ( 8, "music/SILENCE.OGG" )
		LoadImage ( 405, "env/env6.png" )
		LoadImage ( 505, "env/env6_bg.png" )
		LoadImage ( 265, "enemies/mob16.png" )
		LoadImage ( 266, "enemies/mob17.png" )
		LoadImage ( 267, "enemies/mob18.png" )
		LoadImage ( 291, "bosses/boss6.png" )
		LoadMusicOGG ( 9, "music/SILENCE.OGG" )
		LoadImage ( 406, "env/env7.png" )
		LoadImage ( 506, "env/env7_bg.png" )
		LoadImage ( 268, "enemies/mob19.png" )
		LoadImage ( 269, "enemies/mob20.png" )
		LoadImage ( 270, "enemies/mob21.png" )
		LoadImage ( 292, "bosses/boss7.png" )
		LoadMusicOGG ( 10, "music/SILENCE.OGG" )
		LoadImage ( 407, "env/env8.png" )
		LoadImage ( 507, "env/env8_bg.png" )
		LoadImage ( 271, "enemies/mob22.png" )
		LoadImage ( 272, "enemies/mob23.png" )
		LoadImage ( 273, "enemies/mob24.png" )
		LoadImage ( 293, "bosses/boss8.png" )
		LoadMusicOGG ( 11, "music/SILENCE.OGG" )
		LoadImage ( 408, "env/env9.png" )
		LoadImage ( 508, "env/env9_bg.png" )
		LoadImage ( 274, "enemies/mob25.png" )
		LoadImage ( 275, "enemies/mob26.png" )
		LoadImage ( 276, "enemies/mob27.png" )
		LoadImage ( 294, "bosses/boss9.png" )
		LoadMusicOGG ( 12, "music/SILENCE.OGG" )
		LoadImage ( 409, "env/env10.png" )
		LoadImage ( 509, "env/env10_bg.png" )
		LoadImage ( 277, "enemies/mob28.png" )
		LoadImage ( 278, "enemies/mob29.png" )
		LoadImage ( 279, "enemies/mob30.png" )
		LoadImage ( 295, "bosses/boss10.png" )
		LoadMusicOGG ( 13, "music/SILENCE.OGG" )
		LoadImage ( 410, "env/env11.png" )
		LoadImage ( 510, "env/env11_bg.png" )
		LoadImage ( 280, "enemies/mob31.png" )
		LoadImage ( 281, "enemies/mob32.png" )
		LoadImage ( 282, "enemies/mob33.png" )
		LoadImage ( 296, "bosses/boss11.png" )
		LoadMusicOGG ( 14, "music/SILENCE.OGG" )
		LoadMusicOGG ( 15, "music/SILENCE.OGG" )
		LoadImage ( 411, "env/env12.png" )
		LoadImage ( 511, "env/env12_bg.png" )
		LoadImage ( 283, "enemies/mob34.png" )
		LoadImage ( 284, "enemies/mob35.png" )
		LoadImage ( 285, "enemies/mob36.png" )
		LoadImage ( 297, "bosses/boss12.png" )
		
		loadflag = 12
		loaded = 1
		
endfunction

function enemycounter()
	
	if emode_active = 0
		if beststage > 0 and beststage <= 3
			if stage = 1
				enemycount = Random(18,23)
			elseif stage = 2
				enemycount = Random(18,23)
			elseif stage = 3
				enemycount = Random(18,23)
			elseif stage = 4
				enemycount = Random(20,25)
			endif
		elseif beststage > 3 and beststage <= 6
			if stage = 1
				enemycount = Random(13,18)
			elseif stage = 2
				enemycount = Random(13,18)
			elseif stage = 3
				enemycount = Random(13,18)
			elseif stage = 4
				enemycount = Random(18,23)
			elseif stage = 5
				enemycount = Random(18,23)
			elseif stage = 6
				enemycount = Random(18,23)
			elseif stage = 7
				enemycount = Random(20,25)
			endif
		elseif beststage > 6 and beststage <= 9
			if stage = 1
				enemycount = Random(8,13)
			elseif stage = 2
				enemycount = Random(8,13)
			elseif stage = 3
				enemycount = Random(8,13)
			elseif stage = 4
				enemycount = Random(13,18)
			elseif stage = 5
				enemycount = Random(13,18)
			elseif stage = 6
				enemycount = Random(13,18)
			elseif stage = 7
				enemycount = Random(18,23)
			elseif stage = 8
				enemycount = Random(18,23)
			elseif stage = 9
				enemycount = Random(18,23)
			elseif stage = 10
				enemycount = Random(20,25)
			endif
		elseif beststage > 9 and beststage <= 12
			if stage = 1
				enemycount = Random(3,8)
			elseif stage = 2
				enemycount = Random(3,8)
			elseif stage = 3
				enemycount = Random(3,8)
			elseif stage = 4
				enemycount = Random(8,13)
			elseif stage = 5
				enemycount = Random(8,13)
			elseif stage = 6
				enemycount = Random(8,13)
			elseif stage = 7
				enemycount = Random(13,18)
			elseif stage = 8
				enemycount = Random(13,18)
			elseif stage = 9
				enemycount = Random(13,18)
			elseif stage = 10
				enemycount = Random(20,25)
			elseif stage = 11
				enemycount = Random(20,25)
			elseif stage = 12
				enemycount = Random(20,25)
			endif
		endif
	elseif emode_active = 1
		enemycount = Random(20,30)
	endif
	
	totalcount = enemycount
	
endfunction

function sfxload()
	LoadSound ( 1, "sfx/wind.wav" )
	LoadSound ( 2, "sfx/atkstance.wav" )
	LoadSound ( 3, "sfx/defstance.wav" )
	LoadSound ( 4, "sfx/spdstance.wav" )
	LoadSound ( 5, "sfx/tele.wav" )
	LoadSound ( 6, "sfx/leave.wav" )
	LoadSound ( 8, "sfx/stancelvl.wav" )
	LoadSound ( 9, "sfx/enemyhit.wav" )
	LoadSound ( 10, "sfx/enemyhithard.wav" )
	LoadSound ( 11, "sfx/expgain.wav")
	LoadSound ( 12, "sfx/enemydie.wav" )
	LoadSound ( 13, "sfx/tap.wav" )
	LoadSound ( 14, "sfx/playerhit.wav" )
	LoadSound ( 15, "sfx/lvlcomplete.wav" )
	LoadSound ( 16, "sfx/textbip.wav" )
	LoadSound ( 17, "sfx/sell.wav" )
	LoadSound ( 18, "sfx/upgrade.wav" )
	LoadSound ( 19, "sfx/equip.wav" )
	LoadSound ( 20, "sfx/press.wav" )
	LoadSound ( 21, "sfx/chest.wav" )
	LoadSound ( 22, "sfx/stageintro.wav" )
	LoadSound ( 23, "sfx/levelup.wav" )
	LoadSound ( 25, "sfx/death.wav" )
	LoadSound ( 26, "sfx/alert.wav" )
	LoadSound ( 27, "sfx/chaosorb.wav" )
	LoadSound ( 28, "sfx/enemyhit2.wav" )
	LoadSound ( 29, "sfx/enemyhit3.wav" )
	LoadSound ( 30, "sfx/powerup.wav" )
endfunction

function spriteload()

//character
LoadImage ( 600, "character/ss.png")
LoadImage ( 601, "character/ss2.png")

//weapons
LoadImage ( 700, "weapons/0.png")
LoadImage ( 701, "weapons/1.png")
LoadImage ( 702, "weapons/2.png")
LoadImage ( 703, "weapons/3.png")
LoadImage ( 704, "weapons/4.png")
LoadImage ( 705, "weapons/5.png")
LoadImage ( 706, "weapons/6.png")
LoadImage ( 707, "weapons/7.png")
LoadImage ( 708, "weapons/8.png")
LoadImage ( 709, "weapons/9.png")
LoadImage ( 710, "weapons/10.png")
LoadImage ( 711, "weapons/11.png")
LoadImage ( 712, "weapons/12.png")
LoadImage ( 713, "weapons/13.png")
LoadImage ( 714, "weapons/14.png")
LoadImage ( 715, "weapons/15.png")
LoadImage ( 716, "weapons/16.png")
LoadImage ( 717, "weapons/17.png")
LoadImage ( 718, "weapons/18.png")
LoadImage ( 719, "weapons/19.png")
LoadImage ( 720, "weapons/20.png")
LoadImage ( 721, "weapons/21.png")
LoadImage ( 722, "weapons/22.png")
LoadImage ( 723, "weapons/23.png")
LoadImage ( 724, "weapons/24.png")
LoadImage ( 725, "weapons/25.png")
LoadImage ( 726, "weapons/26.png")
LoadImage ( 727, "weapons/27.png")
LoadImage ( 728, "weapons/28.png")
LoadImage ( 729, "weapons/29.png")
LoadImage ( 730, "weapons/30.png")
LoadImage ( 731, "weapons/31.png")
LoadImage ( 732, "weapons/32.png")
LoadImage ( 733, "weapons/33.png")
LoadImage ( 734, "weapons/34.png")
LoadImage ( 735, "weapons/35.png")
LoadImage ( 736, "weapons/36.png")
LoadImage ( 737, "weapons/37.png")
LoadImage ( 738, "weapons/38.png")
LoadImage ( 739, "weapons/39.png")
LoadImage ( 740, "weapons/40.png")
LoadImage ( 741, "weapons/41.png")
LoadImage ( 742, "weapons/42.png")
LoadImage ( 743, "weapons/43.png")
LoadImage ( 744, "weapons/44.png")
LoadImage ( 745, "weapons/45.png")
LoadImage ( 746, "weapons/46.png")
LoadImage ( 747, "weapons/47.png")
LoadImage ( 748, "weapons/48.png")
LoadImage ( 749, "weapons/49.png")
LoadImage ( 750, "weapons/50.png")
LoadImage ( 751, "weapons/51.png")
LoadImage ( 752, "weapons/52.png")
LoadImage ( 753, "weapons/53.png")
LoadImage ( 754, "weapons/54.png")
LoadImage ( 755, "weapons/55.png")
LoadImage ( 756, "weapons/56.png")
LoadImage ( 757, "weapons/57.png")
LoadImage ( 758, "weapons/58.png")
LoadImage ( 759, "weapons/59.png")
LoadImage ( 760, "weapons/60.png")
LoadImage ( 761, "weapons/61.png")
LoadImage ( 762, "weapons/62.png")
LoadImage ( 763, "weapons/63.png")
LoadImage ( 764, "weapons/64.png")
LoadImage ( 765, "weapons/65.png")
LoadImage ( 766, "weapons/66.png")
LoadImage ( 767, "weapons/67.png")
LoadImage ( 768, "weapons/68.png")
LoadImage ( 769, "weapons/69.png")
LoadImage ( 770, "weapons/70.png")
LoadImage ( 771, "weapons/71.png")
LoadImage ( 772, "weapons/72.png")
LoadImage ( 773, "weapons/73.png")
LoadImage ( 774, "weapons/74.png")
LoadImage ( 775, "weapons/75.png")
LoadImage ( 776, "weapons/76.png")
LoadImage ( 777, "weapons/77.png")
LoadImage ( 778, "weapons/78.png")

LoadImage ( 799, "fx/trail.png")

//shields
LoadImage ( 800, "shields/0.png")
LoadImage ( 801, "shields/1.png")
LoadImage ( 802, "shields/2.png")
LoadImage ( 803, "shields/3.png")
LoadImage ( 804, "shields/4.png")
LoadImage ( 805, "shields/5.png")
LoadImage ( 806, "shields/6.png")
LoadImage ( 807, "shields/7.png")
LoadImage ( 808, "shields/8.png")
LoadImage ( 809, "shields/9.png")
LoadImage ( 810, "shields/10.png")
LoadImage ( 811, "shields/11.png")
LoadImage ( 812, "shields/12.png")
LoadImage ( 813, "shields/13.png")
LoadImage ( 814, "shields/14.png")
LoadImage ( 815, "shields/15.png")
LoadImage ( 816, "shields/16.png")
LoadImage ( 817, "shields/17.png")
LoadImage ( 818, "shields/18.png")
LoadImage ( 819, "shields/19.png")
LoadImage ( 820, "shields/20.png")
LoadImage ( 821, "shields/21.png")
LoadImage ( 822, "shields/22.png")
LoadImage ( 823, "shields/23.png")
LoadImage ( 824, "shields/24.png")
LoadImage ( 825, "shields/25.png")
LoadImage ( 826, "shields/26.png")

//winders
LoadImage ( 900, "winders/bronze.png")
LoadImage ( 901, "winders/iron.png")
LoadImage ( 902, "winders/silver.png")
LoadImage ( 903, "winders/gold.png")
LoadImage ( 904, "winders/emerald.png")
LoadImage ( 905, "winders/sapphire.png")
LoadImage ( 906, "winders/ruby.png")
LoadImage ( 907, "winders/diamond.png")

endfunction

function splashchar()
	//charactersprite
	CreateSprite (600, 600)
	if skin = 0
		SetSpriteImage (600, 600)
	elseif skin = 1
		SetSpriteImage (600, 601)
	endif
	SetSpriteColorAlpha (600, 0)
	SetSpriteSize (600, 13.3, 16.4)
	SetSpritePosition (600, 41.7, 41.7)
	SetSpriteAnimation(600, 48, 105, 6)
	FixSpriteToScreen (600, 1)
	SetSpriteDepth (600, 2)
	PlaySprite ( 600, 4, 1, 1, 4 )
	
	//weaponsprite
	CreateSprite (700, wsprite)
	SetSpriteColorAlpha (700, 0)
	SetSpriteSize (700, 20.8, 21.9)
	SetSpriteOffset ( 700, (GetSpriteWidth(700)/2), (GetSpriteHeight(700) - (GetSpriteHeight(700)/10)) )
	SetSpritePositionByOffset (700, 51.7, 50.6+0.5)
	SetSpriteAngle ( 700, weaponAngle )
	SetSpriteAnimation(700, 75, 140, 2)
	FixSpriteToScreen (700, 1)
	SetSpriteDepth (700, 3)
	PlaySprite ( 700, 4 )
	
	//shieldsprite
	CreateSprite (800, ssprite)
	SetSpriteColorAlpha (800, 0)
	SetSpriteSize (800, 26.7, 15)
	//SetSpriteOffset ( 800, (GetSpriteWidth(800)/2), (GetSpriteHeight(800)/2) )
	SetSpritePosition (800, 34.975, 43.57)
	SetSpriteAnimation(800, 96, 96, 2)
	FixSpriteToScreen (800, 1)
	SetSpriteDepth (800, 1)
	PlaySprite ( 800, 4 )
	
	//windersprite
	CreateSprite (900, winderval)
	SetSpriteColorAlpha (900, 0)
	SetSpriteSize (900, 7.5, 6.1)
	SetSpritePosition (900, 36.7, 46.85)
	SetSpriteAnimation(900, 27, 39, 4)
	FixSpriteToScreen (900, 1)
	SetSpriteDepth (900, 3)
	PlaySprite ( 900, 4 )

endfunction

function uiload()

//mainscreen ui
LoadImage ( 200, "ui/main/mainui.png" )
LoadImage ( 201, "ui/main/atkstance.png" )
LoadImage ( 202, "ui/main/defstance.png" )
LoadImage ( 203, "ui/main/spdstance.png" )
LoadImage ( 204, "ui/main/homebtn.png" )
LoadImage ( 205, "ui/main/cogbtn.png" )
LoadImage ( 206, "ui/main/largecog.png" )
LoadImage ( 207, "ui/main/smallcog.png" )
LoadImage ( 208, "ui/main/hppip.png" )
LoadImage ( 209, "ui/main/eppip.png" )
LoadImage ( 210, "ui/main/exppip.png" )
LoadImage ( 211, "ui/main/stancepip.png" )
LoadImage ( 213, "ui/main/enemybar.png" )
LoadImage ( 214, "misc/chestopen1.png" )
LoadImage ( 215, "ui/main/levelup.png" )
LoadImage ( 216, "ui/main/atkup.png" )
LoadImage ( 217, "ui/main/defup.png" )
LoadImage ( 218, "ui/main/agiup.png" )
LoadImage ( 219, "ui/main/lukup.png" )
LoadImage ( 220, "ui/main/ok.png" )
LoadImage ( 221, "ui/main/reset.png" )
LoadImage ( 222, "misc/chestopen2.png" )
LoadImage ( 223, "fx/alert.png" )
LoadImage ( 224, "misc/orb.png" )
LoadImage ( 225, "ui/main/pbar.png")
LoadImage ( 226, "ui/main/pbarpip.png")
LoadImage ( 227, "misc/worb.png")
LoadImage ( 228, "misc/morb.png")
LoadImage ( 229, "misc/porb.png")

//homescreen ui
LoadImage ( 300, "ui/home/homeui.png" )
LoadImage ( 301, "ui/home/env1.png" )
LoadImage ( 302, "ui/home/sellbtn.png" )
LoadImage ( 303, "ui/home/upgradebtn.png" )
LoadImage ( 304, "ui/home/equipbtn.png" )
LoadImage ( 305, "ui/home/outbtn.png" )
LoadImage ( 306, "ui/home/lscroll.png" )
LoadImage ( 307, "ui/home/rscroll.png" )
LoadImage ( 308, "ui/home/tierbg.png" )
LoadImage ( 309, "ui/home/next.png" )
LoadImage ( 310, "ui/home/crafstman.png" )
LoadImage ( 312, "fx/bling.png" )
LoadImage ( 313, "ui/home/exit.png" )
LoadImage ( 314, "ui/home/csheet.png" )
LoadImage ( 315, "ui/home/orbbtn.png" )
LoadImage ( 316, "ui/home/closeside.png" )
LoadImage ( 317, "ui/home/sheetwindow.png" )
LoadImage ( 318, "ui/home/orbwindow.png" )
LoadImage ( 319, "ui/home/orbuse.png" )
LoadImage ( 320, "ui/home/orboutbtn.png" )
LoadImage ( 9090, "ui/bonfire.png" )
LoadImage ( 9091, "fx/bling2.png" )

//new everything

LoadImage ( 9100, "ui/home/giftok.png")
LoadImage ( 9101, "ui/home/giftwind.png")
LoadImage ( 9102, "ui/home/c_orb.png")
LoadImage ( 9103, "ui/home/w_orb.png")
LoadImage ( 9104, "ui/home/m_orb.png")
LoadImage ( 9105, "ui/home/p_orb.png")
LoadImage ( 9106, "ui/home/worboutbtn.png")
LoadImage ( 9107, "ui/home/morboutbtn.png")
LoadImage ( 9108, "ui/home/porboutbtn.png")
LoadImage ( 9109, "ui/home/gift.png")

endfunction

function fightvarz()

//fight vars
global fightBoolean = 0
global hitcount as integer = 0
global curdmgnum as integer = 1000
global lastmostdmgnum as integer = 0
global critcheck as integer = 0
global dmgNum as integer = 0
global dmgtween = 0
global barup = 0
global bartween = 0
global bartween2 = 0
global piptween = 0
global piptween2 = 0
global enemynametween = 0
global enemynametween2 = 0
global enemyname as string
global enemyTrue = 0
global swingstage = 0
global curmob = 0
global enemyx as float = 0
global enemycount as float = 0
global totalcount as float = 0
global timecheck = 0
global enemyloccheck = 0
global enemydmg as float = 0
global enemydefdmg as float = 0
global wait = 0
global turn = 0
global hit = 0
global fightchecks = 0
global enemyhp as float = 0
global enemymaxhp as float = 0
global enemyexp = 0
global lootexist = 0
global chestexist = 0
global lootcheck as float = 0
global orbcheck as float = 0
global orbexist = 0
global goldget as float = 0
global dmgtaken = 0
global enemygold as float = 0
global timeset = 0
global dmgheight = 0

//boss vars
global bosstrue = 0
global alert = 0
global atktime as float = 0
global patternset = 0

endfunction

function statHandler()
	
	s1reqexp = stancearray[stance1]
	s2reqexp = stancearray[stance2]
	s3reqexp = stancearray[stance3]
	
	magicadj()
	
	for i = 0 to max_inv_space
		if inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 0
			equipvals[0] = inventoryArray[i].mindmg
			equipvals[1] = inventoryArray[i].maxdmg
		elseif inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 1
			equipvals[2] = inventoryArray[i].defence
		endif
	next i
	
	emindmg = equipvals[0]
	emaxdmg = equipvals[1]
	edef = equipvals[2]

	if (agility + vagility) =< 200
		patkspeed = (agility + vagility)/25
	elseif (agility + vagility) > 200
		patkspeed = 8
	endif
	
	if (luck + vluck) =< 250
		pcc = (luck + vluck) * 0.2
		pmagicfind = (luck + vluck) * 0.05
		pgoldfind = ((luck + vluck) * 0.2) + 1
	elseif (luck + vluck) > 250
		pcc = 50
		pmagicfind = 12.5
		pgoldfind = 50
	endif
	
	stance1mod = 1.1 * (1 + stance1)
	stance1drain = stance1 * 3
	stance2mod = 1.1 * (1 + stance2)
	stance2drain = stance2 * 3
	stance3mod = 0.07 * stance3
	stance3drain = stance3 * 0.05
	
	max_hp = (level * 10) + 90
	req_exp = (level * 3)*(10 * level)
	
endfunction

function smallhandler()
	
	magicadj()

	for i = 0 to max_inv_space
		if inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 0
			equipvals[0] = inventoryArray[i].mindmg
			equipvals[1] = inventoryArray[i].maxdmg
		elseif inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 1
			equipvals[2] = inventoryArray[i].defence
		endif
	next i
	
	emindmg = equipvals[0]
	emaxdmg = equipvals[1]
	edef = equipvals[2]
	
	//pcc = luck * 0.5

	if (agility + vagility) =< 200
		patkspeed = (agility + vagility)/25
	elseif (agility + vagility) > 200
		patkspeed = 8
	endif
	
	pdef = (((defence + vdefence)/4) + edef)
		
	if (luck + vluck) =< 250
		pcc = (luck + vluck) * 0.2
		pmagicfind = (luck + vluck) * 0.05
		pgoldfind = ((luck + vluck) * 0.2) + 1
	elseif (luck + vluck) > 250
		pcc = 50
		pmagicfind = 12.5
		pgoldfind = 50
	endif

endfunction

function equiphandler()
	
	if inventoryArray[cur_item_sel].itemtype = 0
		for i = 0 to max_inv_space
			if inventoryArray[i].itemtype = 0
				inventoryArray[i].equipval = 0
			endif
		next i
		SetSpriteImage ( 700, inventoryArray[cur_item_sel].spriteid )
		SetSpriteAnimation(700, 75, 140, 2)
	elseif inventoryArray[cur_item_sel].itemtype = 1
		for i = 0 to max_inv_space
			if inventoryArray[i].itemtype = 1
				inventoryArray[i].equipval = 0
			endif
		next i
		SetSpriteImage ( 800, inventoryArray[cur_item_sel].spriteid )
		SetSpriteAnimation(800, 96, 96, 2)
	endif
	
	inventoryArray[cur_item_sel].equipval = 1
	
	if inventoryArray[cur_item_sel].itemtype = 0
		equipvals[0] = inventoryArray[cur_item_sel].mindmg
		equipvals[1] = inventoryArray[cur_item_sel].maxdmg
	elseif inventoryArray[cur_item_sel].itemtype = 1
		equipvals[2] = inventoryArray[cur_item_sel].defence
	endif
	
	
	
endfunction

function magicadj()
	
	vattack = 0
	vdefence = 0
	vagility = 0
	vluck = 0
	ma01 = 0
	ma02 = 0
	ma03 = 0
	ma11 = 0
	ma12 = 0
	ma13 = 0
	
	for i = 0 to max_inv_space
		if inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 0
			if inventoryArray[i].prop1exist = 1
				ma01 = inventoryArray[i].prop1val
				select inventoryArray[i].prop1
					case "ATTACK"
						vattack = vattack + ma01
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma01
					endcase
					case "AGILITY"
						vagility = vagility + ma01
					endcase
					case "LUCK"
						vluck = vluck + ma01
					endcase
				endselect
			elseif inventoryArray[i].prop1exist = 0
				ma01 = 0
			endif
			if inventoryArray[i].prop2exist = 1
				ma02 = inventoryArray[i].prop2val
				select inventoryArray[i].prop2
					case "ATTACK"
						vattack = vattack + ma02
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma02
					endcase
					case "AGILITY"
						vagility = vagility + ma02
					endcase
					case "LUCK"
						vluck = vluck + ma02
					endcase
				endselect
			elseif inventoryArray[i].prop2exist = 0
				ma02 = 0
			endif
			if inventoryArray[i].prop3exist = 1
				ma03 = inventoryArray[i].prop3val
				select inventoryArray[i].prop3
					case "ATTACK"
						vattack = vattack + ma03
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma03
					endcase
					case "AGILITY"
						vagility = vagility + ma03
					endcase
					case "LUCK"
						vluck = vluck + ma03
					endcase
				endselect
			elseif inventoryArray[i].prop3exist = 0
				ma03 = 0
			endif
		endif
	next i
	
	for i = 0 to max_inv_space
		if inventoryArray[i].equipval = 1 and inventoryArray[i].itemtype = 1
			if inventoryArray[i].prop1exist = 1
				ma11 = inventoryArray[i].prop1val
				select inventoryArray[i].prop1
					case "ATTACK"
						vattack = vattack + ma11
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma11
					endcase
					case "AGILITY"
						vagility = vagility + ma11
					endcase
					case "LUCK"
						vluck = vluck + ma11
					endcase
				endselect
			elseif inventoryArray[i].prop1exist = 0
				ma11 = 0
			endif
			if inventoryArray[i].prop2exist = 1
				ma12 = inventoryArray[i].prop2val
				select inventoryArray[i].prop2
					case "ATTACK"
						vattack = vattack + ma12
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma12
					endcase
					case "AGILITY"
						vagility = vagility + ma12
					endcase
					case "LUCK"
						vluck = vluck + ma12
					endcase
				endselect
			elseif inventoryArray[i].prop2exist = 0
				ma12 = 0
			endif
			if inventoryArray[i].prop3exist = 1
				ma13 = inventoryArray[i].prop3val
				select inventoryArray[i].prop3
					case "ATTACK"
						vattack = vattack + ma13
					endcase
					case "DEFENCE"
						vdefence = vdefence + ma13
					endcase
					case "AGILITY"
						vagility = vagility + ma13
					endcase
					case "LUCK"
						vluck = vluck + ma13
					endcase
				endselect
			elseif inventoryArray[i].prop3exist = 0
				ma13 = 0
			endif
		endif
	next i
	
endfunction

function windUp()
	
	if cogAngle = 0
		PlaySound(1)
	endif
	
	if cogAngle =< 75
		cogAngle = cogAngle + 15
		SetSpriteAngle ( 206, cogAngle )
		SetSpriteAngle ( 207, -cogAngle )
	elseif cogAngle = 90
		cogAngle = 0
		buttonID = 0
		windAmount = max_energy/4
		cur_energy = cur_energy + windAmount
	endif
	
endfunction

function barSizer()
	
	if cur_hp => max_hp
		cur_hp = max_hp
	endif
	
	if cur_hp > 0	
		SetSpriteSize ( 208, 78.4 * (cur_hp/max_hp), 2.35 )
	endif
	
	if cur_energy => max_energy
		cur_energy = max_energy
	endif
	
	if cur_energy =< 0
		cur_energy = 0
	endif
	
	if cur_energy > 0	
		SetSpriteSize ( 209, 78.4 * (cur_energy/max_energy), 2.35 )
	elseif cur_energy =< 0
		SetSpriteSize ( 209, 0, 0)
	endif
	
	if cur_exp > 0 and cur_exp < req_exp
		SetSpriteSize ( 210, 78.4 * (cur_exp/req_exp), 2.3)
	elseif cur_exp =< 0
		SetSpriteSize ( 210, 0, 0)
	elseif cur_exp => req_exp
		
		
		PlaySound (23)
		
		for i = 600 to 900 step 100
			StopSprite ( i )
		next i
		
		cur_exp = cur_exp - req_exp
		SetSpriteSize ( 210, 78.4 * (cur_exp/req_exp), 0)
		level = level + 1
		statpoints = statpoints + 3
		statpointhold = statpoints
		max_hp = (level * 10) + 90
		cur_hp = max_hp
		SetSpriteSize ( 208, 78.4 * (cur_hp/max_hp), 2.35 )
		if GetTextExists(17) = 1
			SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
		endif
		statHandler()
		
		if GetGameCenterLoggedIn() = 1 and level < 101
			achievementhandler()
		endif
		
		save()
		levelup1()
	endif
	
	//STARTSTANCELEVEL
	
	if s1exp => s1reqexp and stance1 < 20
		PlaySound(8)
		s1exp = 0
		stance1 = stance1 + 1
		s1reqexp = stancearray[stance1]
		statHandler()
	endif
	
	if s1exp > 0 and stance1 < 20
		SetSpriteSize ( 211, 22.3 * (s1exp/s1reqexp), 0.5)
	elseif s1exp =< 0
		SetSpriteSize (211, 0, 0)
	endif
	
	if s2exp => s2reqexp and stance2 < 20
		PlaySound(8)
		s2exp = 0
		stance2 = stance2 + 1
		s2reqexp = stancearray[stance2]
		statHandler()
	endif
	
	if s2exp > 0 and stance2 < 20
		SetSpriteSize ( 212, 22.3 * (s2exp/s2reqexp), 0.5)
	elseif s2exp =< 0
		SetSpriteSize (212, 0, 0)
	endif
	
	if s3exp => s3reqexp and stance3 < 10
		PlaySound(8)
		s3exp = 0
		stance3 = stance3 + 1
		s3reqexp = stancearray[stance3]
		statHandler()
	endif
	
	if s3exp > 0  and stance3 < 10
		SetSpriteSize ( 213, 22.3 * (s3exp/s3reqexp), 0.5)
	elseif s3exp =< 0
		SetSpriteSize (213, 0, 0)
	endif
	
	//ENDSTANCELEVEL
	
	if stance1 = 20
		s1exp = 0
		s1reqexp = 0
	endif
	if stance2 = 20
		s2exp = 0
		s2reqexp = 0
	endif
	if stance3 = 10
		s3exp = 0
		s3reqexp = 0
	endif
	
	//ENEMYBAR
	if enemyhp > 0
		SetSpriteSize ( 221, 78.4 * (enemyhp/enemymaxhp), 2.35 )
	elseif enemyhp =< 0
		DeleteSprite ( 221 )
	endif
	
	if GetTweenSpritePlaying ( leveluptween, 222) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
	if bosstrue = 0 and enemycount < totalcount
		SetSpriteSize (230, 40 * (1 - (enemycount/totalcount)), 0.45 )
	elseif bosstrue > 0 and bosstrue < 2
		DeleteSprite ( 230 )
		SetSpriteFrame ( 229, 2)
	endif

endfunction

function deathseq()
	
	if dseq = 0
		ResetTimer()
		for i = 700 to 800
			StopSprite (i)
		next i
			PlaySprite (600, 4, 0, 1, 1 )
			PlaySprite (900, 4, 0, 1, 1 )
			timesdied = timesdied + 1		
		dseq = 1
	endif
	
	if Timer() > 0.4 and dseq = 1
		PlaySound (25)
		PlaySprite ( 600, 4, 0, 5, 5 )
		for i = 700 to 900 step 100
			SetSpriteY ( i, GetSpriteY (i) + 0.55 )
		next i
		dseq = 2
	endif
	
	if Timer() > 0.55 and dseq = 2
		PlaySprite ( 600, 4, 0, 6, 6 )
		for i = 700 to 900 step 100
			SetSpriteY ( i, GetSpriteY (i) + 2.33 )
		next i
		dseq = 3
	endif
	
	if Timer() > 2 and dseq = 3
		PlaySound(5)
		//contcheck = 0
		if stage = 12
			homecheck = 1
		endif
		flag = 1
	endif
	
endfunction

function levelup1()
	
	if levelup = 0
		
		leveluptween = CreateTweenSprite ( 1.5 )
		SetTweenSpriteY (leveluptween, 114.1, 14.1-1.4, TweenEaseIn1() )
		statuptween = CreateTweenSprite ( 1.5 )
		SetTweenSpriteY (statuptween, 122, 22-1.4, TweenEaseIn1() )
		oktween = CreateTweenSprite ( 1.5 )
		SetTweenSpriteY (oktween, 115.5, 15.5-1.4, TweenEaseIn1() )
		resettween = CreateTweenSprite ( 1.5 )
		SetTweenSpriteY (resettween, 125.3, 25.3-1.4, TweenEaseIn1() )
		plustween = CreateTweenText ( 1.5 )
		SetTweenTextY (plustween, 129.5, 29.5-1.4, TweenEaseIn1() )
		pointstween = CreateTweenText ( 1.5 )
		SetTweenTextY (pointstween, 131.9, 31.9-1.4, TweenEaseIn1() )
		
		CreateSprite ( 222, 215 )
		SetSpriteSize ( 222, 100, 22 )
		SetSpritePosition ( 222, 0, 114.1 )
		FixSpriteToScreen ( 222, 1 )
		SetSpriteDepth ( 222, 5 )
		
		CreateSprite ( 223, 216 )
		SetSpriteSize ( 223, 12.5, 7.1 )
		SetSpritePosition ( 223, 8.9, 12 )
		FixSpriteToScreen ( 223, 1 )
		SetSpriteDepth ( 223, 4 )
		SetSpriteAnimation ( 223, 45, 45, 3 )
		PlaySprite ( 223, 2, 1, 1, 2 )
		
		CreateSprite ( 224, 217 )
		SetSpriteSize ( 224, 12.5, 7.1 )
		SetSpritePosition ( 224, 22.2, 12 )
		FixSpriteToScreen ( 224, 1 )
		SetSpriteDepth ( 224, 4 )
		SetSpriteAnimation ( 224, 45, 45, 3 )
		PlaySprite ( 224, 2, 1, 1, 2 )
		
		CreateSprite ( 225, 218 )
		SetSpriteSize ( 225, 12.5, 7.1 )
		SetSpritePosition ( 225, 35.6, 122 )
		FixSpriteToScreen ( 225, 1 )
		SetSpriteDepth ( 225, 4 )
		SetSpriteAnimation ( 225, 45, 45, 3 )
		PlaySprite ( 225, 2, 1, 1, 2 )
		
		CreateSprite ( 226, 219 )
		SetSpriteSize ( 226, 12.5, 7.1 )
		SetSpritePosition ( 226, 48.9, 122 )
		FixSpriteToScreen ( 226, 1 )
		SetSpriteDepth ( 226, 4 )
		SetSpriteAnimation ( 226, 45, 45, 3 )
		PlaySprite ( 226, 2, 1, 1, 2 )
		
		CreateSprite ( 227, 220 )
		SetSpriteSize ( 227, 25.6, 9.3 )
		SetSpritePosition ( 227, 66.1, 115.5 )
		FixSpriteToScreen ( 227, 1 )
		SetSpriteDepth ( 227, 4 )
		
		CreateSprite ( 228, 221 )
		SetSpriteSize ( 228, 25.6, 9.3 )
		SetSpritePosition ( 228, 66.1, 125.3 )
		FixSpriteToScreen ( 228, 1 )
		SetSpriteDepth ( 228, 4 )
		
		for i = 13 to 16
			CreateText ( i, "0")
			SetTextSize ( i, 1.35 )
			SetTextColor ( i, 255, 255, 255, 255 )
			SetTextAlignment ( i, 1 )
			FixTextToScreen ( i, 1 ) 
			SetTextDepth ( i, 4 )
		next i
		
		SetTextPosition ( 13, 15.1, 129.5 )
		SetTextPosition ( 14, 28.5, 129.5 )
		SetTextPosition ( 15, 41.8, 129.5 )
		SetTextPosition ( 16, 55.1, 129.5 )
		
		CreateText ( 17, "REMAINING POINTS:" + str(statpoints) )
		SetTextString ( 17, "REMAINING POINTS:" + str(statpoints) )
		SetTextSize ( 17, 1.3 )
		SetTextColor ( 17, 255, 255, 255, 255 )
		SetTextPosition ( 17, 35.1, 131.9 )
		SetTextAlignment ( 17, 1 )
		FixTextToScreen ( 17, 1 ) 
		SetTextDepth ( 17, 4 )
		
		
		PlayTweenSprite (leveluptween, 222, 0)
		PlayTweenSprite (statuptween, 223, 0)	
		PlayTweenSprite (statuptween, 224, 0)
		PlayTweenSprite (statuptween, 225, 0)
		PlayTweenSprite (statuptween, 226, 0)
		PlayTweenSprite (oktween, 227, 0)
		PlayTweenSprite (resettween, 228, 0)
		for i = 13 to 16
			PlayTweenText (plustween, i, 0)
		next i
		PlayTweenText (pointstween, 17, 0)
		
		levelup = 1
		
	endif
	
endfunction

function levelup2()
	
	leveluptween2 = CreateTweenSprite ( 1 )
	SetTweenSpriteY (leveluptween2, 14.1-1.4, 64.1, TweenEaseOut1() )
	statuptween2 = CreateTweenSprite ( 1 )
	SetTweenSpriteY (statuptween2, 22-1.4, 72, TweenEaseOut1() )
	oktween2 = CreateTweenSprite ( 1 )
	SetTweenSpriteY (oktween2, 15.5-1.4, 65.5, TweenEaseOut1() )
	resettween2 = CreateTweenSprite ( 1 )
	SetTweenSpriteY (resettween2, 25.3-1.4, 75.3, TweenEaseOut1() )
	plustween2 = CreateTweenText ( 1 )
	SetTweenTextY (plustween2, 29.5-1.4, 79.5, TweenEaseOut1() )
	pointstween2 = CreateTweenText ( 1 )
	SetTweenTextY (pointstween2, 31.9-1.4, 81.9, TweenEaseOut1() )
	
	if GetSpriteY (222) < 114.1
		PlayTweenSprite (leveluptween2, 222, 0)
		PlayTweenSprite (statuptween2, 223, 0)	
		PlayTweenSprite (statuptween2, 224, 0)
		PlayTweenSprite (statuptween2, 225, 0)
		PlayTweenSprite (statuptween2, 226, 0)
		PlayTweenSprite (oktween2, 227, 0)
		PlayTweenSprite (resettween2, 228, 0)
		for i = 13 to 16
			PlayTweenText (plustween2, i, 0)
		next i
		PlayTweenText (pointstween2, 17, 0)
	endif
	
	if GetTweenSpritePlaying ( leveluptween2, 222 ) = 1
		UpdateAllTweens ( GetFrameTime() )
	endif
	
endfunction

function bossachievement()
	
	if stage = 1 and b1k = 0
		b1k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 2 and b2k = 0
		b2k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 3 and b3k = 0
		b3k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 4 and b4k = 0
		b4k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 5 and b5k = 0
		b5k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 6 and b6k = 0
		b6k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 7 and b7k = 0
		b7k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 8 and b8k = 0
		b8k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 9 and b9k = 0
		b9k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 10 and b10k = 0
		b10k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 11 and b11k = 0
		b11k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if stage = 12 and b12k = 0
		b12k = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
endfunction

function beststagehandler()
	
	if stage = 1
		if beststage < 1
			beststage = 1
		endif
	elseif stage = 2
		if beststage < 2
			beststage = 2
		endif
	elseif stage = 3
		if beststage < 3
			beststage = 3
		endif
	elseif stage = 4
		if beststage < 4
			beststage = 4
		endif
	elseif stage = 5
		if beststage < 5
			beststage = 5
		endif
	elseif stage = 6
		if beststage < 6
			beststage = 6
		endif
	elseif stage = 7
		if beststage < 7
			beststage = 7
		endif
	elseif stage = 8
		if beststage < 8
			beststage = 8
		endif
	elseif stage = 9
		if beststage < 9
			beststage = 9
		endif
	elseif stage = 10
		if beststage < 10
			beststage = 10
		endif
	elseif stage = 11
		if beststage < 11
			beststage = 11
		endif
	elseif stage = 12
		if beststage < 12
			beststage = 12
		endif
	endif
	
	if beststage > 12
		beststage = 12
	endif
	
endfunction

function achievementhandler()
	
	if totalkills > 99 and ka1 = 0
		ka1 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalkills > 499 and ka2 = 0
		ka2 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalkills > 999 and ka3 = 0
		ka3 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalkills => 2500 and ka4 = 0
		ka4 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalgold > 4999 and ga1 = 0
		ga1 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalgold > 49999 and ga2 = 0
		ga2 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalgold > 499999 and ga3 = 0
		ga3 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if totalgold => 1000000 and ga4 = 0
		ga4 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if level => 10 and la1 = 0
		la1 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if level => 25 and la2 = 0
		la2 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if level => 50 and la3 = 0
		la3 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
	if level => 100 and la4 = 0
		la4 = 1
		GameCenterSubmitAchievement ( "", 100 )
	endif
	
endfunction

function startergear()
inventoryArray[0].name = "WOODEN SWORD" : inventoryArray[0].itemtype = 0 : inventoryArray[0].mindmg = 1 : inventoryArray[0].maxdmg = 5 : inventoryArray[0].defence = 0 : inventoryArray[0].prop1 = "" : inventoryArray[0].prop2 = "" : inventoryArray[0].prop3 = "" : inventoryArray[0].prop1val = 0 : inventoryArray[0].prop2val = 0 : inventoryArray[0].prop3val = 0 : inventoryArray[0].prop1exist = 0 : inventoryArray[0].prop2exist = 0 : inventoryArray[0].prop3exist = 0 : inventoryArray[0].sellval = 10*costmod : inventoryArray[0].upgradelvl = 0 : inventoryArray[0].upgradecost = 20*costmod : inventoryArray[0].equipval = 1 : inventoryArray[0].rarity = 0 : inventoryArray[0].spriteid = 700
inventoryArray[1].name = "BUCKLER" : inventoryArray[1].itemtype = 1 : inventoryArray[1].mindmg = 0 : inventoryArray[1].maxdmg = 0 : inventoryArray[1].defence = 2 : inventoryArray[1].prop1 = "" : inventoryArray[1].prop2 = "" : inventoryArray[1].prop3 = "" : inventoryArray[1].prop1val = 0 : inventoryArray[1].prop2val = 0 : inventoryArray[1].prop3val = 0 : inventoryArray[1].prop1exist = 0 : inventoryArray[1].prop2exist = 0 : inventoryArray[1].prop3exist = 0 : inventoryArray[1].sellval = 10*costmod : inventoryArray[1].upgradelvl = 0 : inventoryArray[1].upgradecost = 20*costmod : inventoryArray[1].equipval = 1 : inventoryArray[1].rarity = 0 : inventoryArray[1].spriteid = 800
endfunction

function overlayUp()
	if screen = 0
		
		fadeIn = CreateTweenSprite ( 0.8 )
		SetTweenSpriteAlpha( fadeIn, 0, 255, TweenSmooth1() )
		fadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha( fadeOut, 255, 0, TweenEaseOut1() )
		
		if exitflag = 0
			
			PlayTweenSprite( fadeIn, 100, 0 )
			
			count# = Timer()
			while ( (Timer() - count#) < 3 )
				UpdateAllTweens ( GetFrameTime() )
				
				Sync()
			endwhile
			sfxload()
			spriteload()
			bulkload()
			
			if loaded = 1
				PlayTweenSprite ( fadeOut, 100, 0 )
			endif
			while ( GetTweenSpritePlaying (fadeOut, 100))
				UpdateAllTweens ( GetFrameTime() )
				
				Sync()
			endwhile
		endif
			
		splashchar()
		if musicoff = 0
			PlayMusicOGG ( 1, 1)
			SetMusicSystemVolumeOGG(20)
		endif
		wtstage = 0
		wuwtween = CreateTweenSprite ( 1.5 )
		SetTweenSpriteYByOffset ( wuwtween, 40, 20.5, TweenSmooth1())
		SetTweenSpriteAlpha( wuwtween, 0, 255, TweenSmooth1() )
		PlayTweenSprite ( wuwtween, 101, 0 )
		fadeText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha (fadeText, 0, 255, TweenEaseIn1() )
		PlayTweenText ( fadeText, 100, 1.7 )
		PlayTweenText ( fadeText, 9997, 1.7 )
		for i = 400 to 900 step 100
			PlayTweenSprite ( fadeIn, i, 2.2 )
		next i
			PlayTweenSprite ( fadeIn, 501, 2.2 )
			PlayTweenSprite (fadeIn, 102, 1.7)
			PlayTweenSprite (starttween1, 103, 2)
			PlayTweenSprite (lbtween1, 104, 2)
			PlayTweenSprite (achitween1, 105, 2)
			PlayTweenSprite (settween1, 106, 2)
			PlayTweenSprite (premtween1, 2000, 2)
		while ( GetTweenSpritePlaying(wuwtween, 101) )
			if bgcol < 255
				bgcol = bgcol + 5
				SetClearColor ( bgcol, bgcol, bgcol )
			endif
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
	elseif screen = 1
		fadeText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha (fadeText, 0, 255, TweenEaseIn1() )
		loadFadeIn = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha ( loadFadeIn, 0, 127, TweenEaseIn1() )
		
		PlayTweenText ( fadeText, 100, 0 )
		PlayTweenText ( fadeText, 101, 0 )
		PlayTweenSprite (loadFadeIn, 9090, 0 )
		while ( GetTweenTextPlaying (fadeText, 100))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
	elseif screen = 2
		fadeIn = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha ( fadeIn, 0, 255, TweenEaseIn1() )
		fadeText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha ( fadeText, 0, 255, TweenEaseIn1() )
		for i = 1 to 12
			PlayTweenText ( fadeText, i, 0 )
		next i
			PlayTweenText ( fadeText, 21, 0 )
		for i = 200 to 213
			PlayTweenSprite( fadeIn, i, 0 )
		next i
		for i = 400 to 403
			PlayTweenSprite ( fadeIn, i, 0)
		next i
		for i = 500 to 501
			PlayTweenSprite ( fadeIn, i, 0)
		next i
		for i = 600 to 900 step 100
			PlayTweenSprite ( fadeIn, i, 0)
		next i
		for i = 229 to 230
			PlayTweenSprite ( fadeIn, i, 0)
		next i
		if GetSpriteExists (220)
			PlayTweenSprite ( fadeIn, 220, 0 )
			PlayTweenSprite ( fadeIn, 221, 0 )
			PlayTweenText ( fadeText, 222, 0 )
		endif
		while ( GetTweenSpritePlaying (fadeIn, 200))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
	elseif screen = 3
		fadeIn = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha ( fadeIn, 0, 255, TweenEaseIn1() )
		fadeText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha ( fadeText, 0, 255, TweenEaseIn1() )
		for i = 1 to 2
			PlayTweenText ( fadeText, i, 0 )
		next i
		for i = 4 to 13
			PlayTweenText ( fadeText, i, 0 )
		next i
		for i = 300 to 900 step 100
			PlayTweenSprite( fadeIn, i, 0 )
		next i
			PlayTweenSprite( fadeIn, 501, 0 )
		for i = 302 to 311
			PlayTweenSprite( fadeIn, i, 0 )
		next i
		if GetSpriteExists(328) = 1
			PlayTweenSprite( fadeIn, 328, 0 )
		endif			
		while ( GetTweenSpritePlaying (fadeIn, 300))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
	elseif screen = 4
		fadeText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha (fadeText, 0, 255, TweenEaseIn1() )
		fadeIn = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha ( fadeIn, 0, 255, TweenEaseIn1() )
		
		for i = 2100 to 2113
			PlayTweenSprite (fadeIn, i, 0)
		next i
		
		for i = 2100 to 2103
			PlayTweenText (fadeText, i, 0)
		next i
		
		while ( GetTweenTextPlaying (fadeIn, 2100))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
	endif
endfunction

function overlayDown()
	if screen = 0
		fadeOut = CreateTweenText ( 1.5 )
		SetTweenTextAlpha (fadeOut, 255, 0, TweenEaseOut1() )
		PlayTweenText (fadeOut, 100, 0)
		PlayTweenText (fadeOut, 9997, 0)
		fadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha (fadeOut, 255, 0, TweenEaseOut1() )
		PlayTweenSprite (fadeOut, 101, 0 )
		PlayTweenSprite (fadeOut, 102, 1 )
		PlayTweenSprite (starttween2, 103, 0 )
		if othermenu = 0
			for i = 111 to 113
				DeleteSprite ( i )
			next
			PlayTweenSprite (lbtween2, 104, 0 )
			PlayTweenSprite (achitween2, 105, 0 )
			PlayTweenSprite (settween2, 106, 0 )
			PlayTweenSprite ( premtween2, 2000, 0)
		elseif othermenu = 1
			for i = 104 to 106
				DeleteSprite ( i )
			next
			PlayTweenSprite (lbtween2, 111, 0)
			PlayTweenSprite (achitween2, 112, 0)
			PlayTweenSprite (settween2, 113, 0)
		endif
		for i = 400 to 900 step 100
			PlayTweenSprite (fadeOut, i, 0 )
		next i
			PlayTweenSprite(fadeOut, 501, 0)
		while ( GetTweenSpritePlaying (fadeOut, 101))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
		DeleteText(100)
		for i = 100 to 113
			DeleteSprite(i)
		next i
		DeleteSprite (101)
		for i = 400 to 900 step 100
			DeleteSprite(i)
		next i
			DeleteSprite(501)
		DeleteSprite(102)
		for i = 2000 to 2003
			DeleteSprite(i)
			DeleteText(i)
		next i
		while ( bgcol > 0 )
			if bgcol > 0
				bgcol = bgcol - 5
				SetClearColor ( bgcol, bgcol, bgcol )
			endif
			
			Sync()
		endwhile
		
		DeleteText(9997)
		DeleteText(9998)
		DeleteText(9999)
		
		DeleteSprite(103)
		DeleteSprite(104)
		if no_ads = 0
			SetAdvertVisible (1)
		endif
	elseif screen = 1
		fadeOut = CreateTweenText ( 1.5 )
		SetTweenTextAlpha (fadeOut, 255, 0, TweenEaseOut1() )
		loadFadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha ( loadFadeOut, 127, 0, TweenEaseOut1() )
		PlayTweenText (fadeOut, 100, 0)
		PlayTweenText (fadeOut, 101, 0)
		PlayTweenSprite (loadFadeOut, 9090, 0)
		while ( GetTweenTextPlaying (fadeOut, 100))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
		DeleteText(100)
		DeleteText(101)
		DeleteSprite (9090)
	elseif screen = 2
		for i = 222 to 228
			DeleteSprite ( i )
		next i
		for i = 13 to 20
			DeleteText ( i )
		next i
		fadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha( fadeOut, 255, 0, TweenEaseOut1() )
		fadeOText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha ( fadeOText, 255, 0, TweenEaseOut1() )
		for i = 1 to 12
			PlayTweenText ( fadeOText, i, 0)
		next i
			PlayTweenText ( fadeOText, 21, 0)
		for i = 200 to 214
			PlayTweenSprite( fadeOut, i, 0 )
		next i
		for i = 400 to 403
			PlayTweenSprite( fadeOut, i, 0 )
		next i
		for i = 500 to 501
			PlayTweenSprite( fadeOut, i, 0 )
		next i
		for i = 600 to 900 step 100
			StopSprite ( i )
			PlayTweenSprite( fadeOut, i, 0 )
		next i
			StopSprite ( 250 )
			PlayTweenSprite( fadeOut, 250, 0 )
		for i = 229 to 230
			PlayTweenSprite ( fadeOut, i, 0)
		next i
		if GetSpriteExists (220)
			PlayTweenSprite ( fadeOut, 220, 0 )
			PlayTweenSprite ( fadeOut, 221, 0 )
			PlayTweenText ( fadeOText, 222, 0 )
			PlayTweenSprite ( fadeOut, 2000, 0 )
		endif
		for i = 1000 to 1000 + hitcount
			if GetTextExists (i) = 1
				DeleteText(i)
			endif
			if GetSpriteExists (i) = 1
				DeleteSprite(i)
			endif
		next i
		for i = 2000 to 2000 + hitcount
			if GetSpriteExists (i) = 1
				DeleteSprite (i)
			endif
		next i
		while ( GetTweenSpritePlaying (fadeOut, 200))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
		for i = 1 to 12
			DeleteText (i)
		next i
			DeleteText (21)
		for i = 200 to 214
			DeleteSprite (i)
		next i
			DeleteSprite ( 250 )
		for i = 400 to 403
			DeleteSprite (i)
		next i
		for i = 500 to 501
			DeleteSprite (i)
		next i
		for i = 600 to 900 step 100
			DeleteSprite (i)
		next i
		for i = 220 to 221
			DeleteSprite (i)
		next i
		for i = 229 to 230
			DeleteSprite (i)
		next i
			DeleteText (222)
			DeleteText (19)
			DeleteSprite (2000)
			DeleteSprite ( 950 )
			DeleteSprite ( 799 )
	elseif screen = 3
		fadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha( fadeOut, 255, 0, TweenEaseOut1() )
		fadeOText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha ( fadeOText, 255, 0, TweenEaseOut1() )
		for i = 10 to 12
			DeleteText(i)
		next i
		for i = 1 to 9
			PlayTweenText ( fadeOText, i, 0)
		next i
		for i = 500 to 515
			PlayTweenText ( fadeOText, i, 0)
		next i
		
			PlayTweenText ( fadeOText, 13, 0)
		for i = 300 to 900 step 100
			PlayTweenSprite( fadeOut, i, 0 )
		next i
			PlayTweenSprite ( fadeOut, 501, 0)
		for i = 301 to 329
			PlayTweenSprite( fadeOut, i, 0 )
		next i
		while ( GetTweenSpritePlaying (fadeOut, 300))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
		for i = 1 to 9
			DeleteText (i)
		next i
			DeleteText (13)
		for i = 300 to 900 step 100
			DeleteSprite (i)
		next i
		for i = 301 to 329
			DeleteSprite (i)
		next i
		for i = 500 to 515
			DeleteText(i)
		next i
	elseif screen = 4
		fadeOut = CreateTweenSprite ( 1.5 )
		SetTweenSpriteAlpha( fadeOut, 255, 0, TweenEaseOut1() )
		fadeOText = CreateTweenText ( 1.5 )
		SetTweenTextAlpha ( fadeOText, 255, 0, TweenEaseOut1() )
		
		for i = 2100 to 2113
			PlayTweenSprite(fadeOut, i, 0)
		next i
		for i = 2100 to 2103
			PlayTweenText(fadeOText, i, 0)
		next i
		
		while ( GetTweenSpritePlaying (fadeOut, 2100))
			UpdateAllTweens ( GetFrameTime() )
			
			Sync()
		endwhile
		for i = 2100 to 2113
			DeleteSprite(i)
		next i
		for i = 2100 to 2103
			DeleteText(i)
		next i
	endif
endfunction

//Load & Save Function
function load()
	OpenToRead ( 1, "wuwdatasave.txt" )
		run = ReadInteger ( 1 )
		level = ReadInteger ( 1 )
		cur_exp = ReadInteger ( 1 )
		gold = ReadInteger ( 1 )
		attack = ReadInteger ( 1 )
		defence = ReadInteger ( 1 )
		agility = ReadInteger ( 1 )
		luck = ReadInteger ( 1 )
		winder = ReadInteger ( 1 )
		stance1 = ReadInteger ( 1 )
		stance2 = ReadInteger ( 1 )
		stance3 = ReadInteger ( 1 )
		max_inv_space = ReadInteger ( 1 )
		s1exp = ReadFloat ( 1 )
		s2exp = ReadFloat ( 1 )
		s3exp = ReadFloat ( 1 )
		statpoints = ReadInteger ( 1 )
		tutorial = ReadInteger ( 1 )
		speechflag = ReadInteger ( 1 )
		statpoints = ReadInteger ( 1 )
		statpointhold = ReadInteger ( 1 )
		winderflag = ReadInteger ( 1 )
		
		inventoryArray.length = max_inv_space
		
		for i = 0 to max_inv_space
			inventoryArray[i].name = ReadString ( 1 )
			inventoryArray[i].itemtype = ReadInteger ( 1 )
			inventoryArray[i].mindmg = ReadInteger ( 1 )
			inventoryArray[i].maxdmg = ReadInteger ( 1 )
			inventoryArray[i].defence = ReadInteger ( 1 )
			inventoryArray[i].prop1 = ReadString ( 1 )
			inventoryArray[i].prop2 = ReadString ( 1 )
			inventoryArray[i].prop3 = ReadString ( 1 )
			inventoryArray[i].prop1val = ReadInteger ( 1 )
			inventoryArray[i].prop2val = ReadInteger ( 1 )
			inventoryArray[i].prop3val = ReadInteger ( 1 )
			inventoryArray[i].prop1exist = ReadInteger ( 1 )
			inventoryArray[i].prop2exist = ReadInteger ( 1 )
			inventoryArray[i].prop3exist = ReadInteger ( 1 )
			inventoryArray[i].sellval = ReadInteger ( 1 )
			inventoryArray[i].upgradelvl = ReadInteger ( 1 )
			inventoryArray[i].upgradecost = ReadInteger ( 1 )
			inventoryArray[i].equipval = ReadInteger ( 1 )
			inventoryArray[i].rarity = ReadInteger ( 1 )
			inventoryArray[i].spriteid = ReadInteger ( 1 )
		next i
		
		totalgold = ReadInteger ( 1 )
		ga1 = ReadInteger ( 1 )
		ga2 = ReadInteger ( 1 )
		ga3 = ReadInteger ( 1 )
		ga4 = ReadInteger ( 1 )
		totalkills = ReadInteger ( 1 )
		ka1 = ReadInteger ( 1 )
		ka2 = ReadInteger ( 1 )
		ka3 = ReadInteger ( 1 )
		ka4 = ReadInteger ( 1 )
		
		la1 = ReadInteger ( 1 )
		la2 = ReadInteger ( 1 )
		la3 = ReadInteger ( 1 )
		la4 = ReadInteger ( 1 )
		
		b1k = ReadInteger ( 1 )
		b2k = ReadInteger ( 1 )
		b3k = ReadInteger ( 1 )
		b4k = ReadInteger ( 1 )
		b5k = ReadInteger ( 1 )
		b6k = ReadInteger ( 1 )
		b7k = ReadInteger ( 1 )
		b8k = ReadInteger ( 1 )
		b9k = ReadInteger ( 1 )
		b10k = ReadInteger ( 1 )
		b11k = ReadInteger ( 1 )
		b12k = ReadInteger ( 1 )
		
		l1g = ReadInteger ( 1 )
		l2g = ReadInteger ( 1 )
		l3g = ReadInteger ( 1 )
		l4g = ReadInteger ( 1 )
		l5g = ReadInteger ( 1 )
		l6g = ReadInteger ( 1 )
		l7g = ReadInteger ( 1 )
		l8g = ReadInteger ( 1 )
		l9g = ReadInteger ( 1 )
		l10g = ReadInteger ( 1 )
		l11g = ReadInteger ( 1 )
		l12g = ReadInteger ( 1 )
		l13g = ReadInteger ( 1 )
		l14g = ReadInteger ( 1 )
		l15g = ReadInteger ( 1 )
		l16g = ReadInteger ( 1 )
		
		timesdied = ReadInteger ( 1 )
		emode_orbs = ReadInteger ( 1 )
		emode_score = ReadInteger ( 1 )
		emode_speech = ReadInteger ( 1 )
		emode_enable = ReadInteger ( 1 )
		
		beststage = ReadInteger ( 1 )
		
		soundoff = ReadInteger ( 1 )
		musicoff = ReadInteger ( 1 )
		
		gamecentercheck = ReadInteger ( 1 )
		
		emode_highs = ReadInteger ( 1 )
		
		p_orbs = ReadInteger ( 1 )
		m_orbs = ReadInteger ( 1 )
		w_orbs = ReadInteger ( 1 )
		
		no_ads = ReadInteger ( 1 )
		skin = ReadInteger ( 1 )
		
		c1g = ReadInteger ( 1 )
		c2g = ReadInteger ( 1 )
		c3g = ReadInteger ( 1 )
		c4g = ReadInteger ( 1 )
		c5g = ReadInteger ( 1 )
		c6g = ReadInteger ( 1 )
		c7g = ReadInteger ( 1 )
		c8g = ReadInteger ( 1 )
		c9g = ReadInteger ( 1 )
		c10g = ReadInteger ( 1 )
		
		giftcount = ReadInteger ( 1 )
				
	CloseFile ( 1 )
endfunction

function save()
	if run = 0
		startergear()
		equipvals[0] = inventoryArray[0].mindmg
		equipvals[1] = inventoryArray[0].maxdmg
		equipvals[2] = inventoryArray[1].defence
		run = 1
	endif
	
	OpenToWrite ( 1, "wuwdatasave.txt")
		WriteInteger ( 1, run )
		WriteInteger ( 1, level )
		WriteInteger ( 1, cur_exp )
		WriteInteger ( 1, gold )
		WriteInteger ( 1, attack )
		WriteInteger ( 1, defence )
		WriteInteger ( 1, agility )
		WriteInteger ( 1, luck )
		WriteInteger ( 1, winder )
		WriteInteger ( 1, stance1 )
		WriteInteger ( 1, stance2 )
		WriteInteger ( 1, stance3 )
		WriteInteger ( 1, max_inv_space )
		WriteFloat ( 1, s1exp )
		WriteFloat ( 1, s2exp )
		WriteFloat ( 1, s3exp )
		WriteInteger ( 1, statpoints )
		WriteInteger ( 1, tutorial )
		WriteInteger ( 1, speechflag )
		WriteInteger ( 1, statpoints )
		WriteInteger ( 1, statpointhold )
		WriteInteger ( 1, winderflag )
		
		inventoryArray.length = max_inv_space
		
		for i = 0 to max_inv_space
			WriteString ( 1, inventoryArray[i].name )
			WriteInteger ( 1, inventoryArray[i].itemtype )
			WriteInteger ( 1, inventoryArray[i].mindmg )
			WriteInteger ( 1, inventoryArray[i].maxdmg )
			WriteInteger ( 1, inventoryArray[i].defence )
			WriteString ( 1, inventoryArray[i].prop1 )
			WriteString ( 1, inventoryArray[i].prop2 )
			WriteString ( 1, inventoryArray[i].prop3 )
			WriteInteger ( 1, inventoryArray[i].prop1val )
			WriteInteger ( 1, inventoryArray[i].prop2val )
			WriteInteger ( 1, inventoryArray[i].prop3val )
			WriteInteger ( 1, inventoryArray[i].prop1exist )
			WriteInteger ( 1, inventoryArray[i].prop2exist )
			WriteInteger ( 1, inventoryArray[i].prop3exist )
			WriteInteger ( 1, inventoryArray[i].sellval )
			WriteInteger ( 1, inventoryArray[i].upgradelvl )
			WriteInteger ( 1, inventoryArray[i].upgradecost )
			WriteInteger ( 1, inventoryArray[i].equipval )
			WriteInteger ( 1, inventoryArray[i].rarity )
			WriteInteger ( 1, inventoryArray[i].spriteid )
		next i
		
		WriteInteger ( 1, totalgold )
		WriteInteger ( 1, ga1 )
		WriteInteger ( 1, ga2 )
		WriteInteger ( 1, ga3 )
		WriteInteger ( 1, ga4 )
		WriteInteger ( 1, totalkills )
		WriteInteger ( 1, ka1 )
		WriteInteger ( 1, ka2 )
		WriteInteger ( 1, ka3 )
		WriteInteger ( 1, ka4 )
		
		WriteInteger ( 1, la1 )
		WriteInteger ( 1, la2 )
		WriteInteger ( 1, la3 )
		WriteInteger ( 1, la4 )
		
		WriteInteger ( 1, b1k )
		WriteInteger ( 1, b2k )
		WriteInteger ( 1, b3k )
		WriteInteger ( 1, b4k )
		WriteInteger ( 1, b5k )
		WriteInteger ( 1, b6k )
		WriteInteger ( 1, b7k )
		WriteInteger ( 1, b8k )
		WriteInteger ( 1, b9k )
		WriteInteger ( 1, b10k )
		WriteInteger ( 1, b11k )
		WriteInteger ( 1, b12k )
		
		WriteInteger ( 1, l1g )
		WriteInteger ( 1, l2g )
		WriteInteger ( 1, l3g )
		WriteInteger ( 1, l4g )
		WriteInteger ( 1, l5g )
		WriteInteger ( 1, l6g )
		WriteInteger ( 1, l7g )
		WriteInteger ( 1, l8g )
		WriteInteger ( 1, l9g )
		WriteInteger ( 1, l10g )
		WriteInteger ( 1, l11g )
		WriteInteger ( 1, l12g )
		WriteInteger ( 1, l13g )
		WriteInteger ( 1, l14g )
		WriteInteger ( 1, l15g )
		WriteInteger ( 1, l16g )
		
		WriteInteger ( 1, timesdied )
		WriteInteger ( 1, emode_orbs )
		WriteInteger ( 1, emode_score )
		WriteInteger ( 1, emode_speech )
		WriteInteger ( 1, emode_enable )
		
		WriteInteger ( 1, beststage )
		
		WriteInteger ( 1, soundoff )
		WriteInteger ( 1, musicoff )
		
		WriteInteger ( 1, gamecentercheck )
		
		WriteInteger ( 1, emode_highs )
		
		//new
		
		WriteInteger ( 1, p_orbs )
		WriteInteger ( 1, m_orbs )
		WriteInteger ( 1, w_orbs )
		
		WriteInteger ( 1, no_ads )
		WriteInteger ( 1, skin )
		
		WriteInteger ( 1, c1g )
		WriteInteger ( 1, c2g )
		WriteInteger ( 1, c3g )
		WriteInteger ( 1, c4g )
		WriteInteger ( 1, c5g )
		WriteInteger ( 1, c6g )
		WriteInteger ( 1, c7g )
		WriteInteger ( 1, c8g )
		WriteInteger ( 1, c9g )
		WriteInteger ( 1, c10g )
		
		WriteInteger ( 1, giftcount )
		
	CloseFile ( 1 )
endfunction

function endFunc()
	save()
	MinimizeApp()
endFunction
