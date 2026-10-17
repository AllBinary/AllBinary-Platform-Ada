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

package org.allbinary.logic.io.file.FileData_Package is


   type FileData is tagged;
   type FileData_Access is access all FileData'Class;
   type FileData_Access_Array is array (Natural range <>) of FileData_Access;
   type FileData_Access_Array_Access is access all FileData_Access_Array;

   type FileData is new Java_Object with record
      NAME : Unbounded_String;
      ISFILE : Unbounded_String;
      ISDIRECTORY : Unbounded_String;
      ISHIDDEN : Unbounded_String;
      ISABSOLUTE : Unbounded_String;
      ROOT_NAME : Unbounded_String;
      PATH : Unbounded_String;
      ABSOLUTE_PATH : Unbounded_String;
      CANONICAL_PATH : Unbounded_String;
      PARENT : Unbounded_String;
      MINLEN : Integer;
      MAXLEN : Integer;
      MAXIMAGEFILESIZE : Integer;
      MINIMAGEFILESIZE : Integer;
      MAXDOWNLOADABLEFILESIZE : Integer;
      MINDOWNLOADABLEFILESIZE : Integer;
   end record;
   instance : FileData_Access;

   procedure Initialize (This : in out FileData'Class);
   function Create return FileData_Access;
   function getInstance return FileData_Access;

end org.allbinary.logic.io.file.FileData_Package;


