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
limited with org.allbinary.time.TimeStampUtil_Package;
package org.allbinary.time.TimeStampUtil_Package_References is
   type TimeStampUtil_Access is access all org.allbinary.time.TimeStampUtil_Package.TimeStampUtil'Class;
   type TimeStampUtil_Access_Array is array (Natural range <>) of TimeStampUtil_Access;
   type TimeStampUtil_Access_Array_Access is access all TimeStampUtil_Access_Array;
   type TimeStampUtil_Access_Array_Access_Array is array (Natural range <>) of TimeStampUtil_Access_Array_Access;
   type TimeStampUtil_Access_Array_Access_Array_Access is access all TimeStampUtil_Access_Array_Access_Array;
   type TimeStampUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeStampUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeStampUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeStampUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeStampUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeStampUtil_Access_Array_Access is (if Value /= null and then Value.all in TimeStampUtil_Access_Array_Object'Class then TimeStampUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TimeStampUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeStampUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeStampUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeStampUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeStampUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeStampUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeStampUtil_Access_Array_Access_Array_Object'Class then TimeStampUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.TimeStampUtil_Package_References;

with org.allbinary.time.TimeStampUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.text.SimpleDateFormat_Package; use java.text.SimpleDateFormat_Package;

package org.allbinary.time.TimeStampUtil_Package is

   package SimpleDateFormat_Package renames Standard.java.text.SimpleDateFormat_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeStampUtil_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access;
   function "=" (Left, Right : TimeStampUtil_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array;
   function "=" (Left, Right : TimeStampUtil_Access_Array) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   function Java_Box (Value : TimeStampUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeStampUtil_Package_References.Java_Box;
   function Java_Unbox_TimeStampUtil_Access_Array (Value : access Java_Object'Class) return TimeStampUtil_Access_Array_Access renames org.allbinary.time.TimeStampUtil_Package_References.Java_Unbox_TimeStampUtil_Access_Array;
   subtype TimeStampUtil_Access_Array_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   subtype TimeStampUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeStampUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeStampUtil_Package_References."=";
   function Java_Box (Value : TimeStampUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeStampUtil_Package_References.Java_Box;
   function Java_Unbox_TimeStampUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeStampUtil_Access_Array_Access_Array_Access renames org.allbinary.time.TimeStampUtil_Package_References.Java_Unbox_TimeStampUtil_Access_Array_Access_Array;

   type TimeStampUtil is new Java_Object with record
      simpleDataFormat : SimpleDateFormat_Access;
   end record;
   instance : TimeStampUtil_Access;

   procedure Initialize (This : in out TimeStampUtil'Class);
   function Create return TimeStampUtil_Access;
   function getInstance return TimeStampUtil_Access;
   function getAsString (This : in out TimeStampUtil) return Unbounded_String;

end org.allbinary.time.TimeStampUtil_Package;


