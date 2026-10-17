-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package javax.microedition.lcdui.NullImage_Package is


   type NullImage is tagged;
   type NullImage_Access is access all NullImage'Class;
   type NullImage_Access_Array is array (Natural range <>) of NullImage_Access;
   type NullImage_Access_Array_Access is access all NullImage_Access_Array;

   type NullImage is new Java_Object with null record;
   NULL_IMAGE_ARRAY : Image_Access_Array_Access;
   NULL_IMAGE : Image_Access;

   procedure Initialize (This : in out NullImage'Class);
   function Create return NullImage_Access;

end javax.microedition.lcdui.NullImage_Package;


