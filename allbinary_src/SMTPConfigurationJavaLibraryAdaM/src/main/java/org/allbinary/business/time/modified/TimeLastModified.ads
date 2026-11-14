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
limited with org.allbinary.business.time.modified.TimeLastModified_Package;
package org.allbinary.business.time.modified.TimeLastModified_Package_References is
   type TimeLastModified_Access is access all org.allbinary.business.time.modified.TimeLastModified_Package.TimeLastModified'Class;
   type TimeLastModified_Access_Array is array (Natural range <>) of TimeLastModified_Access;
   type TimeLastModified_Access_Array_Access is access all TimeLastModified_Access_Array;
   type TimeLastModified_Access_Array_Access_Array is array (Natural range <>) of TimeLastModified_Access_Array_Access;
   type TimeLastModified_Access_Array_Access_Array_Access is access all TimeLastModified_Access_Array_Access_Array;
   type TimeLastModified_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeLastModified_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeLastModified_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeLastModified_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeLastModified_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeLastModified_Access_Array_Access is (if Value /= null and then Value.all in TimeLastModified_Access_Array_Object'Class then TimeLastModified_Access_Array_Object'Class (Value.all).Value else null);
   type TimeLastModified_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeLastModified_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeLastModified_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeLastModified_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeLastModified_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeLastModified_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeLastModified_Access_Array_Access_Array_Object'Class then TimeLastModified_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.time.modified.TimeLastModified_Package_References;

with org.allbinary.business.time.modified.TimeLastModified_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.time.Time_Package; use org.allbinary.business.time.Time_Package;

package org.allbinary.business.time.modified.TimeLastModified_Package is

   package Time_Package renames Standard.org.allbinary.business.time.Time_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeLastModified_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access;
   function "=" (Left, Right : TimeLastModified_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array;
   function "=" (Left, Right : TimeLastModified_Access_Array) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   function Java_Box (Value : TimeLastModified_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.time.modified.TimeLastModified_Package_References.Java_Box;
   function Java_Unbox_TimeLastModified_Access_Array (Value : access Java_Object'Class) return TimeLastModified_Access_Array_Access renames org.allbinary.business.time.modified.TimeLastModified_Package_References.Java_Unbox_TimeLastModified_Access_Array;
   subtype TimeLastModified_Access_Array_Access_Array is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access_Array) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   subtype TimeLastModified_Access_Array_Access_Array_Access is org.allbinary.business.time.modified.TimeLastModified_Package_References.TimeLastModified_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeLastModified_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.time.modified.TimeLastModified_Package_References."=";
   function Java_Box (Value : TimeLastModified_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.time.modified.TimeLastModified_Package_References.Java_Box;
   function Java_Unbox_TimeLastModified_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeLastModified_Access_Array_Access_Array_Access renames org.allbinary.business.time.modified.TimeLastModified_Package_References.Java_Unbox_TimeLastModified_Access_Array_Access_Array;

   type TimeLastModified is new Time_Package.Time with null record;

   procedure Initialize (This : in out TimeLastModified'Class; time : Unbounded_String);
   function Create (time : Unbounded_String) return TimeLastModified_Access;
   procedure Initialize (This : in out TimeLastModified'Class; time : Long_Long_Integer);
   function Create (time : Long_Long_Integer) return TimeLastModified_Access;

end org.allbinary.business.time.modified.TimeLastModified_Package;


