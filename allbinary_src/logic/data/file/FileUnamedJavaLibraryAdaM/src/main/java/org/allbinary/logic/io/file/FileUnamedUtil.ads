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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.io.file.FileUnamedUtil_Package is

   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type FileUnamedUtil is tagged;
   type FileUnamedUtil_Access is access all FileUnamedUtil'Class;
   type FileUnamedUtil_Access_Array is array (Natural range <>) of FileUnamedUtil_Access;
   type FileUnamedUtil_Access_Array_Access is access all FileUnamedUtil_Access_Array;

   type FileUnamedUtil is new Java_Object with record
      commonSeps : CommonSeps_Access;
   end record;
   instance : FileUnamedUtil_Access;

   procedure Initialize (This : in out FileUnamedUtil'Class);
   function Create return FileUnamedUtil_Access;
   function getInstance return FileUnamedUtil_Access;
   procedure getInstance;
   function process (This : in out FileUnamedUtil; string_Id : Unbounded_String) return Unbounded_String;
   procedure process (This : in out FileUnamedUtil; string_Id : Unbounded_String);

end org.allbinary.logic.io.file.FileUnamedUtil_Package;


