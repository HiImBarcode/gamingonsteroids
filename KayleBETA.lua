if GetObjectName(myHero) ~= "Kayle" then return end

print("First Script Lmao // By:McRay")

-combo
local KayleMenu = Menu("Kayle", "Kayle")
  KayleMenu:Menu("Combo", "Combo")
  KayleMenu.Combo:Boolean("useQ", "Use Q", true)
  
  KayleMenu.Combo:Boolean("useW", "Use W", true)
  KayleMenu.Combo:Slider("WHP", "Use W if %HP <", 90, 1, 100, 1)
  KayleMenu.Combo:Slider("WMana", "Use W if %Mana >", 60, 1, 100, 1)
  KayleMenu.Combo:SliderDropDown("WMode", "W Mode", 1, {"Healing", "Enemy out of range"})
  
  KayleMenu.Combo:Boolean("useE", "Use E", true)
  
  KayleMenu.Combo:Boolean("useR", "Use R", true)
  KayleMenu.Combo.RSettings:Boolean("R", "Use R", false)
  KayleMenu.Combo.RSettings:Slider("UltHP", "Use R if %HP <", 25, 1, 100, 1)
  KayleMenu.Combo:Boolean("Enemies", "Use R if Enemies >=", 1, 1, 5)
  
  
  OnTick(function()

    if IOW:Mode() == "Combo" then
       
        local target = GetCurrentTarget() 
        
          if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_W) == READY and OlafMenu.Combo.useQ:Value() then
          CastSpell(_Q) 
        end
        
          if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_W) == READY and OlafMenu.Combo.useW:Value() then
          CastSpell(_W) 
        end
        
          if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_E) == READY and OlafMenu.Combo.useW:Value() then
          CastSpell(_E) 
        end
        
          if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_R) == READY and OlafMenu.Combo.useW:Value() then
          CastSpell(_R) 
             end 
        end
    end
end)