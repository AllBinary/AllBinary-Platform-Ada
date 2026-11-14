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
limited with org.allbinary.logic.control.sort.StringComparator_Package;
package org.allbinary.logic.control.sort.StringComparator_Package_References is
   type StringComparator_Access is access all org.allbinary.logic.control.sort.StringComparator_Package.StringComparator'Class;
   type StringComparator_Access_Array is array (Natural range <>) of StringComparator_Access;
   type StringComparator_Access_Array_Access is access all StringComparator_Access_Array;
   type StringComparator_Access_Array_Access_Array is array (Natural range <>) of StringComparator_Access_Array_Access;
   type StringComparator_Access_Array_Access_Array_Access is access all StringComparator_Access_Array_Access_Array;
   type StringComparator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringComparator_Access_Array_Access;
   end record;
   function Java_Box (Value : StringComparator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringComparator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringComparator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringComparator_Access_Array_Access is (if Value /= null and then Value.all in StringComparator_Access_Array_Object'Class then StringComparator_Access_Array_Object'Class (Value.all).Value else null);
   type StringComparator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringComparator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StringComparator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringComparator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringComparator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringComparator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StringComparator_Access_Array_Access_Array_Object'Class then StringComparator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.sort.StringComparator_Package_References;

with org.allbinary.logic.control.sort.StringComparator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Comparator_Package; use java.util.Comparator_Package;

package org.allbinary.logic.control.sort.StringComparator_Package is

   package Comparator_Package renames Standard.java.util.Comparator_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StringComparator_Access is org.allbinary.logic.control.sort.StringComparator_Package_References.StringComparator_Access;
   function "=" (Left, Right : StringComparator_Access) return Boolean renames org.allbinary.logic.control.sort.StringComparator_Package_References."=";
   subtype StringComparator_Access_Array is org.allbinary.logic.control.sort.StringComparator_Package_References.StringComparator_Access_Array;
   function "=" (Left, Right : StringComparator_Access_Array) return Boolean renames org.allbinary.logic.control.sort.StringComparator_Package_References."=";
   subtype StringComparator_Access_Array_Access is org.allbinary.logic.control.sort.StringComparator_Package_References.StringComparator_Access_Array_Access;
   function "=" (Left, Right : StringComparator_Access_Array_Access) return Boolean renames org.allbinary.logic.control.sort.StringComparator_Package_References."=";
   function Java_Box (Value : StringComparator_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.sort.StringComparator_Package_References.Java_Box;
   function Java_Unbox_StringComparator_Access_Array (Value : access Java_Object'Class) return StringComparator_Access_Array_Access renames org.allbinary.logic.control.sort.StringComparator_Package_References.Java_Unbox_StringComparator_Access_Array;
   subtype StringComparator_Access_Array_Access_Array is org.allbinary.logic.control.sort.StringComparator_Package_References.StringComparator_Access_Array_Access_Array;
   function "=" (Left, Right : StringComparator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.sort.StringComparator_Package_References."=";
   subtype StringComparator_Access_Array_Access_Array_Access is org.allbinary.logic.control.sort.StringComparator_Package_References.StringComparator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringComparator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.sort.StringComparator_Package_References."=";
   function Java_Box (Value : StringComparator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.sort.StringComparator_Package_References.Java_Box;
   function Java_Unbox_StringComparator_Access_Array_Access_Array (Value : access Java_Object'Class) return StringComparator_Access_Array_Access_Array_Access renames org.allbinary.logic.control.sort.StringComparator_Package_References.Java_Unbox_StringComparator_Access_Array_Access_Array;

   type StringComparator is new Java_Object and Comparator with null record;

   procedure Initialize (This : in out StringComparator'Class);
   function Create return StringComparator_Access;
   function compare (This : in out StringComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Integer;
   procedure compare (This : in out StringComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class);

end org.allbinary.logic.control.sort.StringComparator_Package;


