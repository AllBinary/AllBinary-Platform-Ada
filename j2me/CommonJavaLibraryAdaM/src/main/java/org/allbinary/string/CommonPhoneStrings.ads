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
limited with org.allbinary.string_Id.CommonPhoneStrings_Package;
package org.allbinary.string_Id.CommonPhoneStrings_Package_References is
   type CommonPhoneStrings_Access is access all org.allbinary.string_Id.CommonPhoneStrings_Package.CommonPhoneStrings'Class;
   type CommonPhoneStrings_Access_Array is array (Natural range <>) of CommonPhoneStrings_Access;
   type CommonPhoneStrings_Access_Array_Access is access all CommonPhoneStrings_Access_Array;
   type CommonPhoneStrings_Access_Array_Access_Array is array (Natural range <>) of CommonPhoneStrings_Access_Array_Access;
   type CommonPhoneStrings_Access_Array_Access_Array_Access is access all CommonPhoneStrings_Access_Array_Access_Array;
   type CommonPhoneStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonPhoneStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonPhoneStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonPhoneStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonPhoneStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonPhoneStrings_Access_Array_Access is (if Value /= null and then Value.all in CommonPhoneStrings_Access_Array_Object'Class then CommonPhoneStrings_Access_Array_Object'Class (Value.all).Value else null);
   type CommonPhoneStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonPhoneStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonPhoneStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonPhoneStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonPhoneStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonPhoneStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CommonPhoneStrings_Access_Array_Access_Array_Object'Class then CommonPhoneStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.string_Id.CommonPhoneStrings_Package_References;

with org.allbinary.string_Id.CommonPhoneStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.string_Id.CommonPhoneStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CommonPhoneStrings_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access;
   function "=" (Left, Right : CommonPhoneStrings_Access) return Boolean renames org.allbinary.string_Id.CommonPhoneStrings_Package_References."=";
   subtype CommonPhoneStrings_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array;
   function "=" (Left, Right : CommonPhoneStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonPhoneStrings_Package_References."=";
   subtype CommonPhoneStrings_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access;
   function "=" (Left, Right : CommonPhoneStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonPhoneStrings_Package_References."=";
   function Java_Box (Value : CommonPhoneStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.string_Id.CommonPhoneStrings_Package_References.Java_Box;
   function Java_Unbox_CommonPhoneStrings_Access_Array (Value : access Java_Object'Class) return CommonPhoneStrings_Access_Array_Access renames org.allbinary.string_Id.CommonPhoneStrings_Package_References.Java_Unbox_CommonPhoneStrings_Access_Array;
   subtype CommonPhoneStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonPhoneStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonPhoneStrings_Package_References."=";
   subtype CommonPhoneStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonPhoneStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonPhoneStrings_Package_References."=";
   function Java_Box (Value : CommonPhoneStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.string_Id.CommonPhoneStrings_Package_References.Java_Box;
   function Java_Unbox_CommonPhoneStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return CommonPhoneStrings_Access_Array_Access_Array_Access renames org.allbinary.string_Id.CommonPhoneStrings_Package_References.Java_Unbox_CommonPhoneStrings_Access_Array_Access_Array;

   type CommonPhoneStrings is new Java_Object with record
      UP : Unbounded_String;
      DOWN : Unbounded_String;
      LEFT : Unbounded_String;
      RIGHT : Unbounded_String;
      ZERO : Unbounded_String;
      ONE : Unbounded_String;
      TWO : Unbounded_String;
      THREE : Unbounded_String;
      FOUR : Unbounded_String;
      FIVE : Unbounded_String;
      SIX : Unbounded_String;
      SEVEN : Unbounded_String;
      EIGHT : Unbounded_String;
      NINE : Unbounded_String;
      POUND : Unbounded_String;
      STAR : Unbounded_String;
      FIRE : Unbounded_String;
   end record;
   instance : CommonPhoneStrings_Access;

   procedure Initialize (This : in out CommonPhoneStrings'Class);
   function Create return CommonPhoneStrings_Access;
   function getInstance return CommonPhoneStrings_Access;

end org.allbinary.string_Id.CommonPhoneStrings_Package;


