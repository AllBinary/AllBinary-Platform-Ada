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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.business.backup.BlisketBackupFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BlisketBackupFactory is tagged;
   type BlisketBackupFactory_Access is access all BlisketBackupFactory'Class;
   type BlisketBackupFactory_Access_Array is array (Natural range <>) of BlisketBackupFactory_Access;
   type BlisketBackupFactory_Access_Array_Access is access all BlisketBackupFactory_Access_Array;
   type BlisketBackupFactory_Access_Array_Access_Array is array (Natural range <>) of BlisketBackupFactory_Access_Array_Access;
   type BlisketBackupFactory_Access_Array_Access_Array_Access is access all BlisketBackupFactory_Access_Array_Access_Array;

   type BlisketBackupFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
   end record;
   instance : BlisketBackupFactory_Access;

   procedure Initialize (This : in out BlisketBackupFactory'Class);
   function Create return BlisketBackupFactory_Access;
   function getInstance return BlisketBackupFactory_Access;
   function getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String) return BasicArrayList_Access;
   procedure getFileBasicArrayList (This : in out BlisketBackupFactory; pathString : Unbounded_String);
   procedure backup (This : in out BlisketBackupFactory);
   procedure backupViews (This : in out BlisketBackupFactory);
   procedure backupResources (This : in out BlisketBackupFactory);
   procedure backupJsps (This : in out BlisketBackupFactory);
   procedure backup (This : in out BlisketBackupFactory; fileBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; zipFile : Unbounded_String);

end org.allbinary.business.backup.BlisketBackupFactory_Package;


