-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.ImageStrings_Package is


   type ImageStrings is tagged;
   type ImageStrings_Access is access all ImageStrings'Class;
   type ImageStrings_Access_Array is array (Natural range <>) of ImageStrings_Access;
   type ImageStrings_Access_Array_Access is access all ImageStrings_Access_Array;
   type ImageStrings_Access_Array_Access_Array is array (Natural range <>) of ImageStrings_Access_Array_Access;
   type ImageStrings_Access_Array_Access_Array_Access is access all ImageStrings_Access_Array_Access_Array;

   type ImageStrings is new Java_Object with record
      PNG : Unbounded_String;
      PNG_EXTENSION : Unbounded_String;
   end record;
   instance : ImageStrings_Access;

   procedure Initialize (This : in out ImageStrings'Class);
   function Create return ImageStrings_Access;
   function getInstance return ImageStrings_Access;

end org.allbinary.media.image.ImageStrings_Package;


