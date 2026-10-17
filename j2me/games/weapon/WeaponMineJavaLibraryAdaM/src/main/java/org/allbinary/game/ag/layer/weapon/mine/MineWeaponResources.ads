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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type MineWeaponResources is tagged;
   type MineWeaponResources_Access is access all MineWeaponResources'Class;
   type MineWeaponResources_Access_Array is array (Natural range <>) of MineWeaponResources_Access;
   type MineWeaponResources_Access_Array_Access is access all MineWeaponResources_Access_Array;

   type MineWeaponResources is new BasicGameResources with record
      DROP_TEXT_RESOURCE : Unbounded_String;
      DROP_RESOURCE : Unbounded_String;
      DROP_ICON_RESOURCE : Unbounded_String;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out MineWeaponResources'Class);
   function Create return MineWeaponResources_Access;
   function getInstance return MineWeaponResources_Access;
   procedure getInstance;

end org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package;


