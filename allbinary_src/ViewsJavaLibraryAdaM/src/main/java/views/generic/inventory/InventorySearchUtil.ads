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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.InventoryData_Package; use org.allbinary.business.user.commerce.inventory.InventoryData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.StoreTransformer_Package; use org.allbinary.logic.visual.transform.StoreTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.inventory.InventoryColumnUtil_Package; use views.generic_Id.inventory.InventoryColumnUtil_Package;

package views.generic_Id.inventory.InventorySearchUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package InventoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.InventoryData_Package;
   package BasketData_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package StoreTransformer_Package renames Standard.org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformStoreDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
   package TransformInfoHttpSearch_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type InventorySearchUtil is tagged;
   type InventorySearchUtil_Access is access all InventorySearchUtil'Class;
   type InventorySearchUtil_Access_Array is array (Natural range <>) of InventorySearchUtil_Access;
   type InventorySearchUtil_Access_Array_Access is access all InventorySearchUtil_Access_Array;

   type InventorySearchUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonPhoneStrings : CommonPhoneStrings_Access;
      basicItemData : BasicItemData_Access;
   end record;
   instance : InventorySearchUtil_Access;

   procedure Initialize (This : in out InventorySearchUtil'Class);
   function Create return InventorySearchUtil_Access;
   function getInstance return InventorySearchUtil_Access;
   function getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest : SearchRequest_Access) return BasicArrayList_Access;
   procedure getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest : SearchRequest_Access);
   function getNoResults (This : in out InventorySearchUtil; viewDocumentInterface : TransformDocumentInterface_Access; inventoryNode : Node_Access) return Unbounded_String;
   procedure getNoResults (This : in out InventorySearchUtil; viewDocumentInterface : TransformDocumentInterface_Access; inventoryNode : Node_Access);
   function search (This : in out InventorySearchUtil; abeClientInformation : AbeClientInformationInterface_Access; searchRequest : SearchRequest_Access; column : BasicArrayList_Access) return Unbounded_String_Array_Access;
   procedure search (This : in out InventorySearchUtil; abeClientInformation : AbeClientInformationInterface_Access; searchRequest : SearchRequest_Access; column : BasicArrayList_Access);

end views.generic_Id.inventory.InventorySearchUtil_Package;


