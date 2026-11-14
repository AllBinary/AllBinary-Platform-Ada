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
limited with org.allbinary.logic.string_Id.StringUtil_Package;
package org.allbinary.logic.string_Id.StringUtil_Package_References is
   type StringUtil_Access is access all org.allbinary.logic.string_Id.StringUtil_Package.StringUtil'Class;
   type StringUtil_Access_Array is array (Natural range <>) of StringUtil_Access;
   type StringUtil_Access_Array_Access is access all StringUtil_Access_Array;
   type StringUtil_Access_Array_Access_Array is array (Natural range <>) of StringUtil_Access_Array_Access;
   type StringUtil_Access_Array_Access_Array_Access is access all StringUtil_Access_Array_Access_Array;
   type StringUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : StringUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringUtil_Access_Array_Access is (if Value /= null and then Value.all in StringUtil_Access_Array_Object'Class then StringUtil_Access_Array_Object'Class (Value.all).Value else null);
   type StringUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StringUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StringUtil_Access_Array_Access_Array_Object'Class then StringUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.string_Id.StringUtil_Package_References;

with org.allbinary.logic.string_Id.StringUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.string_Id.StringUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   function Java_Box (Value : StringUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.StringUtil_Package_References.Java_Box;
   function Java_Unbox_StringUtil_Access_Array (Value : access Java_Object'Class) return StringUtil_Access_Array_Access renames org.allbinary.logic.string_Id.StringUtil_Package_References.Java_Unbox_StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   function Java_Box (Value : StringUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.StringUtil_Package_References.Java_Box;
   function Java_Unbox_StringUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return StringUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.string_Id.StringUtil_Package_References.Java_Unbox_StringUtil_Access_Array_Access_Array;

   type StringUtil is new Java_Object with record
      INIT_STRING : Unbounded_String;
      NULL_STRING : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
      ONE_EMPTY_STRING_ARRAY : Unbounded_String_Array_Access;
      ONE_EMPTY_STRING_ARRAY_OF_ARRAYS : Unbounded_String_Array_Access_Array_Access;
      stringArray : Unbounded_String_Array_Access;
   end record;
   instance : StringUtil_Access;

   procedure Initialize (This : in out StringUtil'Class);
   function Create return StringUtil_Access;
   function getInstance return StringUtil_Access;
   function getNonNull (This : in out StringUtil; string_Id : Unbounded_String) return Unbounded_String;
   procedure getNonNull (This : in out StringUtil; string_Id : Unbounded_String);
   function getArrayInstance (This : in out StringUtil) return Unbounded_String_Array_Access;
   function count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character) return Integer;
   procedure count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character);
   function toString (This : in out StringUtil; anyType_Param : access Java_Object'Class) return Unbounded_String;
   procedure toString (This : in out StringUtil; anyType_Param : access Java_Object'Class);
   function toString (This : in out StringUtil; Value : Unbounded_String) return Unbounded_String;
   procedure toString (This : in out StringUtil; Value : Unbounded_String);

end org.allbinary.logic.string_Id.StringUtil_Package;


