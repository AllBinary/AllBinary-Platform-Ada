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

with AllBinary_Java;
limited with org.allbinary.game.layer.capital.HudCapital_Package;
package org.allbinary.game.layer.capital.HudCapital_Package_References is
   type HudCapital_Access is access all org.allbinary.game.layer.capital.HudCapital_Package.HudCapital'Class;
   type HudCapital_Access_Array is array (Natural range <>) of HudCapital_Access;
   type HudCapital_Access_Array_Access is access all HudCapital_Access_Array;
   type HudCapital_Access_Array_Access_Array is array (Natural range <>) of HudCapital_Access_Array_Access;
   type HudCapital_Access_Array_Access_Array_Access is access all HudCapital_Access_Array_Access_Array;
   type HudCapital_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HudCapital_Access_Array_Access;
   end record;
   function Java_Box (Value : HudCapital_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HudCapital_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HudCapital_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HudCapital_Access_Array_Access is (if Value /= null and then Value.all in HudCapital_Access_Array_Object'Class then HudCapital_Access_Array_Object'Class (Value.all).Value else null);
   type HudCapital_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HudCapital_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HudCapital_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HudCapital_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HudCapital_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HudCapital_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HudCapital_Access_Array_Access_Array_Object'Class then HudCapital_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.capital.HudCapital_Package_References;

with org.allbinary.game.layer.capital.HudCapital_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;

package org.allbinary.game.layer.capital.HudCapital_Package is

   package NumberStringHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
   package Reference_Types is
   subtype NumberStringHud_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access;
   use type NumberStringHud_Access;
   subtype NumberStringHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array;
   use type NumberStringHud_Access_Array;
   subtype NumberStringHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access;
   use type NumberStringHud_Access_Array_Access;
   subtype NumberStringHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array;
   use type NumberStringHud_Access_Array_Access_Array;
   subtype NumberStringHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array_Access;
   use type NumberStringHud_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HudCapital_Access is org.allbinary.game.layer.capital.HudCapital_Package_References.HudCapital_Access;
   function "=" (Left, Right : HudCapital_Access) return Boolean renames org.allbinary.game.layer.capital.HudCapital_Package_References."=";
   subtype HudCapital_Access_Array is org.allbinary.game.layer.capital.HudCapital_Package_References.HudCapital_Access_Array;
   function "=" (Left, Right : HudCapital_Access_Array) return Boolean renames org.allbinary.game.layer.capital.HudCapital_Package_References."=";
   subtype HudCapital_Access_Array_Access is org.allbinary.game.layer.capital.HudCapital_Package_References.HudCapital_Access_Array_Access;
   function "=" (Left, Right : HudCapital_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.HudCapital_Package_References."=";
   function Java_Box (Value : HudCapital_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.HudCapital_Package_References.Java_Box;
   function Java_Unbox_HudCapital_Access_Array (Value : access Java_Object'Class) return HudCapital_Access_Array_Access renames org.allbinary.game.layer.capital.HudCapital_Package_References.Java_Unbox_HudCapital_Access_Array;
   subtype HudCapital_Access_Array_Access_Array is org.allbinary.game.layer.capital.HudCapital_Package_References.HudCapital_Access_Array_Access_Array;
   function "=" (Left, Right : HudCapital_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.HudCapital_Package_References."=";
   subtype HudCapital_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.HudCapital_Package_References.HudCapital_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HudCapital_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.HudCapital_Package_References."=";
   function Java_Box (Value : HudCapital_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.HudCapital_Package_References.Java_Box;
   function Java_Unbox_HudCapital_Access_Array_Access_Array (Value : access Java_Object'Class) return HudCapital_Access_Array_Access_Array_Access renames org.allbinary.game.layer.capital.HudCapital_Package_References.Java_Unbox_HudCapital_Access_Array_Access_Array;

   type HudCapital is new Capital_Package.Capital with record
      capitalGraphic : NumberStringHud_Access;
   end record;

   procedure Initialize (This : in out HudCapital'Class; moneyGraphic_Param : access NumberStringHud_Package.NumberStringHud'Class);
   function Create (moneyGraphic_Param : access NumberStringHud_Package.NumberStringHud'Class) return HudCapital_Access;
   procedure removeMoney (This : in out HudCapital; points : Integer);
   function getTotalMoney (This : in out HudCapital) return Integer;
   procedure addMoney (This : in out HudCapital; points : Integer);

end org.allbinary.game.layer.capital.HudCapital_Package;


