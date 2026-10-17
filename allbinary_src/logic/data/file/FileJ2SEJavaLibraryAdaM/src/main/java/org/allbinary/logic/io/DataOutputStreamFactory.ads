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
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.DataOutputStreamFactory_Package is

   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;

   type DataOutputStreamFactory is tagged;
   type DataOutputStreamFactory_Access is access all DataOutputStreamFactory'Class;
   type DataOutputStreamFactory_Access_Array is array (Natural range <>) of DataOutputStreamFactory_Access;
   type DataOutputStreamFactory_Access_Array_Access is access all DataOutputStreamFactory_Access_Array;

   type DataOutputStreamFactory is new Java_Object with null record;
   instance : DataOutputStreamFactory_Access;

   procedure Initialize (This : in out DataOutputStreamFactory'Class);
   function Create return DataOutputStreamFactory_Access;
   function getInstance return DataOutputStreamFactory_Access;
   procedure getInstance;
   function getInstanceForAbFile (This : in out DataOutputStreamFactory; file : AbFile_Access) return AbDataOutputStream_Access;
   procedure getInstanceForAbFile (This : in out DataOutputStreamFactory; file : AbFile_Access);
   function getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String) return AbDataOutputStream_Access;
   procedure getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String);

end org.allbinary.logic.io.DataOutputStreamFactory_Package;


