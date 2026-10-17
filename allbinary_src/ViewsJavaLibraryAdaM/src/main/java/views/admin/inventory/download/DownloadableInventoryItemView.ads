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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.zip.ZipFileUtil_Package; use org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.inventory.download.DownloadableInventoryItemView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemData_Package renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package BasicItemView_Package renames org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package DownloadableItem_Package renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package DownloadableItemView_Package renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package MultipartRequestParams_Package renames org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package RequestMapInterface_Package renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package FilePathData_Package renames org.allbinary.logic.io.file.FilePathData_Package;
   package FileUtil_Package renames org.allbinary.logic.io.file.FileUtil_Package;
   package ZipFileUtil_Package renames org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package FileItem_Package renames org.apache.commons.fileupload.FileItem_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type DownloadableInventoryItemView is tagged;
   type DownloadableInventoryItemView_Access is access all DownloadableInventoryItemView'Class;
   type DownloadableInventoryItemView_Access_Array is array (Natural range <>) of DownloadableInventoryItemView_Access;
   type DownloadableInventoryItemView_Access_Array_Access is access all DownloadableInventoryItemView_Access_Array;

   type DownloadableInventoryItemView is new HttpStoreComponentView and RequestMapInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      itemInterface : ItemInterface_Access;
      downloadableItem : DownloadableItem_Access;
      requestHashMap : HashMap_Access;
   end record;
   TYPE_ID : Integer;

   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return DownloadableInventoryItemView_Access;
   function getTypeId (This : in out DownloadableInventoryItemView) return Integer;
   procedure getTypeId (This : in out DownloadableInventoryItemView);
   procedure getFormData (This : in out DownloadableInventoryItemView);
   procedure addDomNodeInterfaces (This : in out DownloadableInventoryItemView);
   function view (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure view (This : in out DownloadableInventoryItemView);
   procedure processFile (This : in out DownloadableInventoryItemView; fileItem : FileItem_Access);
   procedure unzip (This : in out DownloadableInventoryItemView; fileItem : FileItem_Access);
   function getItemFilePath (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure getItemFilePath (This : in out DownloadableInventoryItemView);
   procedure setRequestHashMap (This : in out DownloadableInventoryItemView; requestHashMap : HashMap_Access);
   function getRequestHashMap (This : in out DownloadableInventoryItemView) return HashMap_Access;
   procedure getRequestHashMap (This : in out DownloadableInventoryItemView);
   function getDownloadableItem (This : in out DownloadableInventoryItemView) return DownloadableItem_Access;
   procedure getDownloadableItem (This : in out DownloadableInventoryItemView);

end views.admin.inventory.download.DownloadableInventoryItemView_Package;


