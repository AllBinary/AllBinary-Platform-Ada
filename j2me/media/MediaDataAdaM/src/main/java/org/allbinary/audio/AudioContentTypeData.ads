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

limited with org.allbinary.audio.AudioContentTypeData_Package;
package org.allbinary.audio.AudioContentTypeData_Package_References is
   type AudioContentTypeData_Access is access all org.allbinary.audio.AudioContentTypeData_Package.AudioContentTypeData'Class;
   type AudioContentTypeData_Access_Array is array (Natural range <>) of AudioContentTypeData_Access;
   type AudioContentTypeData_Access_Array_Access is access all AudioContentTypeData_Access_Array;
   type AudioContentTypeData_Access_Array_Access_Array is array (Natural range <>) of AudioContentTypeData_Access_Array_Access;
   type AudioContentTypeData_Access_Array_Access_Array_Access is access all AudioContentTypeData_Access_Array_Access_Array;
end org.allbinary.audio.AudioContentTypeData_Package_References;

with org.allbinary.audio.AudioContentTypeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.audio.AudioContentTypeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AudioContentTypeData_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access;
   function "=" (Left, Right : AudioContentTypeData_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array;
   function "=" (Left, Right : AudioContentTypeData_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";

   type AudioContentTypeData is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out AudioContentTypeData'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return AudioContentTypeData_Access;
   function getName (This : in out AudioContentTypeData) return Unbounded_String;

end org.allbinary.audio.AudioContentTypeData_Package;


