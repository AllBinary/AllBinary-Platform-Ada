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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.inventory.download.DownloadableInventoryItemView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type DownloadableInventoryItemView is tagged;
   type DownloadableInventoryItemView_Access is access all DownloadableInventoryItemView'Class;
   type DownloadableInventoryItemView_Access_Array is array (Natural range <>) of DownloadableInventoryItemView_Access;
   type DownloadableInventoryItemView_Access_Array_Access is access all DownloadableInventoryItemView_Access_Array;
   type DownloadableInventoryItemView_Access_Array_Access_Array is array (Natural range <>) of DownloadableInventoryItemView_Access_Array_Access;
   type DownloadableInventoryItemView_Access_Array_Access_Array_Access is access all DownloadableInventoryItemView_Access_Array_Access_Array;

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

   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DownloadableInventoryItemView_Access;
   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) return DownloadableInventoryItemView_Access;
   function getTypeId (This : in out DownloadableInventoryItemView) return Integer;
   procedure getFormData (This : in out DownloadableInventoryItemView);
   procedure addDomNodeInterfaces (This : in out DownloadableInventoryItemView);
   function view (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure processFile (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class);
   procedure unzip (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class);
   function getItemFilePath (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure setRequestHashMap (This : in out DownloadableInventoryItemView; requestHashMap_Param : access HashMap_Package.HashMap'Class);
   function getRequestHashMap (This : in out DownloadableInventoryItemView) return HashMap_Access;
   function getDownloadableItem (This : in out DownloadableInventoryItemView) return DownloadableItem_Access;

end views.admin.inventory.download.DownloadableInventoryItemView_Package;


