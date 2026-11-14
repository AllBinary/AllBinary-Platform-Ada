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
limited with org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
package org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References is
   type SpecialCharacterUtil_Access is access all org.allbinary.logic.string_Id.SpecialCharacterUtil_Package.SpecialCharacterUtil'Class;
   type SpecialCharacterUtil_Access_Array is array (Natural range <>) of SpecialCharacterUtil_Access;
   type SpecialCharacterUtil_Access_Array_Access is access all SpecialCharacterUtil_Access_Array;
   type SpecialCharacterUtil_Access_Array_Access_Array is array (Natural range <>) of SpecialCharacterUtil_Access_Array_Access;
   type SpecialCharacterUtil_Access_Array_Access_Array_Access is access all SpecialCharacterUtil_Access_Array_Access_Array;
   type SpecialCharacterUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialCharacterUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialCharacterUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialCharacterUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialCharacterUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialCharacterUtil_Access_Array_Access is (if Value /= null and then Value.all in SpecialCharacterUtil_Access_Array_Object'Class then SpecialCharacterUtil_Access_Array_Object'Class (Value.all).Value else null);
   type SpecialCharacterUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialCharacterUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialCharacterUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialCharacterUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialCharacterUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialCharacterUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpecialCharacterUtil_Access_Array_Access_Array_Object'Class then SpecialCharacterUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References;

with org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.logic.string_Id.SpecialCharacterUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SpecialCharacterUtil_Access is org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.SpecialCharacterUtil_Access;
   function "=" (Left, Right : SpecialCharacterUtil_Access) return Boolean renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References."=";
   subtype SpecialCharacterUtil_Access_Array is org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.SpecialCharacterUtil_Access_Array;
   function "=" (Left, Right : SpecialCharacterUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References."=";
   subtype SpecialCharacterUtil_Access_Array_Access is org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.SpecialCharacterUtil_Access_Array_Access;
   function "=" (Left, Right : SpecialCharacterUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References."=";
   function Java_Box (Value : SpecialCharacterUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.Java_Box;
   function Java_Unbox_SpecialCharacterUtil_Access_Array (Value : access Java_Object'Class) return SpecialCharacterUtil_Access_Array_Access renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.Java_Unbox_SpecialCharacterUtil_Access_Array;
   subtype SpecialCharacterUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.SpecialCharacterUtil_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialCharacterUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References."=";
   subtype SpecialCharacterUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.SpecialCharacterUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialCharacterUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References."=";
   function Java_Box (Value : SpecialCharacterUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.Java_Box;
   function Java_Unbox_SpecialCharacterUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return SpecialCharacterUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.string_Id.SpecialCharacterUtil_Package_References.Java_Unbox_SpecialCharacterUtil_Access_Array_Access_Array;

   type SpecialCharacterUtil is new Java_Object with null record;

   procedure Initialize (This : in out SpecialCharacterUtil'Class);
   function Create return SpecialCharacterUtil_Access;
   function getHashMap return HashMap_Access;

end org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;


