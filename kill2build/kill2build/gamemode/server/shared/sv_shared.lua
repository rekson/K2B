if SERVER then	
	print("Loading whitelists")
	allowedProps = {}
	aP = file.Read("k2bAllowedProps.txt", "DATA")
	aP = aP:gsub("%s+", "")
	pLine = string.Split(aP, ";")
	
	for k, v in pairs(pLine) do
		pEpr = string.Split(v, ",")
		local propName = nil
		for ek, ev in pairs(pEpr) do
			local name, value = unpack(string.Split(ev, "="))
			if name == "model" then
				propName = value
				allowedProps[propName] = {}
			elseif propName != nil then
				allowedProps[propName][name] = value
			end
		end
	end
	
	-- Load and parse entity whitelist
	allowedEntities = {}
	aP = file.Read("k2bAllowedEntities.txt", "DATA")
	aP = aP:gsub("%s+", "")
	pLine = string.Split(aP, ";")
	
	for k, v in pairs(pLine) do
		pEpr = string.Split(v, ",")
		local entName = nil
		for ek, ev in pairs(pEpr) do
			local name, value = unpack(string.Split(ev, "="))
			if name == "name" then
				entName = value
				allowedEntities[entName] = {}
			elseif entName != nil then
				allowedEntities[entName][name] = value
			end
		end
	end
	print("Finished loading whitelists")
end