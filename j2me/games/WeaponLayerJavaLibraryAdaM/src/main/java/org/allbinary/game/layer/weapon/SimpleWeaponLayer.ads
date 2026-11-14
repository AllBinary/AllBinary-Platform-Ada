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

with AllBinary_Java;
limited with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;
package org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References is
   type SimpleWeaponLayer_Access is access all org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package.SimpleWeaponLayer'Class;
   type SimpleWeaponLayer_Access_Array is array (Natural range <>) of SimpleWeaponLayer_Access;
   type SimpleWeaponLayer_Access_Array_Access is access all SimpleWeaponLayer_Access_Array;
   type SimpleWeaponLayer_Access_Array_Access_Array is array (Natural range <>) of SimpleWeaponLayer_Access_Array_Access;
   type SimpleWeaponLayer_Access_Array_Access_Array_Access is access all SimpleWeaponLayer_Access_Array_Access_Array;
   type SimpleWeaponLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleWeaponLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleWeaponLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleWeaponLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleWeaponLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleWeaponLayer_Access_Array_Access is (if Value /= null and then Value.all in SimpleWeaponLayer_Access_Array_Object'Class then SimpleWeaponLayer_Access_Array_Object'Class (Value.all).Value else null);
   type SimpleWeaponLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleWeaponLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleWeaponLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleWeaponLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleWeaponLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleWeaponLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimpleWeaponLayer_Access_Array_Access_Array_Object'Class then SimpleWeaponLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References;

with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References;
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

package org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package is

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


   subtype SimpleWeaponLayer_Access is org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.SimpleWeaponLayer_Access;
   function "=" (Left, Right : SimpleWeaponLayer_Access) return Boolean renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References."=";
   subtype SimpleWeaponLayer_Access_Array is org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.SimpleWeaponLayer_Access_Array;
   function "=" (Left, Right : SimpleWeaponLayer_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References."=";
   subtype SimpleWeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.SimpleWeaponLayer_Access_Array_Access;
   function "=" (Left, Right : SimpleWeaponLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References."=";
   function Java_Box (Value : SimpleWeaponLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.Java_Box;
   function Java_Unbox_SimpleWeaponLayer_Access_Array (Value : access Java_Object'Class) return SimpleWeaponLayer_Access_Array_Access renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.Java_Unbox_SimpleWeaponLayer_Access_Array;
   subtype SimpleWeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.SimpleWeaponLayer_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleWeaponLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References."=";
   subtype SimpleWeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.SimpleWeaponLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleWeaponLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References."=";
   function Java_Box (Value : SimpleWeaponLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.Java_Box;
   function Java_Unbox_SimpleWeaponLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return SimpleWeaponLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package_References.Java_Unbox_SimpleWeaponLayer_Access_Array_Access_Array;

   type SimpleWeaponLayer is new WeaponLayer with null record;

   procedure Initialize (This : in out SimpleWeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return SimpleWeaponLayer_Access;
   function createDestroyed return Animation_Access;

end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;


