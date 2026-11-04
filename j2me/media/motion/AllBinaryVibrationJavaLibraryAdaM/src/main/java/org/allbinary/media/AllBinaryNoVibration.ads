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

limited with org.allbinary.media.AllBinaryNoVibration_Package;
package org.allbinary.media.AllBinaryNoVibration_Package_References is
   type AllBinaryNoVibration_Access is access all org.allbinary.media.AllBinaryNoVibration_Package.AllBinaryNoVibration'Class;
   type AllBinaryNoVibration_Access_Array is array (Natural range <>) of AllBinaryNoVibration_Access;
   type AllBinaryNoVibration_Access_Array_Access is access all AllBinaryNoVibration_Access_Array;
   type AllBinaryNoVibration_Access_Array_Access_Array is array (Natural range <>) of AllBinaryNoVibration_Access_Array_Access;
   type AllBinaryNoVibration_Access_Array_Access_Array_Access is access all AllBinaryNoVibration_Access_Array_Access_Array;
end org.allbinary.media.AllBinaryNoVibration_Package_References;

with org.allbinary.media.AllBinaryNoVibration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.media.AllBinaryNoVibration_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryNoVibration_Access is org.allbinary.media.AllBinaryNoVibration_Package_References.AllBinaryNoVibration_Access;
   function "=" (Left, Right : AllBinaryNoVibration_Access) return Boolean renames org.allbinary.media.AllBinaryNoVibration_Package_References."=";
   subtype AllBinaryNoVibration_Access_Array is org.allbinary.media.AllBinaryNoVibration_Package_References.AllBinaryNoVibration_Access_Array;
   function "=" (Left, Right : AllBinaryNoVibration_Access_Array) return Boolean renames org.allbinary.media.AllBinaryNoVibration_Package_References."=";
   subtype AllBinaryNoVibration_Access_Array_Access is org.allbinary.media.AllBinaryNoVibration_Package_References.AllBinaryNoVibration_Access_Array_Access;
   function "=" (Left, Right : AllBinaryNoVibration_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryNoVibration_Package_References."=";
   subtype AllBinaryNoVibration_Access_Array_Access_Array is org.allbinary.media.AllBinaryNoVibration_Package_References.AllBinaryNoVibration_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryNoVibration_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryNoVibration_Package_References."=";
   subtype AllBinaryNoVibration_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryNoVibration_Package_References.AllBinaryNoVibration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryNoVibration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryNoVibration_Package_References."=";

   type AllBinaryNoVibration is new AllBinaryVibrationME with null record;
   NO_VIBRATION : AllBinaryVibrationME_Access;

   procedure Initialize (This : in out AllBinaryNoVibration'Class);
   function Create return AllBinaryNoVibration_Access;
   procedure vibrate (This : in out AllBinaryNoVibration; duration : Integer; type_Id : Integer; volume : Integer);

end org.allbinary.media.AllBinaryNoVibration_Package;


