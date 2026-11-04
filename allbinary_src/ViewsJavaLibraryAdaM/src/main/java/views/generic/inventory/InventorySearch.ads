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

limited with views.generic_Id.inventory.InventorySearch_Package;
package views.generic_Id.inventory.InventorySearch_Package_References is
   type InventorySearch_Access is access all views.generic_Id.inventory.InventorySearch_Package.InventorySearch'Class;
   type InventorySearch_Access_Array is array (Natural range <>) of InventorySearch_Access;
   type InventorySearch_Access_Array_Access is access all InventorySearch_Access_Array;
   type InventorySearch_Access_Array_Access_Array is array (Natural range <>) of InventorySearch_Access_Array_Access;
   type InventorySearch_Access_Array_Access_Array_Access is access all InventorySearch_Access_Array_Access_Array;
end views.generic_Id.inventory.InventorySearch_Package_References;

with views.generic_Id.inventory.InventorySearch_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package; use views.admin.inventory.listings.InventoryViewSearchInterface_Package;

package views.generic_Id.inventory.InventorySearch_Package is

   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package InventoryViewSearchInterface_Package renames Standard.views.admin.inventory.listings.InventoryViewSearchInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype InventorySearch_Access is views.generic_Id.inventory.InventorySearch_Package_References.InventorySearch_Access;
   function "=" (Left, Right : InventorySearch_Access) return Boolean renames views.generic_Id.inventory.InventorySearch_Package_References."=";
   subtype InventorySearch_Access_Array is views.generic_Id.inventory.InventorySearch_Package_References.InventorySearch_Access_Array;
   function "=" (Left, Right : InventorySearch_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearch_Package_References."=";
   subtype InventorySearch_Access_Array_Access is views.generic_Id.inventory.InventorySearch_Package_References.InventorySearch_Access_Array_Access;
   function "=" (Left, Right : InventorySearch_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearch_Package_References."=";
   subtype InventorySearch_Access_Array_Access_Array is views.generic_Id.inventory.InventorySearch_Package_References.InventorySearch_Access_Array_Access_Array;
   function "=" (Left, Right : InventorySearch_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearch_Package_References."=";
   subtype InventorySearch_Access_Array_Access_Array_Access is views.generic_Id.inventory.InventorySearch_Package_References.InventorySearch_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventorySearch_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearch_Package_References."=";

   type InventorySearch is new Java_Object and InventoryViewSearchInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      basicItemData : BasicItemData_Access;
      searchRequest : SearchRequest_Access;
   end record;

   procedure Initialize (This : in out InventorySearch'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventorySearch_Access;
   function searchSingleStaticPage (This : in out InventorySearch) return Unbounded_String;
   function searchSingleDynamicPage (This : in out InventorySearch) return Unbounded_String;
   function search (This : in out InventorySearch) return Unbounded_String_Array_Access;
   function getProduct (This : in out InventorySearch; product : Unbounded_String) return Unbounded_String;
   procedure getProduct (This : in out InventorySearch; product : Unbounded_String);

end views.generic_Id.inventory.InventorySearch_Package;


