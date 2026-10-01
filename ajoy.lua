   getgenv().Config = {
        Dashboard = {
            Enabled = true,       -- Send stats to dashboard
            SyncConfig = true,    -- Accept config pushes from dashboard
            GroupName = "vps1",   -- Group name for organising accounts on dashboard (https://zekehub.com/dashboard/adoptme)
        },
        Settings = {
            AutoShowUI = true, -- Load the UI on script start (main overlay disable for less memory usage)
            ShowOverlay = false, -- Show stats overlay (disables 3D rendering)
            ReduceGraphics = false, -- Reduce graphics quality to minimum
            FPSCap = 0, -- FPS cap option (0 = uncapped)
            LureId = "ice_dimension_2025_ice_soup_bait", -- what lure to use for example: "ice_dimension_2025_ice_soup_bait"
            TradeInvites = "Everyone", -- "Everyone" or "Friends"
        },
        BabyFarm = false, -- Does baby farm
        AutoCertificate = false, -- Auto use Pet Handler Pro Certificate when less than 30 days remaining
        PetFarm = {
            Enabled = false, -- Enables the Pet Farm
            FarmEggs = false, -- If true, equips eggs to hatch them. If false, equips regular pets
            BuyEggs = false, -- If FarmEggs is true and no eggs in inventory, buy eggs automatically
            EggTypes = {}, -- Which eggs to equip ({} = any egg, or {"cracked_egg", "royal_egg"} for specific)
            BuyEggType = "any", -- Which egg to buy when BuyEggs is true ("any" or specific egg ID)
            MaxPets = 1, -- How many pets to equip at once (1 = free, 2 = requires Robux gamepass)
            FarmUntilFullGrown = false, -- If true, selects pets that aren't full grown first
            PrioritizeFriendship = false, -- If true, selects pets with higher friendship level first
            SelectiveFarm = false, -- If true, only farm pets in SelectedPetTypes list
            SelectedPetTypes = {}, -- Pet IDs to farm when SelectiveFarm is true (e.g., {"dog", "cat"})
        },
        TaskExclusion = {
            Enabled = false, -- Skip certain farming tasks
            ExcludedTasks = {}, -- Task IDs to skip (e.g., {"buccaneer_band", "summerfest_bonfire"})
        },
        PetPen = {
            Enabled = false, -- Put pets and eggs in the pet pen for idle XP
            Eggs = {}, -- Egg IDs in priority order, e.g. {"royal_egg", "cracked_egg", "starter_egg"} ({} = any egg)
            Pets = {}, -- Pet IDs in priority order, e.g. {"basic_egg_2022_ant", "basic_egg_2022_camel"} ({} = any pet)
            Priority = {"egg", "neon", "regular"}, -- What claims a free slot first. Reorder to age pets before eggs, e.g. {"regular", "neon", "egg"}
            Excluded = {}, -- Never pen these, e.g. {"shadow_dragon", "lny_2026_fire_foal"}
        },
        AutoPotion = {
            Enabled = false, -- Use age potions on pets to level them up
            SelectedPets = {"lny_2026_fire_foal"}, -- Pet IDs to use potions on (empty = does nothing)
            PotionVersionFilter = {}, -- Per-pet version filter e.g. {dog = {"neon"}, cat = {"regular", "neon"}} - empty = all versions
        },
        AutoNeon = {
            Enabled = false, -- Enable auto neon/mega fusion
            MakeMega = false, -- Fuse neons into mega neons
            NeonAll = true, -- Neon everything possible
            SelectedPets = {}, -- {} when NeonAll = true, otherwise {"dog", "cat"} etc
            MaxPerType = {}, -- {} = unlimited, {dog = 2, cat = 1} = limits per pet type
        },
        AutoRecycle = {
            Enabled = false, -- Toggle auto recycling on/off
            RarityFilter = {
                -- Each rarity maps to a list of versions to recycle
                -- Versions: "regular", "neon", "mega"
                -- If a rarity is not listed or empty, pets of that rarity will NOT be recycled
                -- If a rarity has versions listed, ONLY those versions will be recycled

                -- common = {"regular", "neon", "mega"},  -- Recycle all common versions
                -- uncommon = {"neon"},                    -- Only recycle neon uncommons
                -- rare = {"regular", "neon", "mega"},     -- Recycle all rare versions
                -- ultra_rare = {"regular", "neon", "mega"}, -- Recycle all ultra rare versions
                -- legendary = {"mega"},                   -- Only recycle mega legendaries
            },
            Pets = {}, -- Specific pet IDs to always recycle regardless of RarityFilter, e.g. {"basic_egg_2022_ant", "basic_egg_2022_mouse"}
                       -- Add :version and/or :age:N to narrow it down (1 = Newborn, 6 = Full Grown)
                       -- e.g. {"basic_egg_2022_corgi:regular", "basic_egg_2022_ant:age:1", "basic_egg_2022_camel:neon:age:6"}
            Keep = {}, -- Keep this many of a pet and recycle the rest, e.g. {basic_egg_2022_ant = 4, basic_egg_2022_camel = 4} (4 each = enough for a neon)
            Excluded = {}, -- Never recycle these, e.g. {"shadow_dragon", "basic_egg_2022_alicorn"}
                           -- Also accepts :version and :age:N, e.g. {"basic_egg_2022_corgi:neon", "basic_egg_2022_ant:age:6"}
        },
        AutoTrade = {
            Enabled = false, -- Enable auto trading
            AutoAcceptTrades = false, -- Accept incoming trade requests
            AutoLeaveAfterTrades = false, -- Leave the game after completing trades
            Usernames = {}, -- Players to send trades to (e.g. {"player1", "player2"})
            TradeMode = "all", -- "all" = everything in categories, "specific" = only Items list
            Categories = {}, -- {"pets", "toys", "food", "transport", "gifts", "stickers", "pet_accessories", "roleplay"}
            Items = {}, -- Item IDs when TradeMode = "specific" (e.g. {"dog", "cat", "turtle"})
            ItemCounts = {}, -- Max count per item matching Items order (e.g. {30, 12, 5} = 30 dogs, 12 cats, 5 turtles. {} = unlimited all)
            GlobalPetFilter = {
                Versions = {}, -- {} = all versions, {"regular", "neon", "mega"} = only these. Fallback for pets NOT in PetFilters
                Ages = {}, -- {} = all ages, {1, 2, 3, 4, 5, 6} = only these. Mega ignores ages. Fallback for pets NOT in PetFilters
            },
            PetFilters = {}, -- Per-pet overrides. If a pet is listed here, GlobalPetFilter is IGNORED for that pet
            -- Version not listed = NOT traded. {} after version = all ages. {6} = only full grown. Mega always ignores ages
            -- Example:
            -- PetFilters = {
            --     sugarfest_2026_mochi_meow = {
            --         regular = {6},      -- only full grown regulars
            --         neon = {4, 5, 6},   -- only flare/sunshine/luminous neons
            --         mega = {},           -- all megas (ages always ignored for mega)
            --     },
            --     turtle = {
            --         mega = {},           -- ONLY mega turtles (regular and neon NOT traded because not listed)
            --     },
            --     dog = {
            --         regular = {5, 6},   -- post-teen + full grown regulars only
            --         neon = {},           -- all neon ages
            --                              -- mega NOT listed = mega dogs NOT traded
            --     },
            -- },
        },
        AutoPay = {
            Enabled = false, -- Send bucks to another player
            TargetPlayer = {}, -- Username of player to pay bucks to
            Methods = {}, -- Payment methods to use: "register" (cash register), "mannequin" (buy outfits), "hotdog" (refreshment stands)
        },
        AutoBuy = {
            Enabled = false, -- Automatically buy items from shops
            SelectedItems = {}, -- Item IDs to buy
            BuyAmounts = {}, -- How many of each item to buy. Example: {5, 10} buys 5 cracked_eggs and 10 sandwiches. Empty {} buys infinite of each item. If there are more items than amounts, remaining items default to infinite.
        },
        AutoOpen = {
            Enabled = false, -- Open gift boxes, baits, etc automatically
            Items = {}, -- Item IDs to auto open
        },
        Webhook = {
            Enabled = false, -- Send webhook notifications to Discord
            URL = "https://discord.com/api/", -- Discord webhook URL for notifications
            PetUnlock = {
                Enabled = true, -- Send webhook when hatching/unlocking a pet
                URL = "https://discord.com/api/webhooks/", -- Webhook URL for pet unlocks
                FilterRarities = {"legendary"}, -- Only send for these rarities
            },
        },
        AccountManager = {
            Enabled = false, -- Master toggle for account management
            Tool = "", -- "farmsync", "farmerv5", "kick" = kick tool means it will just kick you from the game instead of farmsync actions
            FarmSync = {
                Action = "completed", -- "completed" = move to done folder, "swap" = move and replace, "disable" = disable account on FarmSync (requires ApiKey)
                FromFolderId = "", -- Fresh cookies folder ID
                ToFolderId = "", -- Done cookies folder ID
                ChangeWithoutReplacement = false, -- Remove even if no replacement available
                ConfigId = nil, -- Config for new account (nil = same config)
                ApiKey = "", -- FarmSync API key (device key)
            },
            FarmerV5 = {
                ApiKey = "", -- FarmerV5 API key (bearer token)
                Action = "swap", -- "swap" = fire the autoswap rule and hand the slot to the next account | "disable" = just flip enabled off
                Option = 1, -- Autoswap rule number to fire (swap only)
            },
            Triggers = {
                AfterTradeComplete = false, -- Requires AutoTrade.AutoLeaveAfterTrades to be enabled
                MinBucks = 0, -- Change account when bucks >= this (0 = off)
                MinPotions = 0, -- Change account when potions >= this (0 = off)
            },
        },
    };
getgenv().scriptkey="GnDjDiUeEsovFIAelePnzKsYHfpfgukD"
loadstring(game:HttpGet("https://zekehub.com/scripts/AdoptMe/MassFarm.lua"))()
