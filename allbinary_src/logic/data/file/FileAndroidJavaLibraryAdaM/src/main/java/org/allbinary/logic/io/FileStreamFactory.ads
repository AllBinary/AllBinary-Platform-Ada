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
with android.content.Context_Package; use android.content.Context_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.logic.io.FileStreamFactory_Package is

   package Context_Package renames android.content.Context_Package;
   package ResourceUtil_Package renames org.allbinary.data.resource.ResourceUtil_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type FileStreamFactory is tagged;
   type FileStreamFactory_Access is access all FileStreamFactory'Class;
   type FileStreamFactory_Access_Array is array (Natural range <>) of FileStreamFactory_Access;
   type FileStreamFactory_Access_Array_Access is access all FileStreamFactory_Access_Array;

   type FileStreamFactory is new Java_Object with record
      context : Java_Object_Access;
   end record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out FileStreamFactory'Class; context : Context_Access);
   function Create (context : Context_Access) return FileStreamFactory_Access;
   function getInstance return FileStreamFactory_Access;
   procedure getInstance;
   function getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileInputStream_Access;
   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access;
   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   function getContext (This : in out FileStreamFactory) return Context_Access;
   procedure getContext (This : in out FileStreamFactory);

end org.allbinary.logic.io.FileStreamFactory_Package;


