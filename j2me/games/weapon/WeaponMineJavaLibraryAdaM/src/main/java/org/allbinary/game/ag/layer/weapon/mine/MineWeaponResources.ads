--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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

limited with org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package;
package org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References is
   type MineWeaponResources_Access is access all org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package.MineWeaponResources'Class;
   type MineWeaponResources_Access_Array is array (Natural range <>) of MineWeaponResources_Access;
   type MineWeaponResources_Access_Array_Access is access all MineWeaponResources_Access_Array;
   type MineWeaponResources_Access_Array_Access_Array is array (Natural range <>) of MineWeaponResources_Access_Array_Access;
   type MineWeaponResources_Access_Array_Access_Array_Access is access all MineWeaponResources_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References;

with org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MineWeaponResources_Access is org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References.MineWeaponResources_Access;
   function "=" (Left, Right : MineWeaponResources_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References."=";
   subtype MineWeaponResources_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References.MineWeaponResources_Access_Array;
   function "=" (Left, Right : MineWeaponResources_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References."=";
   subtype MineWeaponResources_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References.MineWeaponResources_Access_Array_Access;
   function "=" (Left, Right : MineWeaponResources_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References."=";
   subtype MineWeaponResources_Access_Array_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References.MineWeaponResources_Access_Array_Access_Array;
   function "=" (Left, Right : MineWeaponResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References."=";
   subtype MineWeaponResources_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References.MineWeaponResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineWeaponResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package_References."=";

   type MineWeaponResources is new BasicGameResources with record
      DROP_TEXT_RESOURCE : Unbounded_String;
      DROP_RESOURCE : Unbounded_String;
      DROP_ICON_RESOURCE : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out MineWeaponResources'Class);
   function Create return MineWeaponResources_Access;
   function getInstance return MineWeaponResources_Access;

end org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package;


