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
--  with java.nio.channels.FileChannel_Package; use java.nio.channels.FileChannel_Package;
--  with java.nio.channels.FileLock_Package; use java.nio.channels.FileLock_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.file.FileLockUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;

   type FileLockUtil is tagged;
   type FileLockUtil_Access is access all FileLockUtil'Class;
   type FileLockUtil_Access_Array is array (Natural range <>) of FileLockUtil_Access;
   type FileLockUtil_Access_Array_Access is access all FileLockUtil_Access_Array;
   type FileLockUtil_Access_Array_Access_Array is array (Natural range <>) of FileLockUtil_Access_Array_Access;
   type FileLockUtil_Access_Array_Access_Array_Access is access all FileLockUtil_Access_Array_Access_Array;

   type FileLockUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : FileLockUtil_Access;

   procedure Initialize (This : in out FileLockUtil'Class);
   function Create return FileLockUtil_Access;
   function getInstance return FileLockUtil_Access;
   function getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean) return BasicArrayList_Access;
   procedure getAll (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; isReturnOnFailure : Boolean);
   function getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllPossible (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getAllOrNone (This : in out FileLockUtil; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileOutputStream_Param : access AbFileOutputStream_Package.AbFileOutputStream'Class);
   function getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileChannel_Param : access FileChannel_Package.FileChannel'Class);

end org.allbinary.logic.io.file.FileLockUtil_Package;


