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
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.inventory.InventoryItemView_Package; use views.admin.inventory.InventoryItemView_Package;

package views.admin.inventory.EditValidationView_Package is

   package BasicItemData_Package renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package MoneyException_Package renames org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package DownloadItemsEntity_Package renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;
   package DownloadItemsEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
   package RequestParams_Package renames org.allbinary.logic.communication.http.request.RequestParams_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type EditValidationView is tagged;
   type EditValidationView_Access is access all EditValidationView'Class;
   type EditValidationView_Access_Array is array (Natural range <>) of EditValidationView_Access;
   type EditValidationView_Access_Array_Access is access all EditValidationView_Access_Array;

   type EditValidationView is new InventoryItemView and ValidationComponentInterface with record
      id : Unbounded_String;
   end record;

   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return EditValidationView_Access;
   procedure getFormData (This : in out EditValidationView);
   function isValid (This : in out EditValidationView) return Boolean;
   procedure isValid (This : in out EditValidationView);
   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out EditValidationView);
   function toValidationInfoNode (This : in out EditValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out EditValidationView; document : Document_Access);
   function validationInfo (This : in out EditValidationView) return Unbounded_String;
   procedure validationInfo (This : in out EditValidationView);

end views.admin.inventory.EditValidationView_Package;


