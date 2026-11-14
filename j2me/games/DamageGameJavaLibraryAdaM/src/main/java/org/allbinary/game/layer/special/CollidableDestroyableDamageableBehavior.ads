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
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
package org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References is
   type CollidableDestroyableDamageableBehavior_Access is access all org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package.CollidableDestroyableDamageableBehavior'Class;
   type CollidableDestroyableDamageableBehavior_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableBehavior_Access;
   type CollidableDestroyableDamageableBehavior_Access_Array_Access is access all CollidableDestroyableDamageableBehavior_Access_Array;
   type CollidableDestroyableDamageableBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableBehavior_Access_Array_Access;
   type CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access is access all CollidableDestroyableDamageableBehavior_Access_Array_Access_Array;
   type CollidableDestroyableDamageableBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableDestroyableDamageableBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableDestroyableDamageableBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableDestroyableDamageableBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableDestroyableDamageableBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableDestroyableDamageableBehavior_Access_Array_Object'Class then CollidableDestroyableDamageableBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Object'Class then CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References;

with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
limited with org.allbinary.game.combat.damage.DamageUtil_Package;
with org.allbinary.game.combat.damage.DamageUtil_Package_References;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;

package org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package is

   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package DamageUtil_Package renames Standard.org.allbinary.game.combat.damage.DamageUtil_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package Reference_Types is
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   use type CollidableInterfaceCompositeInterface_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   subtype DamageUtil_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access;
   use type DamageUtil_Access;
   subtype DamageUtil_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array;
   use type DamageUtil_Access_Array;
   subtype DamageUtil_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access;
   use type DamageUtil_Access_Array_Access;
   subtype DamageUtil_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array;
   use type DamageUtil_Access_Array_Access_Array;
   subtype DamageUtil_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageUtil_Package_References.DamageUtil_Access_Array_Access_Array_Access;
   use type DamageUtil_Access_Array_Access_Array_Access;
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableDestroyableDamageableBehavior_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.CollidableDestroyableDamageableBehavior_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableBehavior_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References."=";
   subtype CollidableDestroyableDamageableBehavior_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.CollidableDestroyableDamageableBehavior_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References."=";
   subtype CollidableDestroyableDamageableBehavior_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.CollidableDestroyableDamageableBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References."=";
   function Java_Box (Value : CollidableDestroyableDamageableBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array (Value : access Java_Object'Class) return CollidableDestroyableDamageableBehavior_Access_Array_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array;
   subtype CollidableDestroyableDamageableBehavior_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.CollidableDestroyableDamageableBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References."=";
   subtype CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References."=";
   function Java_Box (Value : CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableDestroyableDamageableBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package_References.Java_Unbox_CollidableDestroyableDamageableBehavior_Access_Array_Access_Array;

   type CollidableDestroyableDamageableBehavior is new CollidableBaseBehavior with record
      damageUtil : DamageUtil_Access;
   end record;

   procedure Initialize (This : in out CollidableDestroyableDamageableBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableDestroyableDamageableBehavior_Access;
   function isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);

end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;


