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

limited with views.generic_Id.inventory.InventorySearchUtil_Package;
package views.generic_Id.inventory.InventorySearchUtil_Package_References is
   type InventorySearchUtil_Access is access all views.generic_Id.inventory.InventorySearchUtil_Package.InventorySearchUtil'Class;
   type InventorySearchUtil_Access_Array is array (Natural range <>) of InventorySearchUtil_Access;
   type InventorySearchUtil_Access_Array_Access is access all InventorySearchUtil_Access_Array;
   type InventorySearchUtil_Access_Array_Access_Array is array (Natural range <>) of InventorySearchUtil_Access_Array_Access;
   type InventorySearchUtil_Access_Array_Access_Array_Access is access all InventorySearchUtil_Access_Array_Access_Array;
end views.generic_Id.inventory.InventorySearchUtil_Package_References;

with views.generic_Id.inventory.InventorySearchUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
limited with org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

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
   package Reference_Types is
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   subtype CommonPhoneStrings_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access;
   use type CommonPhoneStrings_Access;
   subtype CommonPhoneStrings_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array;
   use type CommonPhoneStrings_Access_Array;
   subtype CommonPhoneStrings_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access;
   use type CommonPhoneStrings_Access_Array_Access;
   subtype CommonPhoneStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array;
   use type CommonPhoneStrings_Access_Array_Access_Array;
   subtype CommonPhoneStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array_Access;
   use type CommonPhoneStrings_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventorySearchUtil_Access is views.generic_Id.inventory.InventorySearchUtil_Package_References.InventorySearchUtil_Access;
   function "=" (Left, Right : InventorySearchUtil_Access) return Boolean renames views.generic_Id.inventory.InventorySearchUtil_Package_References."=";
   subtype InventorySearchUtil_Access_Array is views.generic_Id.inventory.InventorySearchUtil_Package_References.InventorySearchUtil_Access_Array;
   function "=" (Left, Right : InventorySearchUtil_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchUtil_Package_References."=";
   subtype InventorySearchUtil_Access_Array_Access is views.generic_Id.inventory.InventorySearchUtil_Package_References.InventorySearchUtil_Access_Array_Access;
   function "=" (Left, Right : InventorySearchUtil_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchUtil_Package_References."=";
   subtype InventorySearchUtil_Access_Array_Access_Array is views.generic_Id.inventory.InventorySearchUtil_Package_References.InventorySearchUtil_Access_Array_Access_Array;
   function "=" (Left, Right : InventorySearchUtil_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchUtil_Package_References."=";
   subtype InventorySearchUtil_Access_Array_Access_Array_Access is views.generic_Id.inventory.InventorySearchUtil_Package_References.InventorySearchUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventorySearchUtil_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchUtil_Package_References."=";

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


