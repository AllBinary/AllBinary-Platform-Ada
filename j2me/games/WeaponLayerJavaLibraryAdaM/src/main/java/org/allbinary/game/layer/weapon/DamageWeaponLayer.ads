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

limited with org.allbinary.game.layer.weapon.DamageWeaponLayer_Package;
package org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References is
   type DamageWeaponLayer_Access is access all org.allbinary.game.layer.weapon.DamageWeaponLayer_Package.DamageWeaponLayer'Class;
   type DamageWeaponLayer_Access_Array is array (Natural range <>) of DamageWeaponLayer_Access;
   type DamageWeaponLayer_Access_Array_Access is access all DamageWeaponLayer_Access_Array;
   type DamageWeaponLayer_Access_Array_Access_Array is array (Natural range <>) of DamageWeaponLayer_Access_Array_Access;
   type DamageWeaponLayer_Access_Array_Access_Array_Access is access all DamageWeaponLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References;

with org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.Movement_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;

package org.allbinary.game.layer.weapon.DamageWeaponLayer_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Movement_Package renames Standard.org.allbinary.physics.movement.Movement_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   use type RemoteInfo_Access;
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   use type RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   use type RemoteInfo_Access_Array_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype Movement_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access;
   use type Movement_Access;
   subtype Movement_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array;
   use type Movement_Access_Array;
   subtype Movement_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access;
   use type Movement_Access_Array_Access;
   subtype Movement_Access_Array_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array;
   use type Movement_Access_Array_Access_Array;
   subtype Movement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array_Access;
   use type Movement_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype DamageWeaponLayer_Access is org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References.DamageWeaponLayer_Access;
   function "=" (Left, Right : DamageWeaponLayer_Access) return Boolean renames org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References."=";
   subtype DamageWeaponLayer_Access_Array is org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References.DamageWeaponLayer_Access_Array;
   function "=" (Left, Right : DamageWeaponLayer_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References."=";
   subtype DamageWeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References.DamageWeaponLayer_Access_Array_Access;
   function "=" (Left, Right : DamageWeaponLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References."=";
   subtype DamageWeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References.DamageWeaponLayer_Access_Array_Access_Array;
   function "=" (Left, Right : DamageWeaponLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References."=";
   subtype DamageWeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References.DamageWeaponLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageWeaponLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.DamageWeaponLayer_Package_References."=";

   type DamageWeaponLayer is new WeaponLayer with null record;

   procedure Initialize (This : in out DamageWeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer);
   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer) return DamageWeaponLayer_Access;

end org.allbinary.game.layer.weapon.DamageWeaponLayer_Package;


