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
limited with org.allbinary.logic.java.bool.BooleanUtil_Package;
package org.allbinary.logic.java.bool.BooleanUtil_Package_References is
   type BooleanUtil_Access is access all org.allbinary.logic.java.bool.BooleanUtil_Package.BooleanUtil'Class;
   type BooleanUtil_Access_Array is array (Natural range <>) of BooleanUtil_Access;
   type BooleanUtil_Access_Array_Access is access all BooleanUtil_Access_Array;
   type BooleanUtil_Access_Array_Access_Array is array (Natural range <>) of BooleanUtil_Access_Array_Access;
   type BooleanUtil_Access_Array_Access_Array_Access is access all BooleanUtil_Access_Array_Access_Array;
   type BooleanUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BooleanUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BooleanUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BooleanUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BooleanUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BooleanUtil_Access_Array_Access is (if Value /= null and then Value.all in BooleanUtil_Access_Array_Object'Class then BooleanUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BooleanUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BooleanUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BooleanUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BooleanUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BooleanUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BooleanUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BooleanUtil_Access_Array_Access_Array_Object'Class then BooleanUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.bool.BooleanUtil_Package_References;

with org.allbinary.logic.java.bool.BooleanUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;

package org.allbinary.logic.java.bool.BooleanUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BooleanUtil_Access is org.allbinary.logic.java.bool.BooleanUtil_Package_References.BooleanUtil_Access;
   function "=" (Left, Right : BooleanUtil_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanUtil_Package_References."=";
   subtype BooleanUtil_Access_Array is org.allbinary.logic.java.bool.BooleanUtil_Package_References.BooleanUtil_Access_Array;
   function "=" (Left, Right : BooleanUtil_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanUtil_Package_References."=";
   subtype BooleanUtil_Access_Array_Access is org.allbinary.logic.java.bool.BooleanUtil_Package_References.BooleanUtil_Access_Array_Access;
   function "=" (Left, Right : BooleanUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanUtil_Package_References."=";
   function Java_Box (Value : BooleanUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.bool.BooleanUtil_Package_References.Java_Box;
   function Java_Unbox_BooleanUtil_Access_Array (Value : access Java_Object'Class) return BooleanUtil_Access_Array_Access renames org.allbinary.logic.java.bool.BooleanUtil_Package_References.Java_Unbox_BooleanUtil_Access_Array;
   subtype BooleanUtil_Access_Array_Access_Array is org.allbinary.logic.java.bool.BooleanUtil_Package_References.BooleanUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BooleanUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanUtil_Package_References."=";
   subtype BooleanUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.bool.BooleanUtil_Package_References.BooleanUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BooleanUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanUtil_Package_References."=";
   function Java_Box (Value : BooleanUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.bool.BooleanUtil_Package_References.Java_Box;
   function Java_Unbox_BooleanUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BooleanUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.bool.BooleanUtil_Package_References.Java_Unbox_BooleanUtil_Access_Array_Access_Array;

   type BooleanUtil is new Java_Object with null record;
   instance : BooleanUtil_Access;

   procedure Initialize (This : in out BooleanUtil'Class);
   function Create return BooleanUtil_Access;
   function getInstance return BooleanUtil_Access;
   function getFromString (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean;
   procedure getFromString (This : in out BooleanUtil; booleanString : Unbounded_String);
   function isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean;
   procedure isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String);
   function toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access) return Unbounded_String;
   procedure toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access);

end org.allbinary.logic.java.bool.BooleanUtil_Package;


