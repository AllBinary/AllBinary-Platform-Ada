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
limited with org.allbinary.game.layer.special.CollidableCharacterBehavior_Package;
package org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References is
   type CollidableCharacterBehavior_Access is access all org.allbinary.game.layer.special.CollidableCharacterBehavior_Package.CollidableCharacterBehavior'Class;
   type CollidableCharacterBehavior_Access_Array is array (Natural range <>) of CollidableCharacterBehavior_Access;
   type CollidableCharacterBehavior_Access_Array_Access is access all CollidableCharacterBehavior_Access_Array;
   type CollidableCharacterBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableCharacterBehavior_Access_Array_Access;
   type CollidableCharacterBehavior_Access_Array_Access_Array_Access is access all CollidableCharacterBehavior_Access_Array_Access_Array;
   type CollidableCharacterBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableCharacterBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableCharacterBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableCharacterBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableCharacterBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableCharacterBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableCharacterBehavior_Access_Array_Object'Class then CollidableCharacterBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableCharacterBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableCharacterBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableCharacterBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableCharacterBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableCharacterBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableCharacterBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableCharacterBehavior_Access_Array_Access_Array_Object'Class then CollidableCharacterBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References;

with org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;

package org.allbinary.game.layer.special.CollidableCharacterBehavior_Package is

   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
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


   subtype CollidableCharacterBehavior_Access is org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.CollidableCharacterBehavior_Access;
   function "=" (Left, Right : CollidableCharacterBehavior_Access) return Boolean renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References."=";
   subtype CollidableCharacterBehavior_Access_Array is org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.CollidableCharacterBehavior_Access_Array;
   function "=" (Left, Right : CollidableCharacterBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References."=";
   subtype CollidableCharacterBehavior_Access_Array_Access is org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.CollidableCharacterBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableCharacterBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References."=";
   function Java_Box (Value : CollidableCharacterBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableCharacterBehavior_Access_Array (Value : access Java_Object'Class) return CollidableCharacterBehavior_Access_Array_Access renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.Java_Unbox_CollidableCharacterBehavior_Access_Array;
   subtype CollidableCharacterBehavior_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.CollidableCharacterBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCharacterBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References."=";
   subtype CollidableCharacterBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.CollidableCharacterBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCharacterBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References."=";
   function Java_Box (Value : CollidableCharacterBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableCharacterBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableCharacterBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.special.CollidableCharacterBehavior_Package_References.Java_Unbox_CollidableCharacterBehavior_Access_Array_Access_Array;

   type CollidableCharacterBehavior is new CollidableDestroyableDamageableBehavior with null record;

   procedure Initialize (This : in out CollidableCharacterBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableCharacterBehavior_Access;
   procedure collide (This : in out CollidableCharacterBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideInterface (This : in out CollidableCharacterBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);

end org.allbinary.game.layer.special.CollidableCharacterBehavior_Package;


