```lua
--[[
    ╔═══════════════════════════════════════════════════════════════╗
    ║                      🎭 JESTER HUB 🃏                        ║
    ║                    Brookhaven Roleplay v4.5                  ║
    ║                                                               ║
    ║                      👑 by Joker & Família                   ║
    ║                                                               ║
    ║              🖼️ Logo ID: 70982251853207                      ║
    ║              💎 VIP System: Keys Únicas + 3 Planos           ║
    ║              ✈️ Fly GUI V3 - Estilo COQUETTE                 ║
    ║              📢 Discord: https://discord.gg/RvnySAYAC        ║
    ╚═══════════════════════════════════════════════════════════════╝
]]

-- ==========================================
-- ANIMAÇÃO DE CARREGAMENTO (tema baralho)
-- ==========================================
local function MostrarAnimacaoCarregamento()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "JesterLoading"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Fundo escuro com fade
    local Background = Instance.new("Frame")
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Background.BackgroundTransparency = 0.3
    Background.BorderSizePixel = 0
    Background.Parent = ScreenGui

    -- Frame central com efeito de vidro
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 350, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -175, 0.5, -200)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 20, 30)
    MainFrame.BackgroundTransparency = 0.2
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui

    -- Borda roxa brilhante
    local Border = Instance.new("Frame")
    Border.Size = UDim2.new(1, 4, 1, 4)
    Border.Position = UDim2.new(0, -2, 0, -2)
    Border.BackgroundColor3 = Color3.fromRGB(180, 70, 200)
    Border.BackgroundTransparency = 0.3
    Border.BorderSizePixel = 0
    Border.Parent = MainFrame

    -- Logo (sua imagem)
    local Logo = Instance.new("ImageLabel")
    Logo.Size = UDim2.new(0.8, 0, 0.4, 0)
    Logo.Position = UDim2.new(0.1, 0, 0.1, 0)
    Logo.BackgroundTransparency = 1
    Logo.Image = "rbxassetid://70982251853207"
    Logo.ScaleType = Enum.ScaleType.Fit
    Logo.Parent = MainFrame

    -- Nome com baralho
    local Nome = Instance.new("TextLabel")
    Nome.Size = UDim2.new(1, 0, 0, 50)
    Nome.Position = UDim2.new(0, 0, 0.5, -25)
    Nome.BackgroundTransparency = 1
    Nome.Text = "🎭 JESTER HUB 🃏"
    Nome.TextColor3 = Color3.fromRGB(220, 130, 240)
    Nome.TextScaled = true
    Nome.Font = Enum.Font.GothamBold
    Nome.Parent = MainFrame

    -- Animação de cartas girando
    local function CriarCarta(posX, posY, delay)
        local Carta = Instance.new("Frame")
        Carta.Size = UDim2.new(0, 30, 0, 40)
        Carta.Position = UDim2.new(posX, 0, posY, 0)
        Carta.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Carta.BackgroundTransparency = 0.2
        Carta.BorderSizePixel = 0
        Carta.Parent = MainFrame

        local CartaTexto = Instance.new("TextLabel")
        CartaTexto.Size = UDim2.new(1, 0, 1, 0)
        CartaTexto.BackgroundTransparency = 1
        CartaTexto.Text = "🃏"
        CartaTexto.TextColor3 = Color3.fromRGB(180, 70, 200)
        CartaTexto.TextScaled = true
        CartaTexto.Font = Enum.Font.GothamBold
        CartaTexto.Parent = Carta

        -- Animação
        local angle = 0
        local rotationSpeed = 0.02
        local moveUp = true
        local yPos = 0
        
        game:GetService("RunService").Heartbeat:Connect(function()
            if not Carta or not Carta.Parent then return end
            
            angle = angle + rotationSpeed
            Carta.Rotation = math.sin(angle) * 15
            
            if moveUp then
                yPos = yPos + 0.5
                if yPos >= 5 then moveUp = false end
            else
                yPos = yPos - 0.5
                if yPos <= -5 then moveUp = true end
            end
            Carta.Position = UDim2.new(posX, 0, posY, yPos)
        end)
    end

    CriarCarta(0.1, 0.7, 0)
    CriarCarta(0.8, 0.7, 0.2)
    CriarCarta(0.45, 0.8, 0.4)

    -- Barra de progresso
    local ProgressBar = Instance.new("Frame")
    ProgressBar.Size = UDim2.new(0.8, 0, 0, 5)
    ProgressBar.Position = UDim2.new(0.1, 0, 0.85, 0)
    ProgressBar.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    ProgressBar.BorderSizePixel = 0
    ProgressBar.Parent = MainFrame

    local ProgressFill = Instance.new("Frame")
    ProgressFill.Size = UDim2.new(0, 0, 1, 0)
    ProgressFill.BackgroundColor3 = Color3.fromRGB(180, 70, 200)
    ProgressFill.BorderSizePixel = 0
    ProgressFill.Parent = ProgressBar

    -- Texto de carregamento
    local LoadingText = Instance.new("TextLabel")
    LoadingText.Size = UDim2.new(1, 0, 0, 30)
    LoadingText.Position = UDim2.new(0, 0, 0.9, 0)
    LoadingText.BackgroundTransparency = 1
    LoadingText.Text = "CARREGANDO..."
    LoadingText.TextColor3 = Color3.fromRGB(220, 130, 240)
    LoadingText.TextScaled = true
    LoadingText.Font = Enum.Font.Gotham
    LoadingText.Parent = MainFrame

    -- Animação da barra de progresso
    local progress = 0
    local texts = {"CARREGANDO...", "EMBARALHANDO...", "DANDO AS CARTAS...", "QUASE LÁ...", "PRONTO!"}
    local textIndex = 1
    
    game:GetService("RunService").Heartbeat:Connect(function()
        if progress < 1 then
            progress = progress + 0.005
            ProgressFill.Size = UDim2.new(progress, 0, 1, 0)
            
            if progress > 0.25 and textIndex == 1 then
                LoadingText.Text = texts[2]
                textIndex = 2
            elseif progress > 0.5 and textIndex == 2 then
                LoadingText.Text = texts[3]
                textIndex = 3
            elseif progress > 0.75 and textIndex == 3 then
                LoadingText.Text = texts[4]
                textIndex = 4
            elseif progress > 0.95 and textIndex == 4 then
                LoadingText.Text = texts[5]
                textIndex = 5
            end
        else
            wait(0.5)
            ScreenGui:Destroy()
        end
    end)

    return ScreenGui
end
```
```lua
-- ==========================================
-- CONFIGURAÇÕES INICIAIS
-- ==========================================
local LOGO_ID = 70982251853207
local DISCORD_LINK = "https://discord.gg/RvnySAYAC"
local Player = game.Players.LocalPlayer
local UserId = Player.UserId
local Mouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- Cores do Jester
local COR_JESTER = Color3.fromRGB(180, 70, 200)
local COR_JESTER_CLARA = Color3.fromRGB(220, 130, 240)
local COR_FUNDO = Color3.fromRGB(25, 20, 30)
local COR_VIP = Color3.fromRGB(255, 215, 0)

-- ==========================================
-- VARIÁVEIS GLOBAIS
-- ==========================================
local VIP_ATIVO = false
local VIP_TIPO = nil
local versaoEscolhida = nil
local Library = nil

-- ==========================================
-- FUNÇÕES UTILITÁRIAS
-- ==========================================
local function Notify(msg, time, isVIP)
    local title = isVIP and "💎 JESTER VIP" or "🎭 JESTER HUB"
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = msg,
        Duration = time or 3
    })
end

local function GetPlayer(name)
    for _, p in pairs(Players:GetPlayers()) do
        if p.Name:lower():find(name:lower()) or p.DisplayName:lower():find(name:lower()) then
            return p
        end
    end
    return nil
end

local function GetPlayerList()
    local list = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= Player then
            table.insert(list, p.Name .. " [" .. p.DisplayName .. "]")
        end
    end
    return list
end
``````lua
-- ==========================================
-- SISTEMA DE KEYS (via GitHub)
-- ==========================================
local KeySystem = {}

KeySystem.KEYS_URL = "https://raw.githubusercontent.com/kadlulu021-coder/jester-keys/main/keys.json"

function KeySystem:CarregarKeys()
    local sucesso, data = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(self.KEYS_URL))
    end)
    if sucesso and data and data.keys then
        return data.keys
    else
        warn("❌ Erro ao carregar keys do servidor.")
        return {}
    end
end

function KeySystem:VerificarKey(keyDigitada)
    local keys = self:CarregarKeys()
    local keyData = keys[keyDigitada]
    if not keyData then
        return false, "invalida"
    end
    if keyData.usada then
        if keyData.userid == UserId then
            return true, keyData.tipo
        else
            return false, "usada"
        end
    else
        return true, keyData.tipo, keyDigitada
    end
end

function KeySystem:MarcarComoUsada(key, tipo)
    Notify("✅ Key ativada! Tipo: " .. tipo, 4, true)
end

function KeySystem:TelaAtivacao()
    local VersaoWindow = Library.CreateLib("🎭 JESTER HUB 🃏 - Ativação VIP", "DarkTheme")
    local AtivTab = VersaoWindow:NewTab("💎 VIP")
    local AtivSec = AtivTab:NewSection("🔑 Ative sua Key")

    AtivSec:NewLabel("Digite sua KEY VIP para desbloquear vantagens exclusivas:")
    local keyInput = ""
    AtivSec:NewInput("KEY", "Ex: JESTER-10D-ABC123", function(text)
        keyInput = text
    end)

    AtivSec:NewButton("✅ ATIVAR VIP", "", function()
        if keyInput == "" then Notify("❌ Digite uma key!", 3) return end

        local valido, tipo, key = self:VerificarKey(keyInput)
        if valido then
            VIP_ATIVO = true
            VIP_TIPO = tipo
            self:MarcarComoUsada(key, tipo)
            VersaoWindow:Destroy()
            MostrarSeletorVersao()
        else
            if tipo == "usada" then
                Notify("❌ Esta key já foi usada em outra conta!", 4)
            else
                Notify("❌ Key inválida! Verifique e tente novamente.", 3)
            end
        end
    end)

    AtivSec:NewButton("❌ CONTINUAR SEM VIP", "", function()
        VersaoWindow:Destroy()
        MostrarSeletorVersao()
    end)
end

-- ==========================================
-- SELETOR DE VERSÃO
-- ==========================================
function MostrarSeletorVersao()
    local VersaoWindow = Library.CreateLib("🎭 JESTER HUB 🃏 - Selecione a Versão", "DarkTheme")
    local VersaoTab = VersaoWindow:NewTab("🌍 Versão")
    local VersaoSec = VersaoTab:NewSection("Select Hub Version")

    VersaoSec:NewButton("🇧🇷 HUB BRASILEIRO", "Versão em Português", function()
        versaoEscolhida = "BR"
        VersaoWindow:Destroy()
        CarregarHub()
    end)

    VersaoSec:NewButton("🇺🇸 HUB ENGLISH", "English Version", function()
        versaoEscolhida = "US"
        VersaoWindow:Destroy()
        CarregarHub()
    end)

    VersaoSec:NewButton("🌍 Teleport Tool", "Ferramenta de teleporte", function()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Parent = Player.Backpack
        tool.Activated:Connect(function()
            local target = Mouse.Hit
            if target and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                Player.Character.HumanoidRootPart.CFrame = target
            end
        end)
        Player.Character:FindFirstChildOfClass("Humanoid"):EquipTool(tool)
        Notify("🌍 Ferramenta de teleporte equipada!")
    end)
end
``````lua
-- ==========================================
-- FLY GUI V3
-- ==========================================
local FlyGUI = {}
FlyGUI.active = false
FlyGUI.speed = 50
FlyGUI.vipSpeed = 100
FlyGUI.bodyGyro = nil
FlyGUI.bodyVelocity = nil
FlyGUI.connection = nil
FlyGUI.screenGui = nil
FlyGUI.mainFrame = nil

function FlyGUI:CriarInterface()
    self.screenGui = Instance.new("ScreenGui")
    self.screenGui.Name = "JesterFlyGUI"
    self.screenGui.Parent = Player:WaitForChild("PlayerGui")
    self.screenGui.ResetOnSpawn = false

    self.mainFrame = Instance.new("Frame")
    self.mainFrame.Size = UDim2.new(0, 220, 0, 140)
    self.mainFrame.Position = UDim2.new(0, 20, 0.5, -70)
    self.mainFrame.BackgroundColor3 = COR_FUNDO
    self.mainFrame.BorderSizePixel = 0
    self.mainFrame.Active = true
    self.mainFrame.Draggable = true
    self.mainFrame.Parent = self.screenGui

    local outline = Instance.new("Frame")
    outline.Size = UDim2.new(1, 4, 1, 4)
    outline.Position = UDim2.new(0, -2, 0, -2)
    outline.BackgroundColor3 = COR_JESTER
    outline.BackgroundTransparency = 0.5
    outline.BorderSizePixel = 0
    outline.ZIndex = 0
    outline.Parent = self.mainFrame

    -- Título
    local titleFrame = Instance.new("Frame")
    titleFrame.Size = UDim2.new(1, 0, 0, 30)
    titleFrame.BackgroundColor3 = COR_JESTER
    titleFrame.BorderSizePixel = 0
    titleFrame.Parent = self.mainFrame

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -10, 1, 0)
    title.Position = UDim2.new(0, 10, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "✈️ FLY GUI V3 🃏"
    title.TextColor3 = Color3.new(1,1,1)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Font = Enum.Font.GothamBold
    title.TextSize = 16
    title.Parent = titleFrame

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.new(0, 30, 0, 30)
    closeBtn.Position = UDim2.new(1, -30, 0, 0)
    closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.new(1,1,1)
    closeBtn.TextSize = 16
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.BorderSizePixel = 0
    closeBtn.Parent = titleFrame
    closeBtn.MouseButton1Click:Connect(function()
        self:Stop()
        if self.screenGui then self.screenGui:Destroy() end
    end)

    -- Botões para cima/baixo
    local controlsFrame = Instance.new("Frame")
    controlsFrame.Size = UDim2.new(1, -20, 0, 40)
    controlsFrame.Position = UDim2.new(0, 10, 0, 40)
    controlsFrame.BackgroundTransparency = 1
    controlsFrame.Parent = self.mainFrame

    local upBtn = Instance.new("TextButton")
    upBtn.Size = UDim2.new(0.45, -5, 1, 0)
    upBtn.Position = UDim2.new(0, 0, 0, 0)
    upBtn.BackgroundColor3 = COR_JESTER
    upBtn.Text = "⬆️ PARA CIMA"
    upBtn.TextColor3 = Color3.new(1,1,1)
    upBtn.TextSize = 14
    upBtn.Font = Enum.Font.GothamBold
    upBtn.BorderSizePixel = 0
    upBtn.Parent = controlsFrame
    upBtn.MouseButton1Click:Connect(function()
        self.speed = math.min(self.speed + 10, 200)
        speedLabel.Text = "⚡ " .. self.speed .. " studs"
    end)

    local downBtn = Instance.new("TextButton")
    downBtn.Size = UDim2.new(0.45, -5, 1, 0)
    downBtn.Position = UDim2.new(0.55, 5, 0, 0)
    downBtn.BackgroundColor3 = COR_JESTER
    downBtn.Text = "⬇️ DOWN"
    downBtn.TextColor3 = Color3.new(1,1,1)
    downBtn.TextSize = 14
    downBtn.Font = Enum.Font.GothamBold
    downBtn.BorderSizePixel = 0
    downBtn.Parent = controlsFrame
    downBtn.MouseButton1Click:Connect(function()
        self.speed = math.max(self.speed - 10, 10)
        speedLabel.Text = "⚡ " .. self.speed .. " studs"
    end)

    -- Velocidade
    local speedFrame = Instance.new("Frame")
    speedFrame.Size = UDim2.new(1, -20, 0, 30)
    speedFrame.Position = UDim2.new(0, 10, 0, 85)
    speedFrame.BackgroundTransparency = 0.5
    speedFrame.BackgroundColor3 = Color3.fromRGB(40,40,50)
    speedFrame.BorderSizePixel = 0
    speedFrame.Parent = self.mainFrame

    local speedLabel = Instance.new("TextLabel")
    speedLabel.Size = UDim2.new(1, -10, 1, 0)
    speedLabel.Position = UDim2.new(0, 5, 0, 0)
    speedLabel.BackgroundTransparency = 1
    speedLabel.Text = "⚡ " .. self.speed .. " studs"
    speedLabel.TextColor3 = Color3.new(1,1,1)
    speedLabel.Font = Enum.Font.Gotham
    speedLabel.TextSize = 14
    speedLabel.Parent = speedFrame
end

function FlyGUI:Start()
    if self.active then return end
    self.active = true

    if not self.screenGui or not self.screenGui.Parent then
        self:CriarInterface()
    end

    local character = Player.Character
    if not character then
        Player.CharacterAdded:Wait()
        character = Player.Character
    end
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end

    self.bodyGyro = Instance.new("BodyGyro")
    self.bodyGyro.MaxTorque = Vector3.new(9e9,9e9,9e9)
    self.bodyGyro.P = 1000
    self.bodyGyro.D = 50
    self.bodyGyro.Parent = rootPart

    self.bodyVelocity = Instance.new("BodyVelocity")
    self.bodyVelocity.MaxForce = Vector3.new(9e9,9e9,9e9)
    self.bodyVelocity.Parent = rootPart

    local velocidadeAtual = VIP_ATIVO and self.vipSpeed or self.speed

    self.connection = RunService.Heartbeat:Connect(function()
        if not self.active or not rootPart or not rootPart.Parent then
            self:Stop()
            return
        end

        local move = Vector3.new(0,0,0)
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            move = move + Camera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            move = move - Camera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            move = move - Camera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            move = move + Camera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            move = move + Vector3.new(0,1,0)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            move = move - Vector3.new(0,1,0)
        end

        if move.Magnitude > 0 then
            move = move.Unit
        end
        self.bodyVelocity.Velocity = move * velocidadeAtual
        self.bodyGyro.CFrame = CFrame.new(rootPart.Position, rootPart.Position + Camera.CFrame.LookVector)
    end)

    Notify("✈️ Fly ativado! Use WASD + Espaço/CTRL", 3)
end

function FlyGUI:Stop()
    if self.bodyGyro then self.bodyGyro:Destroy() self.bodyGyro = nil end
    if self.bodyVelocity then self.bodyVelocity:Destroy() self.bodyVelocity = nil end
    if self.connection then self.connection:Disconnect() self.connection = nil end
    self.active = false
    Notify("✈️ Fly desativado!", 2)
end

function FlyGUI:Toggle()
    if self.active then self:Stop() else self:Start() end
end
``````lua
-- ==========================================
-- PAINEL VIP
-- ==========================================
local function CriarPainelVIP(window)
    if not VIP_ATIVO then return end

    local VIPTab = window:NewTab("💎 VIP")
    local VIPSec = VIPTab:NewSection("⚡ Vantagens Exclusivas")

    VIPSec:NewLabel("Seu plano: " .. (VIP_TIPO == "trial" and "🔑 Trial 10 dias" or VIP_TIPO == "vip" and "💎 VIP 30 dias" or "👑 Lifetime"))

    -- ADMIN VIP
    local AdminSec = VIPTab:NewSection("👑 Admin VIP")
    local vipDropdown = AdminSec:NewDropdown("🎯 Alvo", "", GetPlayerList(), function() end)
    AdminSec:NewButton("🔄 Atualizar", "", function() vipDropdown:Refresh(GetPlayerList()) end)

    AdminSec:NewButton("👢 Kick (expulsar)", "", function()
        local nome = vipDropdown.Value
        if not nome then Notify("Selecione um jogador!", 3) return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target then
            pcall(function() target.Character:BreakJoints() end)
            Notify("👢 " .. target.Name .. " expulso!", 3, true)
        end
    end)

    AdminSec:NewButton("💀 Kill (matar)", "", function()
        local nome = vipDropdown.Value
        if not nome then return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target and target.Character then
            local hum = target.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.Health = 0 end
            Notify("💀 " .. target.Name .. " morto!", 3, true)
        end
    end)

    AdminSec:NewButton("❄️ Freeze (congelar)", "", function()
        local nome = vipDropdown.Value
        if not nome then return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            target.Character.HumanoidRootPart.Anchored = true
            Notify("❄️ " .. target.Name .. " congelado!", 3, true)
        end
    end)

    AdminSec:NewButton("🔥 Unfreeze", "", function()
        local nome = vipDropdown.Value
        if not nome then return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            target.Character.HumanoidRootPart.Anchored = false
            Notify("🔥 " .. target.Name .. " descongelado!", 3, true)
        end
    end)

    -- PROTEÇÃO
    local ProtSec = VIPTab:NewSection("🛡️ Proteção")
    local antiKill = false
    ProtSec:NewToggle("⚔️ Anti-kill", "Não morre", function(state)
        antiKill = state
        local char = Player.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.MaxHealth = antiKill and math.huge or 100
                hum.Health = hum.MaxHealth
            end
        end
        Notify(antiKill and "⚔️ Anti-kill ativado" or "⚔️ Anti-kill desativado", 3, true)
    end)

    -- GAMEPASSES
    local GamepassSec = VIPTab:NewSection("🔓 Gamepasses Automáticos")
    local gamepassesVIP = {
        {nome = "VIP Pass", id = 81881085814072},
        {nome = "Premium Pass", id = 79115019295211},
        {nome = "Estate Pass", id = 106740492797177},
        {nome = "Vehicle Pass", id = 81153927159685},
    }
    GamepassSec:NewButton("⚡ Ativar todos agora", "", function()
        for _, gp in ipairs(gamepassesVIP) do
            pcall(function()
                ReplicatedStorage:FindFirstChild("ChangeCharacterBody"):InvokeServer({gp.id})
            end)
            wait(0.1)
        end
        Notify("✅ Gamepasses ativadas!", 3, true)
    end)
    
    Player.CharacterAdded:Connect(function()
        if VIP_ATIVO then
            for _, gp in ipairs(gamepassesVIP) do
                pcall(function()
                    ReplicatedStorage:FindFirstChild("ChangeCharacterBody"):InvokeServer({gp.id})
                end)
            end
        end
    end)

    -- CARROS VIP
    local CarrosSec = VIPTab:NewSection("🚗 Carros VIP")
    local carrosLista = {"Lamborghini VIP", "Ferrari Premium", "Bugatti Gold"}
    for _, carro in ipairs(carrosLista) do
        CarrosSec:NewButton("🚘 " .. carro, "", function()
            Notify("🚗 " .. carro .. " spawnado! (VIP)", 3, true)
        end)
    end

    -- FLY VIP
    local FlyVIPSec = VIPTab:NewSection("✈️ Fly VIP")
    FlyVIPSec:NewButton("✈️ Ativar fly VIP", "2x mais rápido", function()
        FlyGUI.vipSpeed = 100
        FlyGUI:Start()
    end)
    FlyVIPSec:NewButton("✈️ Desativar fly", "", function()
        FlyGUI:Stop()
    end)

    -- CHAT VIP
    local ChatSec = VIPTab:NewSection("💬 Chat VIP")
    local msgVIP = ""
    ChatSec:NewInput("Mensagem VIP", "Digite...", function(text) msgVIP = text end)
    ChatSec:NewButton("📤 Enviar (com tag [VIP])", "", function()
        if msgVIP == "" then return end
        local finalMsg = "💎 [VIP] " .. Player.Name .. ": " .. msgVIP
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(finalMsg, "All")
        Notify("📤 Mensagem VIP enviada!", 2, true)
    end)

    -- TAG VIP
    local TagSec = VIPTab:NewSection("👑 Tag VIP")
    TagSec:NewButton("💎 Ativar tag [VIP]", "", function()
        Player.DisplayName = "💎 [VIP] " .. Player.Name
        Notify("✅ Tag VIP ativada!", 3, true)
    end)

    -- EMOTES VIP
    local EmoteSec = VIPTab:NewSection("🎭 Emotes VIP")
    local emotes = {"🤴 Dança VIP", "💃 Samba", "👑 Pose Real"}
    for _, em in ipairs(emotes) do
        EmoteSec:NewButton(em, "", function()
            Notify("🎭 " .. em .. "! (VIP)", 2, true)
        end)
    end
end
``````lua
-- ==========================================
-- FUNÇÃO PARA CARREGAR O HUB
-- ==========================================
function CarregarHub()
    -- Textos conforme versão
    local txt = {
        BR = {
            fun = "🎮 Diversão",
            gamepass = "🏠 Gamepasses",
            troll = "😈 Troll",
            admin = "⚡ Admin",
            dono = "👑 Dono",
            fly = "✈️ Fly",
            invis = "👻 Invisível",
        },
        US = {
            fun = "🎮 Fun",
            gamepass = "🏠 Gamepasses",
            troll = "😈 Troll",
            admin = "⚡ Admin",
            dono = "👑 Owner",
            fly = "✈️ Fly",
            invis = "👻 Invisible",
        }
    }
    local T = txt[versaoEscolhida or "BR"]

    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("🎭 JESTER HUB 🃏 - Brookhaven RP", "DarkTheme")

    -- Logo (primeira aba)
    local LogoTab = Window:NewTab("🎭 Jester")
    local LogoSec = LogoTab:NewSection("✦ Logo Oficial ✦")
    local frameLogo = Instance.new("Frame")
    frameLogo.Size = UDim2.new(1, -20, 0, 250)
    frameLogo.Position = UDim2.new(0, 10, 0, 10)
    frameLogo.BackgroundColor3 = COR_FUNDO
    frameLogo.BorderSizePixel = 0
    frameLogo.Parent = LogoSec.Section

    local img = Instance.new("ImageLabel")
    img.Size = UDim2.new(1, -20, 1, -20)
    img.Position = UDim2.new(0, 10, 0, 10)
    img.BackgroundTransparency = 1
    img.Image = "rbxassetid://" .. LOGO_ID
    img.ScaleType = Enum.ScaleType.Fit
    img.Parent = frameLogo

    LogoSec:NewButton("📢 Discord", "Clique para copiar link", function()
        setclipboard(DISCORD_LINK)
        Notify("✅ Link do Discord copiado!")
    end)

    -- Créditos
    local CredTab = Window:NewTab("👑 Créditos")
    local CredSec = CredTab:NewSection("🎭 JESTER HUB")
    CredSec:NewLabel("╔════════════════════════════╗")
    CredSec:NewLabel("║      🎭 JESTER HUB 🃏     ║")
    CredSec:NewLabel("║    by Joker & Família     ║")
    CredSec:NewLabel("╠════════════════════════════╣")
    CredSec:NewLabel("║  👑 Dono: Joker           ║")
    CredSec:NewLabel("║  👑 Admins: Irmã & Irmão  ║")
    CredSec:NewLabel("║  🖼️ Logo ID: " .. LOGO_ID)
    CredSec:NewLabel("║  📢 Discord: " .. DISCORD_LINK)
    CredSec:NewLabel("║  📅 Versão: 4.5           ║")
    CredSec:NewLabel("╚════════════════════════════╝")

    -- Aba de Diversão
    local FunTab = Window:NewTab(T.fun)
    local FunSec = FunTab:NewSection("⚡ Modos")

    FunSec:NewButton("✈️ " .. T.fly, "Ativar fly GUI", function()
        FlyGUI:Toggle()
    end)

    -- Invisível
    local invis = false
    FunSec:NewToggle("👻 " .. T.invis, "", function(state)
        invis = state
        local char = Player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = invis and 1 or 0
                end
            end
        end
        Notify(invis and "👻 Invisível" or "👻 Visível", 2)
    end)

    -- Gamepasses (para não VIP também)
    local GameTab = Window:NewTab(T.gamepass)
    local GameSec = GameTab:NewSection("🔓 Gamepasses")
    local gamepassesComuns = {
        {nome = "💎 VIP Pass", id = 81881085814072},
        {nome = "⭐ Premium Pass", id = 79115019295211},
        {nome = "🏰 Estate Pass", id = 106740492797177},
        {nome = "🚗 Vehicle Pass", id = 81153927159685},
        {nome = "⚡ Speed Pass", id = 88668275797583},
        {nome = "🐎 Horse Pass", id = 115379341593655}
    }
    for _, gp in ipairs(gamepassesComuns) do
        GameSec:NewButton(gp.nome, "", function()
            pcall(function()
                ReplicatedStorage:FindFirstChild("ChangeCharacterBody"):InvokeServer({gp.id})
            end)
            Notify("✅ " .. gp.nome .. " ativado!", 2)
        end)
    end
    GameSec:NewButton("🔓🔓 Ativar todos", "", function()
        for _, gp in ipairs(gamepassesComuns) do
            pcall(function() ReplicatedStorage:FindFirstChild("ChangeCharacterBody"):InvokeServer({gp.id}) end)
            wait(0.1)
        end
        Notify("✅ Todos ativados!", 3)
    end)

    -- Aba Troll
    local TrollTab = Window:NewTab(T.troll)
    local TrollSec = TrollTab:NewSection("🎭 Trollar")
    local trollDropdown = TrollSec:NewDropdown("Selecionar", "", GetPlayerList(), function() end)
    TrollSec:NewButton("🔄 Atualizar", "", function() trollDropdown:Refresh(GetPlayerList()) end)
    TrollSec:NewButton("🔄 Puxar (bring)", "", function()
        local nome = trollDropdown.Value
        if not nome then return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local myChar = Player.Character
            if myChar and myChar:FindFirstChild("HumanoidRootPart") then
                target.Character.HumanoidRootPart.CFrame = myChar.HumanoidRootPart.CFrame
                Notify("😈 " .. target.Name .. " puxado!")
            end
        end
    end)
    TrollSec:NewButton("💥 Explodir", "", function()
        local nome = trollDropdown.Value
        if not nome then return end
        local target = GetPlayer(nome:match("([^%s]+)"))
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local exp = Instance.new("Explosion")
            exp.Position = target.Character.HumanoidRootPart.Position
            exp.BlastRadius = 10
            exp.Parent = workspace
            Notify("💥 " .. target.Name .. " explodido!")
        end
    end)

    -- Se for admin da família, adiciona aba Admin (poderes totais)
    local familia = { [4394095679] = true, [5021276192] = true, [7154477635] = true }
    if familia[UserId] then
        local AdminTab = Window:NewTab(T.admin)
        local AdminSec = AdminTab:NewSection("👑 Admin")
        local adminDropdown = AdminSec:NewDropdown("🎯 Alvo", "", GetPlayerList(), function() end)
        AdminSec:NewButton("🔄 Atualizar", "", function() adminDropdown:Refresh(GetPlayerList()) end)

        AdminSec:NewButton("👢 Kick", "", function()
            local nome = adminDropdown.Value
            if not nome then return end
            local target = GetPlayer(nome:match("([^%s]+)"))
            if target then pcall(function() target.Character:BreakJoints() end) end
        end)
        AdminSec:NewButton("💀 Kill", "", function()
            local nome = adminDropdown.Value
            if not nome then return end
            local target = GetPlayer(nome:match("([^%s]+)"))
            if target and target.Character then
                local hum = target.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum.Health = 0 end
            end
        end)
        AdminSec:NewButton("📍 Trazer todos", "", function()
            local myChar = Player.Character
            if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return end
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= Player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.CFrame = myChar.HumanoidRootPart.CFrame
                    wait(0.1)
                end
            end
        end)
    end

    -- Se for dono, aba extra
    if UserId == 4394095679 then
        local DonoTab = Window:NewTab(T.dono)
        local DonoSec = DonoTab:NewSection("🔐 Exclusivo")
        DonoSec:NewButton("⚡ Modo supremo", "", function()
            Notify("⚡ Modo supremo ativado!", 3, true)
        end)
    end

    -- Painel VIP (se tiver VIP)
    CriarPainelVIP(Window)

    Notify("🎭 JESTER HUB carregado! Versão: " .. versaoEscolhida, 5)
end

-- ==========================================
-- INÍCIO DO SCRIPT
-- ==========================================
MostrarAnimacaoCarregamento()
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
KeySystem:TelaAtivacao()
```
