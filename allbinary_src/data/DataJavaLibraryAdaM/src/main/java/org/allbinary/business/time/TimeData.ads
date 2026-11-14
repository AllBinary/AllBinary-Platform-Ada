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
limited with org.allbinary.business.time.TimeData_Package;
package org.allbinary.business.time.TimeData_Package_References is
   type TimeData_Access is access all org.allbinary.business.time.TimeData_Package.TimeData'Class;
   type TimeData_Access_Array is array (Natural range <>) of TimeData_Access;
   type TimeData_Access_Array_Access is access all TimeData_Access_Array;
   type TimeData_Access_Array_Access_Array is array (Natural range <>) of TimeData_Access_Array_Access;
   type TimeData_Access_Array_Access_Array_Access is access all TimeData_Access_Array_Access_Array;
   type TimeData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeData_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeData_Access_Array_Access is (if Value /= null and then Value.all in TimeData_Access_Array_Object'Class then TimeData_Access_Array_Object'Class (Value.all).Value else null);
   type TimeData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeData_Access_Array_Access_Array_Object'Class then TimeData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.time.TimeData_Package_References;

with org.allbinary.business.time.TimeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.time.TimeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeData_Access is org.allbinary.business.time.TimeData_Package_References.TimeData_Access;
   function "=" (Left, Right : TimeData_Access) return Boolean renames org.allbinary.business.time.TimeData_Package_References."=";
   subtype TimeData_Access_Array is org.allbinary.business.time.TimeData_Package_References.TimeData_Access_Array;
   function "=" (Left, Right : TimeData_Access_Array) return Boolean renames org.allbinary.business.time.TimeData_Package_References."=";
   subtype TimeData_Access_Array_Access is org.allbinary.business.time.TimeData_Package_References.TimeData_Access_Array_Access;
   function "=" (Left, Right : TimeData_Access_Array_Access) return Boolean renames org.allbinary.business.time.TimeData_Package_References."=";
   function Java_Box (Value : TimeData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.time.TimeData_Package_References.Java_Box;
   function Java_Unbox_TimeData_Access_Array (Value : access Java_Object'Class) return TimeData_Access_Array_Access renames org.allbinary.business.time.TimeData_Package_References.Java_Unbox_TimeData_Access_Array;
   subtype TimeData_Access_Array_Access_Array is org.allbinary.business.time.TimeData_Package_References.TimeData_Access_Array_Access_Array;
   function "=" (Left, Right : TimeData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.time.TimeData_Package_References."=";
   subtype TimeData_Access_Array_Access_Array_Access is org.allbinary.business.time.TimeData_Package_References.TimeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.time.TimeData_Package_References."=";
   function Java_Box (Value : TimeData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.time.TimeData_Package_References.Java_Box;
   function Java_Unbox_TimeData_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeData_Access_Array_Access_Array_Access renames org.allbinary.business.time.TimeData_Package_References.Java_Unbox_TimeData_Access_Array_Access_Array;

   type TimeData is new Java_Object with record
      NAME : Unbounded_String;
      START : Unbounded_String;
      END_Id : Unbounded_String;
   end record;
   instance : TimeData_Access;

   procedure Initialize (This : in out TimeData'Class);
   function Create return TimeData_Access;
   function getInstance return TimeData_Access;

end org.allbinary.business.time.TimeData_Package;


