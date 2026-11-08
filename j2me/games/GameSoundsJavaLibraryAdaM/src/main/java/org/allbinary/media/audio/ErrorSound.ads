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

limited with org.allbinary.media.audio.ErrorSound_Package;
package org.allbinary.media.audio.ErrorSound_Package_References is
   type ErrorSound_Access is access all org.allbinary.media.audio.ErrorSound_Package.ErrorSound'Class;
   type ErrorSound_Access_Array is array (Natural range <>) of ErrorSound_Access;
   type ErrorSound_Access_Array_Access is access all ErrorSound_Access_Array;
   type ErrorSound_Access_Array_Access_Array is array (Natural range <>) of ErrorSound_Access_Array_Access;
   type ErrorSound_Access_Array_Access_Array_Access is access all ErrorSound_Access_Array_Access_Array;
end org.allbinary.media.audio.ErrorSound_Package_References;

with org.allbinary.media.audio.ErrorSound_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.ErrorSound_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ErrorSound_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access;
   function "=" (Left, Right : ErrorSound_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array;
   function "=" (Left, Right : ErrorSound_Access_Array) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access;
   function "=" (Left, Right : ErrorSound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array_Access_Array is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access_Array;
   function "=" (Left, Right : ErrorSound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";
   subtype ErrorSound_Access_Array_Access_Array_Access is org.allbinary.media.audio.ErrorSound_Package_References.ErrorSound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ErrorSound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.ErrorSound_Package_References."=";

   type ErrorSound is new CompositeSound with null record;
   soundInterface : Sound_Access;

   procedure Initialize (This : in out ErrorSound'Class);
   function Create return ErrorSound_Access;
   function getInstance return Sound_Access;

end org.allbinary.media.audio.ErrorSound_Package;


