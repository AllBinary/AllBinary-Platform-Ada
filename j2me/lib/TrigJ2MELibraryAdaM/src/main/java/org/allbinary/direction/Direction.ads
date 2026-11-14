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
limited with org.allbinary.direction.Direction_Package;
package org.allbinary.direction.Direction_Package_References is
   type Direction_Access is access all org.allbinary.direction.Direction_Package.Direction'Class;
   type Direction_Access_Array is array (Natural range <>) of Direction_Access;
   type Direction_Access_Array_Access is access all Direction_Access_Array;
   type Direction_Access_Array_Access_Array is array (Natural range <>) of Direction_Access_Array_Access;
   type Direction_Access_Array_Access_Array_Access is access all Direction_Access_Array_Access_Array;
   type Direction_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Direction_Access_Array_Access;
   end record;
   function Java_Box (Value : Direction_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Direction_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Direction_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Direction_Access_Array_Access is (if Value /= null and then Value.all in Direction_Access_Array_Object'Class then Direction_Access_Array_Object'Class (Value.all).Value else null);
   type Direction_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Direction_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Direction_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Direction_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Direction_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Direction_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Direction_Access_Array_Access_Array_Object'Class then Direction_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.direction.Direction_Package_References;

with org.allbinary.direction.Direction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.direction.Direction_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   function "=" (Left, Right : Direction_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   function "=" (Left, Right : Direction_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   function Java_Box (Value : Direction_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.Direction_Package_References.Java_Box;
   function Java_Unbox_Direction_Access_Array (Value : access Java_Object'Class) return Direction_Access_Array_Access renames org.allbinary.direction.Direction_Package_References.Java_Unbox_Direction_Access_Array;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   function "=" (Left, Right : Direction_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   function Java_Box (Value : Direction_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.Direction_Package_References.Java_Box;
   function Java_Unbox_Direction_Access_Array_Access_Array (Value : access Java_Object'Class) return Direction_Access_Array_Access_Array_Access renames org.allbinary.direction.Direction_Package_References.Java_Unbox_Direction_Access_Array_Access_Array;

   type Direction is new Java_Object with record
      name : Unbounded_String;
      otherName : Unbounded_String;
      value : Integer;
      frameFactor : Integer;
   end record;
   directionArray : Direction_Access_Array_Access;

   procedure Initialize (This : in out Direction'Class; name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer);
   function Create (name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer) return Direction_Access;
   function getInstance (direction_Var : Integer) return Direction_Access;
   procedure getInstance (direction_Var : Integer);
   function getValue (This : in out Direction) return Integer;
   function getFrameFactor (This : in out Direction) return Integer;
   function getOtherName (This : in out Direction) return Unbounded_String;
   function getName (This : in out Direction) return Unbounded_String;
   function toString (This : in out Direction) return Unbounded_String;

end org.allbinary.direction.Direction_Package;


