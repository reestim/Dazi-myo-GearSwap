--[[  
MYOTHERRIDE GEARSWAP LUA
--]]

----==== KEYBINDS ====----

send_command('bind ^` gs c farming mode') --CTRL`
send_command('bind !e input /item "Echo Drops" <me>; input /echo Echo Drops')
send_command('bind !r input /item "Remedy" <me>')
send_command('bind !p input /item "Panacea" <me>')
send_command('bind !h input /item "Holy Water" <me>')
send_command('bind !w input /equip ring2 "Warp Ring"; input /echo Warping; wait 11; input /item "Warp Ring" <me>;')
send_command('bind !q input /equip ring2 "Dim. Ring (Dem)"; input /echo Reisenjima; wait 11; input /item "Dim. Ring (Dem)" <me>;')
--Unload Binds
function file_unload()
       
    send_command('unbind !e')
    send_command('unbind !r')
    send_command('unbind !p')
    send_command('unbind !h')
    send_command('unbind !w')
    send_command('unbind !q')
    send_command('unbind !t')
end
--------------------------

--------------------------

----==== VARIABLES ====----

farming = false

---------------------------

----==== GEAR SETS ====----

function get_sets()

---- IDLE SETS ----

	sets.Idle = {}
		
	sets.Idle.index = {'Standard','TH'}
	Idle_ind = 1
	
	sets.Idle.Standard = {
		sub="Shijo",
		ammo="Ginsen",
		body="Meg. Cuirie +1",
		hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
		legs={ name="Samnuha Tights", augments={'STR+1','DEX+4','"Dbl.Atk."+1',}},
		feet="Jute Boots +1",
		neck="Twilight Torque",
		waist="Windbuffet Belt",
		left_ear="Dedition Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Rajas Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
	
	sets.Idle.TH = {
		sub="Sandung",
		ammo="Ginsen",
		head="Meghanada Visor +1",
		body="Meg. Cuirie +1",
		hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
		legs={ name="Samnuha Tights", augments={'STR+1','DEX+4','"Dbl.Atk."+1',}},
		feet="Jute Boots +1",
		neck="Twilight Torque",
		waist="Windbuffet Belt",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Gorney Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	

----==== TP SETS ====----	

	sets.TP = {}
	sets.TP.index = {'Standard','TH'}
	TP_ind = 1
	
	sets.TP.Standard = {
		sub="Shijo",
		ammo="Ginsen",
		head="Meghanada Visor +1",
		body="Meg. Cuirie +1",
		hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
		legs={ name="Samnuha Tights", augments={'STR+1','DEX+4','"Dbl.Atk."+1',}},
		feet="Meg. Jam. +1",
		neck="Assassin's Gorget",
		waist="Windbuffet Belt",
		left_ear="Dedition Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Rajas Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
	
	sets.TP.TH = {
		sub="Sandung",
		ammo="Ginsen",
		head="Meghanada Visor +1",
		body="Meg. Cuirie +1",
		hands={ name="Plun. Armlets", augments={'Enhances "Perfect Dodge" effect',}},
		legs={ name="Samnuha Tights", augments={'STR+1','DEX+4','"Dbl.Atk."+1',}},
		feet="Meg. Jam. +1",
		neck="Assassin's Gorget",
		waist="Windbuffet Belt",
		left_ear="Dedition Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Gorney Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}	
end

-----------------------------

----==== RULES ====----

function self_command(command)
	if command == "farming mode" and farming == false then
		farming = true
		if farming == true then
			send_command('input /echo =======FARMING MODE: ON=======')
			return
		end
	elseif command == "farming mode" and farming == true then
		farming = false
		if farming == false then 
			send_command('@input /echo =======FARMING MODE: OFF=======')
			return
		end
	end
end

function status_change(new,old)
	if new == 'Idle' then
		if farming == true then 
			equip(sets.Idle.TH)
			--add_to_chat(55,'IDLE MODE: FARMING')
		else 
			equip(sets.Idle.Standard)
			--add_to_chat(55,'IDLE MODE: Standard')
		end
	elseif new == 'Engaged' then
		if farming == false then
			equip(sets.TP.Standard)
			--add_to_chat(55,'TP MODE: Standard')
		else
			equip(sets.TP.TH)
			--add_to_chat(55,'TP MODE: FARMING')
		end
	end
end
function midcast(spell,act)
	
	if spell.english == 'Utsusemi: Ichi' then
		equip(sets.Utility.Utsusemi)
			if buffactive['Copy Image (3)'] then
				send_command('@wait 0.3; input //cancel Copy Image (3)')
			end
			if buffactive['Copy Image (2)'] then
				send_command('@wait 0.3; input //cancel Copy Image (2)')
			end
			if buffactive['Copy Image (1)'] then
				send_command('@wait 0.3; input //cancel Copy Image (1)')
			end
			if buffactive['Copy Image'] then
				send_command('@wait 0.3; input //cancel Copy Image')
			end
	end
	
	if spell.english == 'Utsusemi: Ni' then
		equip(sets.Utility.Utsusemi)
	end
	
end

function aftercast(spell,act)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end