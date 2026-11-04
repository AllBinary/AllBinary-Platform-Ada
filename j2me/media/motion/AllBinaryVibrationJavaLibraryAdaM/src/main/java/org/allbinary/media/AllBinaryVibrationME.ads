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

limited with org.allbinary.media.AllBinaryVibrationME_Package;
package org.allbinary.media.AllBinaryVibrationME_Package_References is
   type AllBinaryVibrationME_Access is access all org.allbinary.media.AllBinaryVibrationME_Package.AllBinaryVibrationME'Class;
   type AllBinaryVibrationME_Access_Array is array (Natural range <>) of AllBinaryVibrationME_Access;
   type AllBinaryVibrationME_Access_Array_Access is access all AllBinaryVibrationME_Access_Array;
   type AllBinaryVibrationME_Access_Array_Access_Array is array (Natural range <>) of AllBinaryVibrationME_Access_Array_Access;
   type AllBinaryVibrationME_Access_Array_Access_Array_Access is access all AllBinaryVibrationME_Access_Array_Access_Array;
end org.allbinary.media.AllBinaryVibrationME_Package_References;

with org.allbinary.media.AllBinaryVibrationME_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.AllBinaryVibrationME_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryVibrationME_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";
   subtype AllBinaryVibrationME_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibrationME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibrationME_Package_References."=";

   type AllBinaryVibrationME is new Java_Object with null record;

   procedure Initialize (This : in out AllBinaryVibrationME'Class);
   function Create return AllBinaryVibrationME_Access;
   procedure vibrate (This : in out AllBinaryVibrationME; duration : Integer; type_Id : Integer; volume : Integer);

end org.allbinary.media.AllBinaryVibrationME_Package;


