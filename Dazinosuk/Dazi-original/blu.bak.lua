----------DAZINOSUK GEARSWAP----------

----------GEAR SETS----------

function get_sets()

    maps()
	
	Rosmerta = {}
		Rosmerta.Crit = { name = "Rosmerta's Cape", augments = { 'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10', } }
		Rosmerta.WSD = { name = "Rosmerta's Cape", augments = { 'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%', } }
		Rosmerta.STP = { name = "Rosmerta's Cape", augments = { 'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%', } }
		Rosmerta.DA = { name = "Rosmerta's Cape", augments = { 'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10', } }
		Rosmerta.DW = { name = "Rosmerta's Cape", augments = { 'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%', } }
		Rosmerta.Nuke = { name = "Rosmerta's Cape", augments = { 'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10', } }
		Rosmerta.Cure = { name = "Rosmerta's Cape", augments = { 'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%' } }
		Rosmerta.MagicEva = { name = "Rosmerta's Cape", augments = { 'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Haste+10','Mag. Evasion+15' } }
    
    
    sets.Idle = {}
    --Idle Sets--
    sets.Idle.index = { 'Standard' }
    Idle_ind = 1
    
	sets.Idle.Standard = {
    main="Kaja Sword",
    sub={ name="Colada", augments={'"Mag.Atk.Bns."+23','DEX+1','Accuracy+14','Attack+23','DMG:+13',}},
    ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +1",
    legs="Carmine Cuisses",
    feet={ name="Herculean Boots", augments={'Attack+22','"Triple Atk."+3',}},
    neck="Clotharius Torque",
    waist="Twilight Belt",
    left_ear="Suppanomimi",
    right_ear="Dedition Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back=Rosmerta.DA,
	}
	
	--TP Sets--
    
	sets.TP = {}
    sets.TP.index = { 'Standard' }
    TP_ind = 1 

    sets.TP.Standard = {
		main="Kaja Sword",
		sub={ name="Colada", augments={'"Mag.Atk.Bns."+23','DEX+1','Accuracy+14','Attack+23','DMG:+13',}},
		ammo="Ginsen",
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +1",
		legs="Aya. Cosciales +1",
		feet={ name="Herculean Boots", augments={'Attack+22','"Triple Atk."+3',}},
		neck="Clotharius Torque",
		waist="Twilight Belt",
		left_ear="Suppanomimi",
		right_ear="Dedition Earring",
		left_ring="Petrov Ring",
		right_ring="Epona's Ring",
		back=Rosmerta.DA,
	}
	
	 --Weaponskill Sets--
	 
    sets.WS = {}
	
	sets.Savage = {}
	
	sets.Savage.index = { 'Standard' }
	Savage_ind = 1
	sets.Savage.Standard = {
		ammo="Ginsen",
		head={ name="Lilitu Headpiece", augments={'STR+10','DEX+10','Attack+15','Weapon skill damage +3%',}},
		body="Jhakri Robe +2",
		hands="Aya. Manopolas +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Brutal Earring",
		left_ring="Rufescent Ring",
		right_ring="Craftkeeper's Ring",
		back=Rosmerta.DA,
    }
	
	sets.Requiescat = {}

    sets.Requiescat.index = { 'Standard' }
    Requiescat_ind = 1
    sets.Requiescat.Standard = {
		ammo="Quartz Tathlum +1",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Brutal Earring",
		left_ring="Rajas Ring",
		right_ring="Epona's Ring",
		back=Rosmerta.DA,
}

	-------------------
	--Blue Magic Sets--
	-------------------
    
	sets.bm = {}
	sets.bm.index = { 'MAB' , 'Cleave' }
	bm_ind = 1
	
	sets.bm.Cleave = {
		main={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},
		ammo="Ginsen",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Stoicheion Medal",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Ayanmo Ring",
		right_ring="Jhakri Ring",
		back="Seshaw Cape",
	}
	sets.bm.MAB = {
		ammo="Ginsen",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Stoicheion Medal",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Ayanmo Ring",
		right_ring="Jhakri Ring",
		back="Seshaw Cape",
    }


end

--------End of Gear--------


------- Start of Maps ------- 

---------------
--   Spells  --
---------------

--Place spells into either Physical or Magical, and then further seperate them into type--
--Anything In Physical or Magical is only for making a rule, it won't swap simply for being in that category--
function maps()
    --All physical spells go here then they are filtered specifically. Add accordingly.
    PhysicalSpells = S {
        'Asuran Claws', 'Bilgestorm', 'Bludgeon', 'Body Slam', 'Feather Storm', 'Mandibular Bite', 'Queasyshroom',
        'Power Attack', 'Ram Charge', 'Saurian Slide', 'Screwdriver', 'Sickle Slash', 'Smite of Rage',
        'Spinal Cleave', 'Spiral Spin', 'Sweeping Gouge', 'Terror Touch', 'Battle Dance', 'Bloodrake',
        'Death Scissors', 'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut', 'Tourbillion',
        'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Amorphic Spikes', 'Barbed Crescent',
        'Claw Cyclone', 'Disseverment', 'Foot Kick', 'Frenetic Rip', 'Goblin Rush', 'Hysteric Barrage',
        'Paralyzing Triad', 'Seedspray', 'Sinker Drill', 'Vanity Dive', 'Cannonball', 'Delta Thrust',
        'Glutinous Dart', 'Grand Slam', 'Quad. Continuum', 'Benthic Typhoon', 'Helldive',
        'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats', 'Heavy Strike'
    }

    PhysicalBlueMagic_STR = S {
        'Asuran Claws', 'Bilgestorm', 'Battle Dance', 'Bludgeon', 'Bloodrake', 'Death Scissors', 
        'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut', 'Tourbillion', 'Sinker Drill', 
        'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Saurian Slide', 'Sinal Cleave', 
        'Paralyzing Triad'
    }

    PhysicalBlueMagic_DEX = S {
        'Amorphic Spikes', 'Barbed Crescent', 'Claw Cyclone', 'Disseverment', 'Foot Kick',
        'Frenetic Rip', 'Goblin Rush', 'Hysteric Barrage', 'Seedspray',
        'Vanity Dive'
    }

    PhysicalBlueMagic_VIT = S {
        'Cannonball', 'Delta Thrust', 'Glutinous Dart', 'Grand Slam', 'Quad. Continuum',
        'Sprout Smack'
    }

    PhysicalBlueMagic_AGI = S {
        'Benthic Typhoon', 'Helldive', 'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats',
        'Spiral Spin'
    }

    --All nuking spells go here then they are filtered specifically. Add accordingly.
    MagicalSpells = S {
        'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind',
        'Firespit', 'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage', 'Magic Barrier', 'Nectarous Deluge',
        'Polar Roar', 'Regurgitation', 'Rending Deluge', 'Scouring Spate', 'Searing Tempest', 'Silent Storm',
        'Spectral Floe', 'Subduction', 'Sudden Lunge', 'Tem. Upheaval', 'Thermal Pulse', 'Thunderbolt', 'Uproot',
        'Water Bomb', 'Atra. Libations', 'Blood Saber', 'Dark Orb', 'Death Ray', 'Eyes On Me', 'Blazing Bound',
        'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush', 'Blinding Fulgor', 'Diffusion Ray', 'Ice Break',
        'Magic Hammer', 'Rail Cannon', 'Retinal Glare', 'Embalming Earth', 'Entomb', 'Sandspin', 'Vapor Spray',
    }
    --Any nuking spell that doesnt have certain armor to enhance it like the pixie hairpin +1 for dark nukes--
    BlueMagic_INT = S {
        'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind', 'Firespit',
        'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage', 'Nectarous Deluge', 'Polar Roar',
        'Regurgitation', 'Rending Deluge', 'Scouring Spate', 'Searing Tempest', 'Silent Storm', 'Spectral Floe',
        'Subduction', 'Tem. Upheaval', 'Thermal Pulse', 'Thunderbolt', 'Uproot', 'Water Bomb'
    }

    BlueMagic_Dark = S {
        'Blood Saber', 'Dark Orb', 'Death Ray', 'Eyes On Me',
        'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush'
    }

    BlueMagic_Light = S {
        'Blinding Fulgor', 'Diffusion Ray', 'Magic Hammer', 'Rail Cannon', 'Retinal Glare'
    }

    BlueMagic_Earth = S {
        'Embalming Earth', 'Entomb', 'Sandspin'
    }

    BlueMagic_Accuracy = S {
        '1000 Needles', 'Absolute Terror', 'Auroral Drape', 'Awful Eye', 'Blastbomb', 'Blank Gaze', 'Blistering Roar', 'Blitzstrahl',
        'Blood Drain', 'Blood Saber', 'Chaotic Eye', 'Cimicine Discharge', 'Cold Wave', 'Digest', 'Corrosive Ooze',
        'Demoralizing Roar', 'Dream Flower', 'Enervation', 'Filamented Hold', 'Frightful Roar',
        'Geist Wall', 'Hecatomb Wave', 'Infrasonics', 'Light of Penance', 'Lowing', 'Mind Blast', 'Mortal Ray',
        'MP Drainkiss', 'Sheep Song', 'Soporific', 'Sound Blast', 'Sprout Smack', 'Stinking Gas',
        'Venom Shell', 'Voracious Trunk', 'Yawn'
    }

    BlueMagic_Breath = S {
        'Bad Breath', 'Flying Hip Press', 'Final Sting', 'Frost Breath', 'Heat Breath', 'Magnetite Cloud',
        'Poison Breath', 'Radiant Breath', 'Self Destruct', 'Thunder Breath', 'Vapor Spray', 'Wind Breath'
    }

    BlueMagic_Buffs = S {
        'Barrier Tusk', 'Cocoon', 'Carcharian Verve', 'Erratic Flutter', 'Harden Shell', 'Orcish Counterstance',
        'Plasma Charge', 'Pyric Bulwark', 'Memento Mori', 'Mighty Guard', 'Nat. Meditation', 'Reactor Cool', 'Saline Coat', 
        'Feather Barrier','Refueling','Warm-Up', 'Zephyr Mantle', 'Reactor Cool', 'Plasma Charge', 'Amplification',   
    }
--- Occultation gets it's own set ---
    BlueMagic_Skill = S {
        'Diamondhide', 'Metallic Body', 'Magic Barrier', 'Atra. Libations',
    }

    BlueMagic_Healing = S {
        'Healing Breeze', 'Magic Fruit', 'Plenilune Embrace', 'Pollen', 'Restoral', 'Wild Carrot'
    }
--- Acc + Macc + FC "Stun" set ---
    BlueMagic_Stun = S {
        'Frypan', 'Head Butt', 'Sudden Lunge', 'Tail slap', 'Sub-zero Smash', 'Sweeping Gouge'
    }
    BlueMagic_Enmity = S {
        'Actinic Burst', 'Exuviation', 'Fantod', 'Jettatura', 'Temporal Shift'
    }
	
	BlueMagic_FastRecast = S {'Osmosis', 'Feather Tickle', 'Reaving Wind',}
end

------------------------
--   Town Gear List   --
------------------------ 

Town = S {
    "Ru'Lude Gardens", "Upper Jeuno", "Lower Jeuno", "Port Jeuno",
    "Port Windurst", "Windurst Waters", "Windurst Woods", "Windurst Walls", "Heavens Tower",
    "Port San d'Oria", "Northern San d'Oria", "Southern San d'Oria", "Chateau d'Oraguille",
    "Port Bastok", "Bastok Markets", "Bastok Mines", "Metalworks",
    "Aht Urhgan Whitegate", "Nashmau", "Rabao",
    "Selbina", "Mhaura", "Norg", "Kazham", "Tavanazian Safehold",
    "Eastern Adoulin", "Western Adoulin", "Celennia Memorial Library"
}

---End of Maps---

-------------------------------
--         Variables         --
-------------------------------

-------END OF VARIABLES-------


------- KEY BINDS -------

--send_command('bind f9 gs c toggle TP set') --This means if you hit f9 it toggles the sets
send_command('bind ^` gs c toggle BlueMagic set') --CTRL`
--send_command('bind f11 gs c toggle Sword WS sets')
--send_command('bind f12 gs c toggle Idle set')
--send_command('bind @f8 gs c toggle AutoDW') -- @ means windows key, you may change this to whatever you want. Manual DW, Turns auto haste rules off in a pinch. May also default the value to be false instead if you want.
--send_command('bind @f9 gs c toggle DW')
--send_command('bind ^f8 input /ws "Sanguine Blade" <t>')
--send_command('bind ^f9 input /ws "Chant du Cygne" <t>') -- ^ means cntrl, so hit cntrl + f9
--send_command('bind ^f10 input /ws "Expiacion" <t>')
--send_command('bind ^f11 input /ws "Requiescat" <t>')
--send_command('bind ^f12 input /ws "Savage Blade" <t>')
--send_command('bind !f7 gs c toggle DT set') -- ! stands for the Alt key. this exists only for toggling outside of this mode being active, otherwise f9
--send_command('bind !f8 gs c toggle DT') -- DT on or off
--send_command('bind !f9 gs c toggle backwards')
--send_command('bind !f10 gs c changemaccmab') -- Toggles macc and mab nuke sets
--send_command('bind !f11 gs c toggle Club sets') 
--send_command('bind !f12 gs c LockGearIndex') --Locks gear on

send_command('bind !e input /item "Echo Drops" <me>')
send_command('bind !r input /item "Remedy" <me>')
send_command('bind !p input /item "Panacea" <me>')
send_command('bind !h input /item "Holy Water" <me>')
send_command('bind !w input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
send_command('bind !q input /equip ring2 "Dim. Ring (Holla)"; /echo Reisenjima; wait 11; input /item "Dim. Ring (Holla)" <me>;')
send_command('bind !t gs c toggle TH') -- alt + t toggles TH mode

--Unload Binds
function file_unload()
    send_command('unbind ^f8')
    send_command('unbind ^f9')
    send_command('unbind ^f10')
    send_command('unbind ^f11')
    send_command('unbind ^f12')
	send_command('unbind @f9')
	send_command('unbind !f8')
    send_command('unbind !f9')
    send_command('unbind !f10')
    send_command('unbind !f11')
    send_command('unbind !f12')
    send_command('unbind f9')
    send_command('unbind f10')
    send_command('unbind f11')
    send_command('unbind f12')
    
    send_command('unbind !e')
    send_command('unbind !r')
    send_command('unbind !p')
    send_command('unbind !h')
    send_command('unbind !w')
    send_command('unbind !q')
    send_command('unbind !t')
end

--------------------------------------
--         Console Commands         --
--------------------------------------

function self_command(command)
	if command == 'toggle BlueMagic set' and bm_ind == 1 then -- 
		bm_ind = bm_ind + 1
		send_command('@input /echo <----- Blue Magic set changed to ' .. sets.bm.index[bm_ind] .. ' ----->')
	elseif command == 'toggle BlueMagic set' and bm_ind == 2 then 
		bm_ind = bm_ind - 1
		send_command('@input /echo <----- Blue Magic set Set changed to ' .. sets.bm.index[bm_ind] .. ' ----->')
	else 
		bm_ind = bm_ind + 1
	end
end
--------------------------------------
--         Character States         --
--------------------------------------


function status_change(new,old)
	if new == 'Idle' then
		equip(sets.Idle.Standard)
		send_command('@input /echo Setting to IDLE')
	elseif new == 'Engaged' then
		equip(sets.TP.Standard)
		send_command('@input /echo Setting to Standard TP')
	end
end

function precast(spell)
	if spell.english == "Savage Blade" then
		equip(sets.Savage.Standard)
		send_command('@input /echo SAVAGE BLADE')
	end
end

function precast(spell)
	if spell.english == "Spectral Floe" then
		equip(sets.bm[sets.bm.index[bm_ind]])
		send_command('@input /echo <----- Blue Magic Set ' .. sets.bm.index[bm_ind] .. ' ----->')
	end
end

------------------------------------------
--             After Cast               --
------------------------------------------

