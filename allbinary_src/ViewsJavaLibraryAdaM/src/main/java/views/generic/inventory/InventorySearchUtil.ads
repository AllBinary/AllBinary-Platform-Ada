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
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package views.generic_Id.inventory.InventorySearchUtil_Package is

   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type InventorySearchUtil is tagged;
   type InventorySearchUtil_Access is access all InventorySearchUtil'Class;
   type InventorySearchUtil_Access_Array is array (Natural range <>) of InventorySearchUtil_Access;
   type InventorySearchUtil_Access_Array_Access is access all InventorySearchUtil_Access_Array;
   type InventorySearchUtil_Access_Array_Access_Array is array (Natural range <>) of InventorySearchUtil_Access_Array_Access;
   type InventorySearchUtil_Access_Array_Access_Array_Access is access all InventorySearchUtil_Access_Array_Access_Array;

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
   function getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return BasicArrayList_Access;
   procedure getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function getNoResults (This : in out InventorySearchUtil; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class; inventoryNode_Param : access Node_Package.Node'Class) return Unbounded_String;
   procedure getNoResults (This : in out InventorySearchUtil; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class; inventoryNode_Param : access Node_Package.Node'Class);
   function search (This : in out InventorySearchUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; column_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String_Array_Access;
   procedure search (This : in out InventorySearchUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; column_Param : access BasicArrayList_Package.BasicArrayList'Class);

end views.generic_Id.inventory.InventorySearchUtil_Package;


