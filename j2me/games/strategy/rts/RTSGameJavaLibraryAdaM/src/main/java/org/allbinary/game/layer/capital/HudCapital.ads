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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;

package org.allbinary.game.layer.capital.HudCapital_Package is

   package NumberStringHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;

   type HudCapital is tagged;
   type HudCapital_Access is access all HudCapital'Class;
   type HudCapital_Access_Array is array (Natural range <>) of HudCapital_Access;
   type HudCapital_Access_Array_Access is access all HudCapital_Access_Array;

   type HudCapital is new Capital with record
      capitalGraphic : NumberStringHud_Access;
   end record;

   procedure Initialize (This : in out HudCapital'Class; moneyGraphic_Param : access NumberStringHud'Class);
   function Create (moneyGraphic_Param : access NumberStringHud'Class) return HudCapital_Access;
   procedure removeMoney (This : in out HudCapital; points : Integer);
   function getTotalMoney (This : in out HudCapital) return Integer;
   procedure addMoney (This : in out HudCapital; points : Integer);

end org.allbinary.game.layer.capital.HudCapital_Package;


