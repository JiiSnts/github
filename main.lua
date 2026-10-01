-- 1. CONFIGURATION TABLE
getgenv().Config = {
    Dashboard = {
        Enabled = true,       
        SyncConfig = true,    
        GroupName = "vps1",   
    },
    Settings = {
        AutoShowUI = true, 
        ShowOverlay = false, 
        ReduceGraphics = false, 
        FPSCap = 0, 
        LureId = "ice_dimension_2025_ice_soup_bait", 
        TradeInvites = "Everyone", 
    },
    BabyFarm = false, 
    AutoCertificate = false, 
    PetFarm = {
        Enabled = true, -- BERI NILAI true JIKA INGIN OTOMATIS FARM PET
        FarmEggs = true, -- BERI NILAI true JIKA INGIN MENETASKAN EGG
        BuyEggs = false, 
        EggTypes = {}, 
        BuyEggType = "any", 
        MaxPets = 1, 
        FarmUntilFullGrown = false, 
        PrioritizeFriendship = false, 
        SelectiveFarm = false, 
        SelectedPetTypes = {}, 
    },
    TaskExclusion = {
        Enabled = false, 
        ExcludedTasks = {}, 
    },
    PetPen = { Enabled = false, Eggs = {}, Pets = {}, Priority = {"egg", "neon", "regular"}, Excluded = {} },
    AutoPotion = { Enabled = false, SelectedPets = {"lny_2026_fire_foal"}, PotionVersionFilter = {} },
    AutoNeon = { Enabled = false, MakeMega = false, NeonAll = true, SelectedPets = {}, MaxPerType = {} },
    AutoRecycle = { Enabled = false, RarityFilter = {}, Pets = {}, Keep = {}, Excluded = {} },
    AutoTrade = {
        Enabled = false, AutoAcceptTrades = false, AutoLeaveAfterTrades = false, Usernames = {}, TradeMode = "all", Categories = {}, Items = {}, ItemCounts = {}, GlobalPetFilter = { Versions = {}, Ages = {} }, PetFilters = {}, 
    },
    AutoPay = { Enabled = false, TargetPlayer = {}, Methods = {} },
    AutoBuy = { Enabled = false, SelectedItems = {}, BuyAmounts = {} },
    AutoOpen = { Enabled = false, Items = {} }
}

-- 2. ZEKEHUB MAIN LOADER 
loadstring(game:HttpGet("https://githubusercontent.com"))()
