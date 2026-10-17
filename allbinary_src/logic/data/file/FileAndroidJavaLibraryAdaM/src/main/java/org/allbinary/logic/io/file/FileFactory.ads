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
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
with android.content.Context_Package; use android.content.Context_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.file.FileFactory_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;

   type FileFactory is tagged;
   type FileFactory_Access is access all FileFactory'Class;
   type FileFactory_Access_Array is array (Natural range <>) of FileFactory_Access;
   type FileFactory_Access_Array_Access is access all FileFactory_Access_Array;

   type FileFactory is new Java_Object with record
      context : Context_Access;
   end record;
   SINGLETON : FileFactory_Access;

   procedure Initialize (This : in out FileFactory'Class; context : Context_Access);
   function Create (context : Context_Access) return FileFactory_Access;
   function getInstance return FileFactory_Access;
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean;
   procedure isFile (This : in out FileFactory; path : Unbounded_String);
   function getContext (This : in out FileFactory) return Context_Access;
   function getFile (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access;
   procedure getFile (This : in out FileFactory; filePath : Unbounded_String);
   function getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String) return AbFile_Access;
   procedure getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String);

end org.allbinary.logic.io.file.FileFactory_Package;


