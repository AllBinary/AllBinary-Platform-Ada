-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
package org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References is
   type NumberStringHudFactory_Access is access all org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package.NumberStringHudFactory'Class;
   type NumberStringHudFactory_Access_Array is array (Natural range <>) of NumberStringHudFactory_Access;
   type NumberStringHudFactory_Access_Array_Access is access all NumberStringHudFactory_Access_Array;
   type NumberStringHudFactory_Access_Array_Access_Array is array (Natural range <>) of NumberStringHudFactory_Access_Array_Access;
   type NumberStringHudFactory_Access_Array_Access_Array_Access is access all NumberStringHudFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References;

with org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References;
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

package org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package is

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


   subtype NumberStringHudFactory_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References.NumberStringHudFactory_Access;
   function "=" (Left, Right : NumberStringHudFactory_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References."=";
   subtype NumberStringHudFactory_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References.NumberStringHudFactory_Access_Array;
   function "=" (Left, Right : NumberStringHudFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References."=";
   subtype NumberStringHudFactory_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References.NumberStringHudFactory_Access_Array_Access;
   function "=" (Left, Right : NumberStringHudFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References."=";
   subtype NumberStringHudFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References.NumberStringHudFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NumberStringHudFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References."=";
   subtype NumberStringHudFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References.NumberStringHudFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberStringHudFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package_References."=";

   type NumberStringHudFactory is new Java_Object with record
      NULL_NUMBER_STRING_HUD : NumberStringHud_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out NumberStringHudFactory'Class);
   function Create return NumberStringHudFactory_Access;
   function getInstance return NumberStringHudFactory_Access;
   function createHud (This : in out NumberStringHudFactory) return NumberStringHud_Access;

end org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;


