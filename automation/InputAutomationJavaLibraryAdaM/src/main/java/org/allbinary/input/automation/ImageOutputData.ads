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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.input.automation.ImageOutputData_Package is

   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type ImageOutputData is tagged;
   type ImageOutputData_Access is access all ImageOutputData'Class;
   type ImageOutputData_Access_Array is array (Natural range <>) of ImageOutputData_Access;
   type ImageOutputData_Access_Array_Access is access all ImageOutputData_Access_Array;

   type ImageOutputData is new Java_Object with null record;
   SAVE_PATH : Unbounded_String;

   procedure Initialize (This : in out ImageOutputData'Class);
   function Create return ImageOutputData_Access;

end org.allbinary.input.automation.ImageOutputData_Package;


