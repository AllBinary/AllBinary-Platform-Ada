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
limited with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
package org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References is
   type TouchButtonLocationHelper_Access is access all org.allbinary.input.motion.button.TouchButtonLocationHelper_Package.TouchButtonLocationHelper'Class;
   type TouchButtonLocationHelper_Access_Array is array (Natural range <>) of TouchButtonLocationHelper_Access;
   type TouchButtonLocationHelper_Access_Array_Access is access all TouchButtonLocationHelper_Access_Array;
   type TouchButtonLocationHelper_Access_Array_Access_Array is array (Natural range <>) of TouchButtonLocationHelper_Access_Array_Access;
   type TouchButtonLocationHelper_Access_Array_Access_Array_Access is access all TouchButtonLocationHelper_Access_Array_Access_Array;
   type TouchButtonLocationHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonLocationHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonLocationHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonLocationHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonLocationHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonLocationHelper_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonLocationHelper_Access_Array_Object'Class then TouchButtonLocationHelper_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonLocationHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonLocationHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonLocationHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonLocationHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonLocationHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonLocationHelper_Access_Array_Access_Array_Object'Class then TouchButtonLocationHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References;

with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.TouchButtonLocationHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonLocationHelper_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   function Java_Box (Value : TouchButtonLocationHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.Java_Box;
   function Java_Unbox_TouchButtonLocationHelper_Access_Array (Value : access Java_Object'Class) return TouchButtonLocationHelper_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.Java_Unbox_TouchButtonLocationHelper_Access_Array;
   subtype TouchButtonLocationHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   function Java_Box (Value : TouchButtonLocationHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.Java_Box;
   function Java_Unbox_TouchButtonLocationHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonLocationHelper_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.Java_Unbox_TouchButtonLocationHelper_Access_Array_Access_Array;

   type TouchButtonLocationHelper is new Java_Object with record
      totalColumns : Integer;
      totalRows : Integer;
      columnsRemainder : Integer;
      rowsRemainder : Integer;
      columnsRemainderHalf : Integer;
      rowsRemainderHalf : Integer;
   end record;

   procedure Initialize (This : in out TouchButtonLocationHelper'Class);
   function Create return TouchButtonLocationHelper_Access;
   function getTotalColumns (This : in out TouchButtonLocationHelper) return Integer;
   function getTotalRows (This : in out TouchButtonLocationHelper) return Integer;
   function getColumnsRemainder (This : in out TouchButtonLocationHelper) return Integer;
   function getRowsRemainder (This : in out TouchButtonLocationHelper) return Integer;
   function getColumnsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer;
   function getRowsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer;
   function toString (This : in out TouchButtonLocationHelper) return Unbounded_String;

end org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;


