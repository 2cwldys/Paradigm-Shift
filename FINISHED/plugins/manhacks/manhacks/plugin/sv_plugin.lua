local cwHacks = cwHacks;

-- Normal Deploying
function cwHacks:DeployManhack(player)

	-- Animate the player
	if Schema:PlayerIsCombine(player) then
		player:SetForcedAnimation("deploy", 2);
	end;
	
	-- Deploying the Manhack
	local entity = ents.Create("npc_manhack");
		entity:SetKeyValue("spawnflags","65536")
		entity:SetPos(player:EyePos()+player:EyeAngles():Forward()*10);
		entity:Spawn();
		entity:Fire("Unpack","",0)
		
	for k,v in ipairs( _player.GetAll() ) do
		if ( Schema:PlayerIsCombine(v) ) then
			entity:AddEntityRelationship(v, D_LI, 99);
		end;
	end;

	Schema:AddCombineDisplayLine( "Updating Deployable Data...", Color(255, 100, 255, 255) );
	
	-- Cleaning up after ourselves here. (Removes the manhack after 60 Seconds)
	timer.Simple( 60, function() entity:Fire("InteractivePowerDown","",0) end );
end;

-- This is for selectively deploying
function cwHacks:SelectiveDeploy(player)
	Clockwork.dermaRequest:RequestString(player, "<:: Selectively Deploying...", "Enter the name of your target.", "John Doe", function(text)
		local target = Clockwork.player:FindByID( text );
		
		if ( target ) then
			-- Animate the player
			if Schema:PlayerIsCombine(player) then
				player:SetForcedAnimation("deploy", 2);
			end;
			
			-- Deploying the Manhack
			local entity = ents.Create("npc_manhack");
				entity:SetKeyValue("spawnflags","65536")
				entity:SetPos(player:EyePos()+player:EyeAngles():Forward()*10);
				entity:Spawn();
				entity:Fire("Unpack","",0)
				
			for k,v in ipairs( _player.GetAll() ) do
				if ( v:GetName() != target:GetName() ) then
					entity:AddEntityRelationship(v, D_LI, 99);
				end;
			end;
		
			Schema:AddCombineDisplayLine( "Updating Deployable Data...", Color(255, 100, 255, 255) );
			
			-- Cleaning up after ourselves here. (Removes the manhack after 60 Seconds)
			timer.Simple( 60, function() entity:Fire("InteractivePowerDown","",0) end );
			
		else
			Clockwork.player:Notify(player, "This is not a valid player!");
		end;
		
	end);
	
end;