-- Function to make a character speak
local function sayMessage(character, message)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:Move(Vector3.new()) -- The character will stop moving while speaking
        humanoid:LoadAnimation(script.Parent.Humanoid:LoadAnimation(script.Parent.Animations.Talk)) -- Play talking animation
        wait(0.5) -- Delay to allow the animation to start
        print(character.Name .. " says: " .. message) -- Print the spoken message to the console
        -- You can customize the character's voice here if needed
        -- humanoid.Sound:Play()
        wait(3) -- Delay before the character starts moving again
        humanoid:Move(Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))) -- Move the character to a random position
    end
end

-- Call the function to make the character speak
local character = game.Workspace:WaitForChild("YourCharacter") -- Replace YourCharacter with the name of your character
sayMessage(character, "Hello, world!") -- Replace the message as needed
