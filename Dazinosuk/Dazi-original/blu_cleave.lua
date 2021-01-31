function get_sets()
	maps()
	
	Rosmerta = {}
    Rosmerta.DA = { name = "Rosmerta's Cape", augments = { 'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',  } }
	Rosemerta.WSD = {}
	
	Herculean = {}
	Herculean.TA = { name="Herculean Boots", augments={'Attack+22','"Triple Atk."+3',} }
	
	Colada = {}
	Colada.main = { name="Colada", augments={'Weapon skill damage +2%','STR+10','Accuracy+15','Attack+4','DMG:+10', } }
	
	sets.idle = {}
	--Set is -pdt for pulling Escha Zi'Tah
	sets.idle.cleave = {
		main="Kaja Sword",
		sub= Colada.main,
		ammo="Ginsen",
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +1",
		legs="Aya. Cosciales +1",
		feet= Herculean.TA,
		neck="Clotharius Torque",
		waist="Twilight Belt",
		left_ear="Suppanomimi",
		right_ear="Dedition Earring",
		left_ring="Defending ring",
		right_ring="Epona's Ring",
		back=Rosmerta.DA,
		}
		
	sets.casting = {
	
	-- Equiped precast for fast cast --
	sets.casting.precast = {
		ammo="Ginsen",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Stoicheion Medal",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Loquac. Earring",
		left_ring="Ayanmo Ring",
		right_ring="Jhakri Ring",
		back="Seshaw Cape",
	}
	
	-- Equiped midcast for dmg --
	
	sets.casting.midcast = {
        main = ""
		sub = ""
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
	
	----==== TP Sets ====----

	sets.TP = {}
	sets.TP.Standard = {
		main="Kaja Sword",
		sub= Colada.main,
		ammo="Ginsen",
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +1",
		legs="Aya. Cosciales +1",
		feet=Herculean.TA,
		neck="Clotharius Torque",
		waist="Twilight Belt",
		left_ear="Suppanomimi",
		right_ear="Dedition Earring",
		left_ring="Petrov Ring",
		right_ring="Epona's Ring",
		back=Rosmerta.DA,
	}}
	
	----==== WS Sets ====----
	
	sets.WS = {}
	
	sets.WS.Savage = {
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
end

function maps()
    CleaveSpells = S { 'Spectral Floe', 'Entomb', 'Subduction', 'Anvil Lightning', }
end

-----------------------------------------------------------------------------------

-- This function starts when an action is activated and before midcast starts. -- 
-- Should only have Fast Cast items for magic and any Weaponskill sets in here --

function precast(spell)
	if spell.skill == 'Blue Magic' then
		if CleaveSpells:contains(spell.english) then
			ChangeGear(sets.casting.precast)
		end
	if spell.type == "Weaponskill" then
		if spell.english == "Savage Blade" and player.tp > 1000 then
			ChangeGear(sets.WS.Savage)
		elseif spell.english == "Savage Blade" and player.tp < 1000 then
			send_command('@input /echo YOU MUST CONSTRUCT ADDITIONAL PYLONS IDIOT')
		end
	end
end

-----------------------------------------------------------------------------------

-- This function performs after precast but before the action is sent to the server --
-- Call your MAB & MACC sets into this. Weaponskills can go here but just put them in precast --

function midcast(spell)
	if spell.skill == 'Blue Magic' then
		if CleaveSpells:contains(spell.english) then
			ChangeGear(sets.casting.midcast)
		end
	end
end

-----------------------------------------------------------------------------------

-- This function performs after the action has taken place --
-- Call your IDLE sets if not engaged, otherwise put your relevant TP set --

function aftercast(spell)
	if spell.skill == 'Blue Magic' then
		if CleaveSpells:contains(spell.english) and player.status == "Idle" then
			ChangeGear(sets.idle.cleave)
		elseif player.status == "Engaged" then
			ChangeGear(sets.TP.Standard)
		end
	end
end

-----------------------------------------------------------------------------------


