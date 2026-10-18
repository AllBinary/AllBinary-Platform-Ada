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

package org.allbinary.logic.io.file.FilePathData_Package is


   type FilePathData is tagged;
   type FilePathData_Access is access all FilePathData'Class;
   type FilePathData_Access_Array is array (Natural range <>) of FilePathData_Access;
   type FilePathData_Access_Array_Access is access all FilePathData_Access_Array;
   type FilePathData_Access_Array_Access_Array is array (Natural range <>) of FilePathData_Access_Array_Access;
   type FilePathData_Access_Array_Access_Array_Access is access all FilePathData_Access_Array_Access_Array;

   type FilePathData is new Java_Object with record
      SEPARATORCHAR : Character;
      PATH_START : Unbounded_String;
   end record;
   instance : FilePathData_Access;

   procedure Initialize (This : in out FilePathData'Class);
   function Create return FilePathData_Access;
   function getInstance return FilePathData_Access;

end org.allbinary.logic.io.file.FilePathData_Package;


