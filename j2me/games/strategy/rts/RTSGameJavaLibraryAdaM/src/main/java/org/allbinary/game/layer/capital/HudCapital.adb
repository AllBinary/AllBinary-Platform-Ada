-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.layer.capital.Capital_Package;

package body org.allbinary.game.layer.capital.HudCapital_Package is

   subtype NumberStringHud_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access;
   function "=" (Left, Right : NumberStringHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   procedure Initialize_Fields (This : in out HudCapital'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HudCapital'Class; moneyGraphic_Param : access NumberStringHud_Package.NumberStringHud'Class) is
      moneyGraphic : constant NumberStringHud_Access := NumberStringHud_Access (moneyGraphic_Param);
   begin
      Capital_Package.Initialize (This);
      Initialize_Fields (This);
        This.capitalGraphic := moneyGraphic;
   end Initialize;

   function Create (moneyGraphic_Param : access NumberStringHud_Package.NumberStringHud'Class) return HudCapital_Access is
      This : constant HudCapital_Access := new HudCapital;
   begin
      HudCapital_Package.Initialize (This.all, moneyGraphic_Param);
      return This;
   end Create;

   procedure removeMoney (This : in out HudCapital; points : Integer) is
   begin
        Capital (This).removeMoney (points);
        This.capitalGraphic.reduce (points);
   end removeMoney;

   function getTotalMoney (This : in out HudCapital) return Integer is
   begin
        return This.capitalGraphic.get;
   end getTotalMoney;

   procedure addMoney (This : in out HudCapital; points : Integer) is
   begin
        Capital (This).addMoney (points);
        This.capitalGraphic.add (points);
   end addMoney;

end org.allbinary.game.layer.capital.HudCapital_Package;


