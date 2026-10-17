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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.file.FileLockUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;

   type FileLockUtil is tagged;
   type FileLockUtil_Access is access all FileLockUtil'Class;
   type FileLockUtil_Access_Array is array (Natural range <>) of FileLockUtil_Access;
   type FileLockUtil_Access_Array_Access is access all FileLockUtil_Access_Array;

   type FileLockUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : FileLockUtil_Access;

   procedure Initialize (This : in out FileLockUtil'Class);
   function Create return FileLockUtil_Access;
   function getInstance return FileLockUtil_Access;
   function getAll (This : in out FileLockUtil; vector : BasicArrayList_Access; isReturnOnFailure : Boolean) return BasicArrayList_Access;
   procedure getAll (This : in out FileLockUtil; vector : BasicArrayList_Access; isReturnOnFailure : Boolean);
   function getAllPossible (This : in out FileLockUtil; vector : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAllPossible (This : in out FileLockUtil; vector : BasicArrayList_Access);
   function getAllOrNone (This : in out FileLockUtil; vector : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getAllOrNone (This : in out FileLockUtil; vector : BasicArrayList_Access);
   function getLock (This : in out FileLockUtil; file : AbFile_Access) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; file : AbFile_Access);
   function getLock (This : in out FileLockUtil; fileOutputStream : AbFileOutputStream_Access) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileOutputStream : AbFileOutputStream_Access);
   function getLock (This : in out FileLockUtil; fileChannel : FileChannel_Access) return FileLock_Access;
   procedure getLock (This : in out FileLockUtil; fileChannel : FileChannel_Access);

end org.allbinary.logic.io.file.FileLockUtil_Package;


