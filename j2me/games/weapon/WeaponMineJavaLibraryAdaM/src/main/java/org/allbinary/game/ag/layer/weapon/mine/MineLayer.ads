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
with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package; use org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEventHandler_Package; use org.allbinary.view.event.ViewPositionEventHandler_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package is

   package SimpleWeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionEventHandler_Package renames Standard.org.allbinary.view.event.ViewPositionEventHandler_Package;

   type MineLayer is tagged;
   type MineLayer_Access is access all MineLayer'Class;
   type MineLayer_Access_Array is array (Natural range <>) of MineLayer_Access;
   type MineLayer_Access_Array_Access is access all MineLayer_Access_Array;
   type MineLayer_Access_Array_Access_Array is array (Natural range <>) of MineLayer_Access_Array_Access;
   type MineLayer_Access_Array_Access_Array_Access is access all MineLayer_Access_Array_Access_Array;

   type MineLayer is new SimpleWeaponLayer with record
      viewPositionEventHandler : ViewPositionEventHandler_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out MineLayer'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MineLayer_Access;
   procedure initXYZ (This : in out MineLayer; x : Integer; y : Integer; z : Integer);
   procedure damage (This : in out MineLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out MineLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out MineLayer; damageType : Integer);
   procedure setDestroyed (This : in out MineLayer; destroyed : Boolean);

end org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;


