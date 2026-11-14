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
limited with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;
package org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References is
   type BasicWeaponPartFactoryInterface_Access is access all org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class;
   type BasicWeaponPartFactoryInterface_Access_Array is array (Natural range <>) of BasicWeaponPartFactoryInterface_Access;
   type BasicWeaponPartFactoryInterface_Access_Array_Access is access all BasicWeaponPartFactoryInterface_Access_Array;
   type BasicWeaponPartFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of BasicWeaponPartFactoryInterface_Access_Array_Access;
   type BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is access all BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   type BasicWeaponPartFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeaponPartFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeaponPartFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeaponPartFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeaponPartFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicWeaponPartFactoryInterface_Access_Array_Object'Class then BasicWeaponPartFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Object'Class then BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References;

with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package_References;

package org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package is

   package Reference_Types is
   subtype BasicWeaponPart_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access;
   use type BasicWeaponPart_Access;
   subtype BasicWeaponPart_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array;
   use type BasicWeaponPart_Access_Array;
   subtype BasicWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access;
   use type BasicWeaponPart_Access_Array_Access;
   subtype BasicWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array;
   use type BasicWeaponPart_Access_Array_Access_Array;
   subtype BasicWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPart_Package_References.BasicWeaponPart_Access_Array_Access_Array_Access;
   use type BasicWeaponPart_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicWeaponPartFactoryInterface is interface;
   subtype BasicWeaponPartFactoryInterface_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   function Java_Box (Value : BasicWeaponPartFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array (Value : access Java_Object'Class) return BasicWeaponPartFactoryInterface_Access_Array_Access renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array;
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   subtype BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References."=";
   function Java_Box (Value : BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicWeaponPartFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package_References.Java_Unbox_BasicWeaponPartFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicWeaponPartFactoryInterface (Value : BasicWeaponPartFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out BasicWeaponPartFactoryInterface) return BasicWeaponPart_Access is abstract;

end org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;


