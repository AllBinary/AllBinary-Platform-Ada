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
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package; use org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaTypeData_Package; use org.allbinary.logic.visual.media.MediaTypeData_Package;
with org.allbinary.logic.visual.media.MediaUtil_Package; use org.allbinary.logic.visual.media.MediaUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package views.admin.inventory.InventoryUploadMediaUtil_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package UploadMediaSingleton_Package renames Standard.org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package MediaData_Package renames Standard.org.allbinary.logic.visual.media.MediaData_Package;
   package MediaTypeData_Package renames Standard.org.allbinary.logic.visual.media.MediaTypeData_Package;
   package MediaUtil_Package renames Standard.org.allbinary.logic.visual.media.MediaUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InventoryUploadMediaUtil is tagged;
   type InventoryUploadMediaUtil_Access is access all InventoryUploadMediaUtil'Class;
   type InventoryUploadMediaUtil_Access_Array is array (Natural range <>) of InventoryUploadMediaUtil_Access;
   type InventoryUploadMediaUtil_Access_Array_Access is access all InventoryUploadMediaUtil_Access_Array;

   type InventoryUploadMediaUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      mediaUtil : MediaUtil_Access;
      LARGEWIDTH : Integer;
      LARGEHEIGHT : Integer;
      MEDIUMWIDTH : Integer;
      MEDIUMHEIGHT : Integer;
      SMALLWIDTH : Integer;
      SMALLHEIGHT : Integer;
      SMALL : Unbounded_String;
      MEDIUM : Unbounded_String;
      LARGE : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      itemInterface : ItemInterface_Access;
   end record;

   procedure Initialize (This : in out InventoryUploadMediaUtil'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) return InventoryUploadMediaUtil_Access;
   function saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class) return ItemInterface_Access;
   procedure saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class);
   procedure setFileNames (This : in out InventoryUploadMediaUtil; fileName : Unbounded_String);

end views.admin.inventory.InventoryUploadMediaUtil_Package;


