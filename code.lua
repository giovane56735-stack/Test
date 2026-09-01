local chat = game:GetService("TextChatService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local process = 0

local beds = "beds" or "bed" or "Beds" or "Bed" or "BEDS" or "BED"
local tables = "table" or "tables" or "Table" or "Tables" or "TABLES" or "TABLE"
local chairs = "chair" or "chairs" or "Chair" or "Chairs" or "CHAIR" or "CHAIRS"
local desks = "desk" or "desks" or "Desk" or "Desks" or "DESK" or "DESKS"
local walltypes = "walltypes" or "walltype" or "Walltypes" or "Walltype" or "WALLTYPES" or "WALLTYPE"
local beanbags = "beanbags" or "beanbag" or "Beanbags" or "Beanbag" or "BEANBAGS" or "BEANBAG"
local posters = "posters" or "poster" or "Posters" or "Poster" or "POSTERS" or "POSTER"
local TVs = "TVs" or "TV" or "Tvs" or "Tv" or "tvs" or "tv" or "TVS"
local sofas = "sofas" or "sofa" or "Sofas" or "Sofa" or "SOFAS" or "SOFA"
local plants = "plants" or "plant" or "Plants" or "Plant" or "PLANTS" or "PLANT"
local misc = "misc" or "Misc" or "Misc"
local kitchen = "kitchen" or "Kitchen" or "KITCHEN"
local bathroom = "bathroom" or "Bathroom" or "BATHROOM"
local gym = "gym" or "Gym" or "GYM"
local ai = "ai" or "Ai" or "AI"

local function chat(msg)
 for _, v in Players do
  if (v.Character.HumanoidRootPart.Position - hrp.Position).Magnitude <= 10 then
    local chats = {
        "Hello! What furniture do you want? We have beds, tables, chairs, desks, walltypes, beanbags, posters, TVs, sofas, plants, kitchen, bathroom, gym or misc.",
        "Would you like a gray single bed or a yellow double bed?",
        "Would you like a wooden table or a modern table?",
        "Would you like a wooden school chair or a modern chair?", 
        "Would you like a small, medium or large desk? These are tables with computers",
        "Would you like a bookcase or normal white wall?",
        "Would you like a blue, yellow or green beanbag?",
        "Would you like a memes poster that has SpongeBob poster or amongus man face poster? Or a cat poster just 1 poster or a FNAF poster?",
        "Would you like a white or black TV?",
        "Would you like a small, medium or large sofa?",
        "Would you like a normal, rectangular or bamboo plant?",
        "Would you like a lamp, clock, pink or deep pink or blue or deep blue or white carpet or blue or pink hexagons?",
        "Would you like a modern or classic sink, a modern or classic countertop, a moden or classic fridge, a stove, an oven, a dishwasher, a mixer or a microwave?",
        "Would you like a toilet, a shower, toilet paper or a bathtub?",
        "Would you like a treadmill, a bench press or weights"
      }
    local joybait = {"Fantastic", "Great", "Brilliant", "Amazing", "Phenomenal", "Incredible", "Cool", "Superb", "Wonderful", "Execellent", "Magnificent", "Splendid"}
    local notAI = {
            "Im not an AI, I am a real person.",
            "Im not an AI, dont troll me.",
            "im not an ai bro",
            "Im not an AI, stop asking",
            "I SAID IM NOT AN AI, I AM NEXT LEVEL MAD BRO",
            "..."
    }
    if process == 0 then
     if string.match(msg, ai) then
      chat:SendAsync(notAI[math.random(1, #notAI)])
     end
      process = 1
      chat:SendAsync(chats[1])
   
   
     elseif process == 1 then
      if string.match(msg, beds) then
            process = 2
            chat:SendAsync(chats[2])
    elseif string.match(msg, tables) then
            process = 2
            chat:SendAsync (chats[3])
    elseif string.match(msg, chairs) then 
            process = 2
            chat:SendAsync(chats[4])      
    elseif string.match(msg, desks) then
            process = 2
            chat:SendAsync(msg, chats[5])
    elseif string.match(msg, walltypes) then
      process = 2
      chat:SendAsync(chats[6])
    elseif string.match(msg, beanbags) then
      process = 2
      chat:SendAsync(chats[7])
    elseif string.match(msg, posters) then
      process = 2
      chat:SendAsync(chats[8])
    elseif string.match(msg, TVs) then
      process = 2
      chat:SendAsync(chats[9])
    elseif string.match(msg, sofas) then
      process = 2
      chat:SendAsync(chats[10])
    elseif string.match(msg, plants) then
      process = 2
      chat:SendAsync(chats[11])
    elseif string.match(msg, kitchen) then
      process = 2
      chat:SendAsync(chats[12])
    elseif string.match(msg, bathroom) then
      process = 2
      chat:SendAsync(chats[13])
    elseif string.match(msg, gym) then
      process = 2
      chat:SendAsync(chats[14])
    elseif string.match(msg, misc) then
      process = 2
      chat:SendAsync(chats[15])
    elseif string.match(msg, ai) then
      chat:SendAsync(notAI[math.random(1, #notAI)])
    else
      chat:SendAsync("That is not a furniture.")
    end
     elseif process == 2 then
      process = 0
      chat:SendAsync(joybait[math.random(1, #joybait)] .. "! Your order has been registered. Order will be outside your dorm, dont let anyone steal it/dont steal.")
      if string.match(msg, ai) then
            chat:SendAsync(notAI[math.random(1, #notAI)])
      end
    end
  end
end
end  
chat.MessageRecieved:Connect(function(textChatMessage)
chat(textChatMessage.Text)
end)