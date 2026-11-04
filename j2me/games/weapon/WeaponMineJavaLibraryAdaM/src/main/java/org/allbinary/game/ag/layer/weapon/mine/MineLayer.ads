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

limited with org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;
package org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References is
   type MineLayer_Access is access all org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package.MineLayer'Class;
   type MineLayer_Access_Array is array (Natural range <>) of MineLayer_Access;
   type MineLayer_Access_Array_Access is access all MineLayer_Access_Array;
   type MineLayer_Access_Array_Access_Array is array (Natural range <>) of MineLayer_Access_Array_Access;
   type MineLayer_Access_Array_Access_Array_Access is access all MineLayer_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References;

with org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package; use org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
limited with org.allbinary.view.event.ViewPositionEventHandler_Package;
with org.allbinary.view.event.ViewPositionEventHandler_Package_References;

package org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package is

   package SimpleWeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionEventHandler_Package renames Standard.org.allbinary.view.event.ViewPositionEventHandler_Package;
   package Reference_Types is
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   subtype ViewPositionEventHandler_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access;
   use type ViewPositionEventHandler_Access;
   subtype ViewPositionEventHandler_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array;
   use type ViewPositionEventHandler_Access_Array;
   subtype ViewPositionEventHandler_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access;
   use type ViewPositionEventHandler_Access_Array_Access;
   subtype ViewPositionEventHandler_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array;
   use type ViewPositionEventHandler_Access_Array_Access_Array;
   subtype ViewPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array_Access;
   use type ViewPositionEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MineLayer_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References.MineLayer_Access;
   function "=" (Left, Right : MineLayer_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References."=";
   subtype MineLayer_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References.MineLayer_Access_Array;
   function "=" (Left, Right : MineLayer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References."=";
   subtype MineLayer_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References.MineLayer_Access_Array_Access;
   function "=" (Left, Right : MineLayer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References."=";
   subtype MineLayer_Access_Array_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References.MineLayer_Access_Array_Access_Array;
   function "=" (Left, Right : MineLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References."=";
   subtype MineLayer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References.MineLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package_References."=";

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


