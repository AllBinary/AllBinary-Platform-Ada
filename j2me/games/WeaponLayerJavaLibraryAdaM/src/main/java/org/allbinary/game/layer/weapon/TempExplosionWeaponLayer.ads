--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package;
package org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References is
   type TempExplosionWeaponLayer_Access is access all org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package.TempExplosionWeaponLayer'Class;
   type TempExplosionWeaponLayer_Access_Array is array (Natural range <>) of TempExplosionWeaponLayer_Access;
   type TempExplosionWeaponLayer_Access_Array_Access is access all TempExplosionWeaponLayer_Access_Array;
   type TempExplosionWeaponLayer_Access_Array_Access_Array is array (Natural range <>) of TempExplosionWeaponLayer_Access_Array_Access;
   type TempExplosionWeaponLayer_Access_Array_Access_Array_Access is access all TempExplosionWeaponLayer_Access_Array_Access_Array;
   type TempExplosionWeaponLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TempExplosionWeaponLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : TempExplosionWeaponLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TempExplosionWeaponLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TempExplosionWeaponLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TempExplosionWeaponLayer_Access_Array_Access is (if Value /= null and then Value.all in TempExplosionWeaponLayer_Access_Array_Object'Class then TempExplosionWeaponLayer_Access_Array_Object'Class (Value.all).Value else null);
   type TempExplosionWeaponLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TempExplosionWeaponLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TempExplosionWeaponLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TempExplosionWeaponLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TempExplosionWeaponLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TempExplosionWeaponLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TempExplosionWeaponLayer_Access_Array_Access_Array_Object'Class then TempExplosionWeaponLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References;

with org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References;
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
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.Movement_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package; use org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;

package org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Movement_Package renames Standard.org.allbinary.physics.movement.Movement_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   use type WeaponProperties_Access;
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   use type WeaponProperties_Access_Array;
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access;
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   use type WeaponProperties_Access_Array_Access_Array;
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
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


   subtype TempExplosionWeaponLayer_Access is org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.TempExplosionWeaponLayer_Access;
   function "=" (Left, Right : TempExplosionWeaponLayer_Access) return Boolean renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References."=";
   subtype TempExplosionWeaponLayer_Access_Array is org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.TempExplosionWeaponLayer_Access_Array;
   function "=" (Left, Right : TempExplosionWeaponLayer_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References."=";
   subtype TempExplosionWeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.TempExplosionWeaponLayer_Access_Array_Access;
   function "=" (Left, Right : TempExplosionWeaponLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References."=";
   function Java_Box (Value : TempExplosionWeaponLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.Java_Box;
   function Java_Unbox_TempExplosionWeaponLayer_Access_Array (Value : access Java_Object'Class) return TempExplosionWeaponLayer_Access_Array_Access renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.Java_Unbox_TempExplosionWeaponLayer_Access_Array;
   subtype TempExplosionWeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.TempExplosionWeaponLayer_Access_Array_Access_Array;
   function "=" (Left, Right : TempExplosionWeaponLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References."=";
   subtype TempExplosionWeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.TempExplosionWeaponLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TempExplosionWeaponLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References."=";
   function Java_Box (Value : TempExplosionWeaponLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.Java_Box;
   function Java_Unbox_TempExplosionWeaponLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return TempExplosionWeaponLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package_References.Java_Unbox_TempExplosionWeaponLayer_Access_Array_Access_Array;

   type TempExplosionWeaponLayer is new SimpleWeaponLayer with record
      TempExplosionWeaponLayer_Field_weaponProperties : WeaponProperties_Access;
      timeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out TempExplosionWeaponLayer'Class; name : Unbounded_String; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; timeDelay : Integer);
   function Create (name : Unbounded_String; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; timeDelay : Integer) return TempExplosionWeaponLayer_Access;
   procedure processTick (This : in out TempExplosionWeaponLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package;


