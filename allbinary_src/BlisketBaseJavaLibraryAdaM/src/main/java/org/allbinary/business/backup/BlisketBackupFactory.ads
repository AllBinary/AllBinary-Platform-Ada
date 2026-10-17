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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.zip.ZipFileUtil_Package; use org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.business.backup.BlisketBackupFactory_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StoreFrontsEntity_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
   package StoreFrontsEntityFactory_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package ZipFileUtil_Package renames Standard.org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BlisketBackupFactory is tagged;
   type BlisketBackupFactory_Access is access all BlisketBackupFactory'Class;
   type BlisketBackupFactory_Access_Array is array (Natural range <>) of BlisketBackupFactory_Access;
   type BlisketBackupFactory_Access_Array_Access is access all BlisketBackupFactory_Access_Array;

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
   procedure backup (This : in out BlisketBackupFactory; fileBasicArrayList : BasicArrayList_Access; zipFile : Unbounded_String);

end org.allbinary.business.backup.BlisketBackupFactory_Package;


