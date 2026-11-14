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
limited with org.allbinary.logic.java.number.LongUtil_Package;
package org.allbinary.logic.java.number.LongUtil_Package_References is
   type LongUtil_Access is access all org.allbinary.logic.java.number.LongUtil_Package.LongUtil'Class;
   type LongUtil_Access_Array is array (Natural range <>) of LongUtil_Access;
   type LongUtil_Access_Array_Access is access all LongUtil_Access_Array;
   type LongUtil_Access_Array_Access_Array is array (Natural range <>) of LongUtil_Access_Array_Access;
   type LongUtil_Access_Array_Access_Array_Access is access all LongUtil_Access_Array_Access_Array;
   type LongUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LongUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LongUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LongUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LongUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LongUtil_Access_Array_Access is (if Value /= null and then Value.all in LongUtil_Access_Array_Object'Class then LongUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LongUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LongUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LongUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LongUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LongUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LongUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LongUtil_Access_Array_Access_Array_Object'Class then LongUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.number.LongUtil_Package_References;

with org.allbinary.logic.java.number.LongUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.number.LongUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LongUtil_Access is org.allbinary.logic.java.number.LongUtil_Package_References.LongUtil_Access;
   function "=" (Left, Right : LongUtil_Access) return Boolean renames org.allbinary.logic.java.number.LongUtil_Package_References."=";
   subtype LongUtil_Access_Array is org.allbinary.logic.java.number.LongUtil_Package_References.LongUtil_Access_Array;
   function "=" (Left, Right : LongUtil_Access_Array) return Boolean renames org.allbinary.logic.java.number.LongUtil_Package_References."=";
   subtype LongUtil_Access_Array_Access is org.allbinary.logic.java.number.LongUtil_Package_References.LongUtil_Access_Array_Access;
   function "=" (Left, Right : LongUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.number.LongUtil_Package_References."=";
   function Java_Box (Value : LongUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.number.LongUtil_Package_References.Java_Box;
   function Java_Unbox_LongUtil_Access_Array (Value : access Java_Object'Class) return LongUtil_Access_Array_Access renames org.allbinary.logic.java.number.LongUtil_Package_References.Java_Unbox_LongUtil_Access_Array;
   subtype LongUtil_Access_Array_Access_Array is org.allbinary.logic.java.number.LongUtil_Package_References.LongUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LongUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.number.LongUtil_Package_References."=";
   subtype LongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.number.LongUtil_Package_References.LongUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LongUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.number.LongUtil_Package_References."=";
   function Java_Box (Value : LongUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.number.LongUtil_Package_References.Java_Box;
   function Java_Unbox_LongUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LongUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.number.LongUtil_Package_References.Java_Unbox_LongUtil_Access_Array_Access_Array;

   type LongUtil is new Java_Object with null record;

   procedure Initialize (This : in out LongUtil'Class);
   function Create return LongUtil_Access;
   function fillIn (end_Id : Unbounded_String) return Unbounded_String;
   procedure fillIn (end_Id : Unbounded_String);

end org.allbinary.logic.java.number.LongUtil_Package;


