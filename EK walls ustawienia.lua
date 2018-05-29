------ REFILL SETTINGS ------
local MinMana = 150 	--- How many mana potions until you leave the hunt?
local destcap = 100 	--- How many cap you begin the hunt with?
local MaxMana = 1500	--- How many mana potions you begin the hunt with?

local Hpotion = 7643
local Mpotion = 268
local Hprice = 310
local Mprice = 50

local MinHealth = 20 	--- How many health potions until you leave the hunt?
local MaxHealth = 150 	--- How many health potions you begin the hunt with?

local GoldBP = 2868 --- Item ID of your gold backpack.
local PotionBP = 2872
local StackableBP = 8860
local BPmain = 2854
local MinCap = 100 		--- If less then script will exit spawn.
local HideEquipment = false --- Do you want to minimize your equipment?

local AmmoID = 15793	--- What ammunition are you using?
local MinAmmo = 300		--- How much ammunition until you leave hunt?
local MaxAmmo = 1700	--- How much ammunition do you begin the hunt with?
local AmmoPrice = 20	--- What is the price of your selected ammunition?

local SellStuff = true --- Do you want to sell your Zao rares?
local Softboots = true --- Do you use softboots?

local floor = "fourth"  -- floor to hunt (first / second / third / fourth)

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

pass = false

responder = IpcResponderSocket.New("Rep socket", 30322)

registerEventListener(WALKER_SELECTLABEL, "onWalkerSelectLabel")

print([[
~ JECHANKA ~]])
	
function onWalkerSelectLabel(labelName)


	if (labelName == "synchro") then
		Walker.Stop()
		while(not pass) do
			local success, request = responder:GetRequest()
			while (success) do
				responder:SendResponse("synchro")
				if (request == "synchro") then
					pass = true
				end
			success, request = responder:GetRequest()
			end
		end
		Walker.Start()

	elseif (labelName == "pitstop") then
		exetuj = true
		Targeting.Start()

	elseif (labelName == "afterpit") then
	exetuj = false
	Targeting.Stop()



	elseif (labelName == "ref 11") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 11")
		end
		
	elseif (labelName == "ref 12") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 12")
		end

	elseif (labelName == "ref 13") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 13")
		end

	elseif (labelName == "ref 14") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 14")
		end

	elseif (labelName == "ref 15") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 15")
		end

	elseif (labelName == "ref 21") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 21")
		end

	elseif (labelName == "ref 22") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 22")
		end

	elseif (labelName == "ref 23") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 23")
		end

	elseif (labelName == "ref 24") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 24")
		end

	elseif (labelName == "ref 25") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 25")
		end

	elseif (labelName == "ref 31") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 31")
		end

	elseif (labelName == "ref 32") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 32")
		end

	elseif (labelName == "ref 33") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 33")
		end

	elseif (labelName == "ref 34") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 34")
		end

	elseif (labelName == "ref 35") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 35")
		end

	elseif (labelName == "ref 41") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 41")
		end

	elseif (labelName == "ref 42") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 42")
		end

	elseif (labelName == "ref 43") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 43")
		end

	elseif (labelName == "ref 44") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 44")
		end

	elseif (labelName == "ref 45") then
		if (Self.ItemCount(Mpotion) <= MinMana) or (Self.ItemCount(Hpotion) <= MinHealth) or ((LogoutStamina) and (Self.Stamina() < 840)) then
			gotoLabel("back 45")
		end

	elseif (labelName == "pietro1 check") then
		if (floor == "first") then
			gotoLabel("pietro1 hunt")
		end

	elseif (labelName == "pietro2 check") then
		if (floor == "second") then
			gotoLabel("pietro2 hunt")
		end

	elseif (labelName == "pietro3 check") then
		if (floor == "third") then
			gotoLabel("pietro3 hunt")
		end

	elseif (labelName == "pietro4 check") then
		if (floor == "fourth") then
			gotoLabel("pietro4 hunt")
		end
	
	elseif (labelName == "CheckSB")then
		if (Softboots == true) and (Self.ItemCount(6530) > 0) then
			gotoLabel("RefillSB")
		else
			gotoLabel("NoSofts")
		end	
		
	elseif (labelName == "checkstuff") then
		local ESTMana = (MaxMana - 20)
		local ESTAmmo = (MaxAmmo - 100)
		Walker.ConditionalGoto((Self.ItemCount(237) < ESTMana) or (Self.ItemCount(7642) < MaxHealth) or (Self.ItemCount(AmmoID) < ESTAmmo), "Resupply", "ToHunt")
		
	elseif (labelName == "bank") then
		local withdrawManas = math.max(MaxMana - Self.ItemCount(Mpotion), 0)*Mprice
		local withdrawHealths = math.max(MaxHealth - Self.ItemCount(Hpotion), 0)*Hprice
		local totalmoneyneeded = (withdrawManas + withdrawHealths)
		local MATHCEIL = (math.ceil((totalmoneyneeded/1000)))*1000
		Walker.Stop()
		Self.SayToNpc({"hi", "trade"}, 65)
		wait(1000)
		Self.ShopSellAllItems(3032)
		wait(1000)
		Self.ShopSellAllItems(3028)
		wait(1000)
		Self.ShopSellAllItems(3038)
		wait(1000)
		Self.ShopSellAllItems(3030)
		wait(1000)
		Self.ShopSellAllItems(3029)
		wait(1000)
		Self.ShopSellAllItems(9057)
		wait(1000)
		Self.SayToNpc({"deposit all", "yes"}, 65)
		Walker.Start()

	elseif (labelName == "deposit") then
		Walker.Stop()
		Container.Close(BPmain)
		wait(1000)	
		Container.Close(GoldBP)
		wait(1000)	
		Container.Close(PotionBP)
		wait(1000)	
		Container.Close(StackableBP)
		wait(1000)	
		Self.OpenMainBackpack()
		wait(1000)	
		Container.GetFirst():OpenChildren(StackableBP)
		wait(1000)
		Container.GetFirst():OpenChildren(GoldBP)
		wait(1000)
		Container.GetFirst():OpenChildren(PotionBP)
		wait(1000)
		Self.ReachDepot()
		Self.DepositItems({5876, 7}, {5881, 7}, {10408, 7}, {10409, 7}, {10410, 7}, {3028, 7}, {10449, 7}, {10310, 7}, {3032, 7}, {10450, 7}, {5944, 7}, {6499, 7}, {10418, 7}, {10416, 7}, {10408, 7}, {10410, 7}, {10413, 7}, {10414, 7}, {10405, 7}, {3030, 7}, {10404, 7}, {11658, 7}, {10397, 7}, {11661, 7}, {5904, 7}, {11659, 7}, {11672, 7}, {9057, 7}, {11671, 7}, {11660, 7}, {3029, 7}, {11454, 7})
		Self.DepositItems({10392, 8}, {10438, 8}, {10451, 8}, {812, 8}, {813, 8}, {822, 8}, {3428, 8}, {10385, 8}, {10323, 8}, {10390, 8}, {10387, 8}, {10384, 8}, {10388, 8}, {10386, 8}, {3006, 8}, {12549, 8}, {12307, 8}, {8043, 8}, {10439, 8}, {3071, 8}, {10398, 8}, {4033, 8}, {11691, 8}, {11657, 8}, {11651, 8}, {11693, 8}, {7404, 8}, {11674, 8}, {8094, 8}, {830, 8}, {3386, 8}, {3280, 8}, {7402, 8}, {7399, 8}, {3392, 8}, {3381, 8}, {8074, 8}, {8052, 8}, {3369, 8}, {7456, 8}, {7386, 8}, {11688, 8}, {10389, 8}, {3037, 8},{3038, 8})
		wait(1500,1900)

	elseif (labelName == "CheckSell") then
		if (SellStuff == true) then
			gotoLabel("Selldoor")
		else
			gotoLabel("NoSell")
		end

	elseif (labelName == "SellItems") then
		if (SellItems) then
			Walker.Stop()
			Self.SayToNpc({"Hi", "Trade"}, 65)
			wait(1000)
			Self.ShopSellAllItems(10323)
			wait(1000)
			Self.ShopSellAllItems(10390)
			wait(1000)
			--Self.ShopSellItem(10387, --(Self.ShopGetItemSaleCount(10387) - 1))
			wait(1000)
			Self.ShopSellItem(10384, (Self.ShopGetItemSaleCount(10384) - 1))
			wait(1000)
			Self.ShopSellAllItems(10388)
			wait(1000)
			Self.ShopSellItem(10386, (Self.ShopGetItemSaleCount(10386) - 1))
			wait(1000)
			Self.ShopSellAllItems(10418)
			wait(1000)
			Self.ShopSellAllItems(10323)
			wait(1000)
			Self.ShopSellAllItems(10416)
			wait(1000)
			Self.ShopSellAllItems(10408)
			wait(1000)
			Self.ShopSellAllItems(10392)
			wait(1000)
			Self.ShopSellAllItems(10410)
			wait(1000)
			Self.ShopSellAllItems(10413)
			wait(1000)
			Self.ShopSellAllItems(10414)
			wait(1000)
			Self.ShopSellAllItems(10405)
			wait(1000)
			Self.ShopSellAllItems(10404)
			wait(1000)
			Self.ShopSellAllItems(11661)
			wait(1000)
			Self.ShopSellAllItems(11657)
			wait(1000)
			Self.ShopSellAllItems(11660)
			wait(1000)
			Self.ShopSellAllItems(11659)
			wait(1000)
			Self.ShopSellAllItems(10389)
			wait(1000)
			Walker.Start()
		end	
		
	elseif (labelName == "potions") then
		Walker.Stop()
		local mpuptobuy = math.floor((Self.Cap() - destcap) / 2.7) + Self.ItemCount(Mpotion)

		if (Self.ItemCount(Mpotion) < mpuptobuy) or (Self.ItemCount(Hpotion) < MaxHealth) then
			Self.SayToNpc({"hi", "trade"}, 65)
			wait(2000)
			if (Self.ItemCount(Hpotion) < MaxHealth) then
				BuyItems(Hpotion, MaxHealth)
				wait(500)
			end
			wait(200, 500)
			if (Self.ItemCount(Mpotion) < mpuptobuy) then
				BuyItems(Mpotion, mpuptobuy)
				wait(500)
				BuyItems(Mpotion, mpuptobuy)
				wait(500)
				BuyItems(Mpotion, mpuptobuy)
				wait(500)
			end
		end
Module.New("MoveManas", function(Mod)
if (Self.ItemCount(Mpotion) >= 1) or (Self.ItemCount(Hpotion) >=1) then
                local MainBp = Container.GetFirst()
                local DestinationBp = Container.GetByName(PotionBP)
                for spot = 0, MainBp:ItemCount() do
                    local item = MainBp:GetItemData(spot)               
                        if (item.id == Mpotion) or (item.id == Hpotion) then
                        MainBp:MoveItemToContainer(spot, Container.GetByName(PotionBP):Index(), 0)
                        Mod:Delay(500)                  
                        break
                        end
			end
        Mod:Delay(200)
        end
end
)
		Walker.Start()

	elseif (labelName == "resetbp") then
		Walker.Stop()
		Container.Close(BPmain)
		wait(1000)	
		Container.Close(GoldBP)
		wait(1000)	
		Container.Close(PotionBP)
		wait(1000)	
		Container.Close(StackableBP)
		wait(1000)	
		Self.OpenMainBackpack()
		wait(1000)	
		Container.GetFirst():OpenChildren(StackableBP)
		wait(1000)
		Container.GetFirst():OpenChildren(GoldBP)
		wait(1000)
		Container.GetFirst():OpenChildren(PotionBP)
		wait(1000)
		if (HideEquipment) then
			Client.HideEquipment()
			wait(1000)
		end
		Walker.Start()	
	end
end

----------------------- Functions ----------------------
Module.New("exeta", function(Mod3)
	if (exetuj == true) then
		Self.Say("exeta res")
		wait(3000)
	end
	Mod:Delay(100)
end
)

function SellItems(item) -- item = item ID
	wait(300, 1700)
	Self.ShopSellItem(item, Self.ShopGetItemSaleCount(item))
	wait(900, 1200)
end

function BuyItems(item, count) -- item = item id, count = how many you want to buy up to
	wait(900, 1200)
	if (Self.ItemCount(item) < count) then
	Self.ShopBuyItem(item, (count-Self.ItemCount(item)))
	wait(200, 500)
	end
end

Self.ReachDepot = function (tries)
	local tries = tries or 3
	Walker.Stop()
	local DepotIDs = {3497, 3498, 3499, 3500}
	local DepotPos = {}
	for i = 1, #DepotIDs do
		local dps = Map.GetUseItems(DepotIDs[i])
		for j = 1, #dps do
			table.insert(DepotPos, dps[j])
		end
	end
	local function gotoDepot()
		local pos = Self.Position()
		print("Depots found: " .. tostring(#DepotPos))
		for i = 1, #DepotPos do
			location = DepotPos[i]
			Self.UseItemFromGround(location.x, location.y, location.z)
			wait(1000, 2000)
			if Self.DistanceFromPosition(pos.x, pos.y, pos.z) >= 1 then
				wait(5000, 6000)
				if Self.DistanceFromPosition(location.x, location.y, location.z) == 1 then
					Walker.Start()
					return true
				end
			else
				print("Something is blocking the path. Trying next depot.")
			end
		end
		return false
	end
	
	repeat
		reachedDP = gotoDepot()
		if reachedDP then
			return true
		end
		tries = tries - 1
		sleep(100)
		print("Attempt to reach depot was unsuccessfull. " .. tries .. " tries left.")
	until tries <= 0

	return false
end

Map.GetUseItems = function (id)
    if type(id) == "string" then
        id = Item.GetID(id)
    end
    local pos = Self.Position()
	local store = {}
    for x = -7, 7 do
        for y = -5, 5 do
            if Map.GetTopUseItem(pos.x + x, pos.y + y, pos.z).id == id then
                itemPos = {x = pos.x + x, y = pos.y + y, z = pos.z}
				table.insert(store, itemPos)
            end
        end
    end
    return store
end