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
--  with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.file.FileWrapperUtil_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;

   type FileWrapperUtil is tagged;
   type FileWrapperUtil_Access is access all FileWrapperUtil'Class;
   type FileWrapperUtil_Access_Array is array (Natural range <>) of FileWrapperUtil_Access;
   type FileWrapperUtil_Access_Array_Access is access all FileWrapperUtil_Access_Array;

   type FileWrapperUtil is new Java_Object with null record;

   procedure Initialize (This : in out FileWrapperUtil'Class);
   function Create return FileWrapperUtil_Access;
   function wrapFiles (files : Java_Object_Access_Array_Access) return AbFile_Access_Array_Access;
   procedure wrapFiles (files : Java_Object_Access_Array_Access);
   function wrapFile (file_Param : access File_Package.File'Class) return AbFile_Access;
   procedure wrapFile (file_Param : access File_Package.File'Class);

end org.allbinary.logic.io.file.FileWrapperUtil_Package;


