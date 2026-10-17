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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;

package org.allbinary.logic.io.CloudStreamUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;

   type CloudStreamUtil is tagged;
   type CloudStreamUtil_Access is access all CloudStreamUtil'Class;
   type CloudStreamUtil_Access_Array is array (Natural range <>) of CloudStreamUtil_Access;
   type CloudStreamUtil_Access_Array_Access is access all CloudStreamUtil_Access_Array;

   type CloudStreamUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CloudStreamUtil_Access;

   procedure Initialize (This : in out CloudStreamUtil'Class);
   function Create return CloudStreamUtil_Access;
   function getInstance return CloudStreamUtil_Access;
   function getFile (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFile (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);
   function getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class) return InputStream_Access;
   procedure getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.io.CloudStreamUtil_Package;


