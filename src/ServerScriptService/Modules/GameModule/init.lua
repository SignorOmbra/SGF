--DEFINE MODULE--
local GameModule = {}



--PRIVATE VARIABLES--
local Submodules = script.Submodules:GetChildren()



--PUBLIC FUNCTIONS--
function GameModule:LoadSubmodules()
	print("Attempting to load submodules. \n")

	for i, Submodule in pairs(Submodules) do
		print("Attempting to load module '" .. Submodule.Name .. "'. (" .. i .. ")")

		if not GameModule[Submodule.Name] then
			print("Requiring and adding to table...")

			GameModule[Submodule.Name] = require(Submodule)

			print("Loaded " .. Submodule.Name .. "! \n")
		end
	end

	print("Loaded all modules!")
end



--LOAD SUBMODULES--
GameModule:LoadSubmodules()



--RETURN MODULE--
return GameModule