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

limited with org.allbinary.logic.java.number.LongData_Package;
package org.allbinary.logic.java.number.LongData_Package_References is
   type LongData_Access is access all org.allbinary.logic.java.number.LongData_Package.LongData'Class;
   type LongData_Access_Array is array (Natural range <>) of LongData_Access;
   type LongData_Access_Array_Access is access all LongData_Access_Array;
   type LongData_Access_Array_Access_Array is array (Natural range <>) of LongData_Access_Array_Access;
   type LongData_Access_Array_Access_Array_Access is access all LongData_Access_Array_Access_Array;
end org.allbinary.logic.java.number.LongData_Package_References;

with org.allbinary.logic.java.number.LongData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.number.LongData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LongData_Access is org.allbinary.logic.java.number.LongData_Package_References.LongData_Access;
   function "=" (Left, Right : LongData_Access) return Boolean renames org.allbinary.logic.java.number.LongData_Package_References."=";
   subtype LongData_Access_Array is org.allbinary.logic.java.number.LongData_Package_References.LongData_Access_Array;
   function "=" (Left, Right : LongData_Access_Array) return Boolean renames org.allbinary.logic.java.number.LongData_Package_References."=";
   subtype LongData_Access_Array_Access is org.allbinary.logic.java.number.LongData_Package_References.LongData_Access_Array_Access;
   function "=" (Left, Right : LongData_Access_Array_Access) return Boolean renames org.allbinary.logic.java.number.LongData_Package_References."=";
   subtype LongData_Access_Array_Access_Array is org.allbinary.logic.java.number.LongData_Package_References.LongData_Access_Array_Access_Array;
   function "=" (Left, Right : LongData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.number.LongData_Package_References."=";
   subtype LongData_Access_Array_Access_Array_Access is org.allbinary.logic.java.number.LongData_Package_References.LongData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LongData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.number.LongData_Package_References."=";

   type LongData is new Java_Object with null record;
   MAX_LONG_LENGTH : Integer;

   procedure Initialize (This : in out LongData'Class);
   function Create return LongData_Access;

end org.allbinary.logic.java.number.LongData_Package;


