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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.inventory.download.DownloadableInventoryItemView_Package; use views.admin.inventory.download.DownloadableInventoryItemView_Package;

package views.admin.inventory.download.AddFileValidationView_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package BasicItemValidation_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;
   package DownloadItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package DownloadableItemValidation_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type AddFileValidationView is tagged;
   type AddFileValidationView_Access is access all AddFileValidationView'Class;
   type AddFileValidationView_Access_Array is array (Natural range <>) of AddFileValidationView_Access;
   type AddFileValidationView_Access_Array_Access is access all AddFileValidationView_Access_Array;

   type AddFileValidationView is new DownloadableInventoryItemView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
   end record;
   ADDPRODUCT : Unbounded_String;
   ADDANOTHERDOWNLOADABLE : Unbounded_String;

   procedure Initialize (This : in out AddFileValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddFileValidationView_Access;
   function isValid (This : in out AddFileValidationView) return Boolean;
   function toValidationInfoDoc (This : in out AddFileValidationView) return Document_Access;
   function toValidationInfoNode (This : in out AddFileValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out AddFileValidationView; document : Document_Access);
   function validationInfo (This : in out AddFileValidationView) return Unbounded_String;
   function isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) return Boolean;
   procedure isValid (This : in out AddFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer);
   procedure validationInfo (This : in out AddFileValidationView; stringBuffer : StringMaker_Access; fileName : Unbounded_String; size : Long_Long_Integer);

end views.admin.inventory.download.AddFileValidationView_Package;


