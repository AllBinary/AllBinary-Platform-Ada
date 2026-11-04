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

limited with org.allbinary.business.time.Time_Package;
package org.allbinary.business.time.Time_Package_References is
   type Time_Access is access all org.allbinary.business.time.Time_Package.Time'Class;
   type Time_Access_Array is array (Natural range <>) of Time_Access;
   type Time_Access_Array_Access is access all Time_Access_Array;
   type Time_Access_Array_Access_Array is array (Natural range <>) of Time_Access_Array_Access;
   type Time_Access_Array_Access_Array_Access is access all Time_Access_Array_Access_Array;
end org.allbinary.business.time.Time_Package_References;

with org.allbinary.business.time.Time_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.time.Time_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Time_Access is org.allbinary.business.time.Time_Package_References.Time_Access;
   function "=" (Left, Right : Time_Access) return Boolean renames org.allbinary.business.time.Time_Package_References."=";
   subtype Time_Access_Array is org.allbinary.business.time.Time_Package_References.Time_Access_Array;
   function "=" (Left, Right : Time_Access_Array) return Boolean renames org.allbinary.business.time.Time_Package_References."=";
   subtype Time_Access_Array_Access is org.allbinary.business.time.Time_Package_References.Time_Access_Array_Access;
   function "=" (Left, Right : Time_Access_Array_Access) return Boolean renames org.allbinary.business.time.Time_Package_References."=";
   subtype Time_Access_Array_Access_Array is org.allbinary.business.time.Time_Package_References.Time_Access_Array_Access_Array;
   function "=" (Left, Right : Time_Access_Array_Access_Array) return Boolean renames org.allbinary.business.time.Time_Package_References."=";
   subtype Time_Access_Array_Access_Array_Access is org.allbinary.business.time.Time_Package_References.Time_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Time_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.time.Time_Package_References."=";

   type Time is new Java_Object with record
      timeLong : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out Time'Class; time_Var : Unbounded_String);
   function Create (time_Var : Unbounded_String) return Time_Access;
   procedure Initialize (This : in out Time'Class; time_Var : Long_Long_Integer);
   function Create (time_Var : Long_Long_Integer) return Time_Access;
   function getLong (This : in out Time) return Long_Long_Integer;
   function getlong (This : in out Time) return Long_Long_Integer;
   function toString (This : in out Time) return Unbounded_String;

end org.allbinary.business.time.Time_Package;


