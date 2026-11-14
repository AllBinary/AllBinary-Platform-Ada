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
limited with org.allbinary.game.input.J2MEGameKey_Package;
package org.allbinary.game.input.J2MEGameKey_Package_References is
   type J2MEGameKey_Access is access all org.allbinary.game.input.J2MEGameKey_Package.J2MEGameKey'Class;
   type J2MEGameKey_Access_Array is array (Natural range <>) of J2MEGameKey_Access;
   type J2MEGameKey_Access_Array_Access is access all J2MEGameKey_Access_Array;
   type J2MEGameKey_Access_Array_Access_Array is array (Natural range <>) of J2MEGameKey_Access_Array_Access;
   type J2MEGameKey_Access_Array_Access_Array_Access is access all J2MEGameKey_Access_Array_Access_Array;
   type J2MEGameKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEGameKey_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEGameKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEGameKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEGameKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEGameKey_Access_Array_Access is (if Value /= null and then Value.all in J2MEGameKey_Access_Array_Object'Class then J2MEGameKey_Access_Array_Object'Class (Value.all).Value else null);
   type J2MEGameKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEGameKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEGameKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEGameKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEGameKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEGameKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in J2MEGameKey_Access_Array_Access_Array_Object'Class then J2MEGameKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.J2MEGameKey_Package_References;

with org.allbinary.game.input.J2MEGameKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.J2MEGameKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype J2MEGameKey_Access is org.allbinary.game.input.J2MEGameKey_Package_References.J2MEGameKey_Access;
   function "=" (Left, Right : J2MEGameKey_Access) return Boolean renames org.allbinary.game.input.J2MEGameKey_Package_References."=";
   subtype J2MEGameKey_Access_Array is org.allbinary.game.input.J2MEGameKey_Package_References.J2MEGameKey_Access_Array;
   function "=" (Left, Right : J2MEGameKey_Access_Array) return Boolean renames org.allbinary.game.input.J2MEGameKey_Package_References."=";
   subtype J2MEGameKey_Access_Array_Access is org.allbinary.game.input.J2MEGameKey_Package_References.J2MEGameKey_Access_Array_Access;
   function "=" (Left, Right : J2MEGameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEGameKey_Package_References."=";
   function Java_Box (Value : J2MEGameKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.J2MEGameKey_Package_References.Java_Box;
   function Java_Unbox_J2MEGameKey_Access_Array (Value : access Java_Object'Class) return J2MEGameKey_Access_Array_Access renames org.allbinary.game.input.J2MEGameKey_Package_References.Java_Unbox_J2MEGameKey_Access_Array;
   subtype J2MEGameKey_Access_Array_Access_Array is org.allbinary.game.input.J2MEGameKey_Package_References.J2MEGameKey_Access_Array_Access_Array;
   function "=" (Left, Right : J2MEGameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.J2MEGameKey_Package_References."=";
   subtype J2MEGameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.J2MEGameKey_Package_References.J2MEGameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2MEGameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEGameKey_Package_References."=";
   function Java_Box (Value : J2MEGameKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.J2MEGameKey_Package_References.Java_Box;
   function Java_Unbox_J2MEGameKey_Access_Array_Access_Array (Value : access Java_Object'Class) return J2MEGameKey_Access_Array_Access_Array_Access renames org.allbinary.game.input.J2MEGameKey_Package_References.Java_Unbox_J2MEGameKey_Access_Array_Access_Array;

   type J2MEGameKey is new Input_Package.Input with null record;

   procedure Initialize (This : in out J2MEGameKey'Class; key : Integer; keyName : Unbounded_String);
   function Create (key : Integer; keyName : Unbounded_String) return J2MEGameKey_Access;
   function toString (This : in out J2MEGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.J2MEGameKey_Package;


