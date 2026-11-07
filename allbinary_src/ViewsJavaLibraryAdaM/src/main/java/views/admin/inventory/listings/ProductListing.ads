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

limited with views.admin.inventory.listings.ProductListing_Package;
package views.admin.inventory.listings.ProductListing_Package_References is
   type ProductListing_Access is access all views.admin.inventory.listings.ProductListing_Package.ProductListing'Class;
   type ProductListing_Access_Array is array (Natural range <>) of ProductListing_Access;
   type ProductListing_Access_Array_Access is access all ProductListing_Access_Array;
   type ProductListing_Access_Array_Access_Array is array (Natural range <>) of ProductListing_Access_Array_Access;
   type ProductListing_Access_Array_Access_Array_Access is access all ProductListing_Access_Array_Access_Array;
end views.admin.inventory.listings.ProductListing_Package_References;

with views.admin.inventory.listings.ProductListing_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References;
limited with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References;
limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with views.admin.inventory.listings.ProductListingInterface_Package; use views.admin.inventory.listings.ProductListingInterface_Package;

package views.admin.inventory.listings.ProductListing_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package StoreFrontsEntity_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
   package StaticPagesEntity_Package renames Standard.org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
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
   subtype StoreFrontsEntity_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access;
   use type StoreFrontsEntity_Access;
   subtype StoreFrontsEntity_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array;
   use type StoreFrontsEntity_Access_Array;
   subtype StoreFrontsEntity_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access;
   use type StoreFrontsEntity_Access_Array_Access;
   subtype StoreFrontsEntity_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array;
   use type StoreFrontsEntity_Access_Array_Access_Array;
   subtype StoreFrontsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array_Access;
   use type StoreFrontsEntity_Access_Array_Access_Array_Access;
   subtype StaticPagesEntity_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access;
   use type StaticPagesEntity_Access;
   subtype StaticPagesEntity_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array;
   use type StaticPagesEntity_Access_Array;
   subtype StaticPagesEntity_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access;
   use type StaticPagesEntity_Access_Array_Access;
   subtype StaticPagesEntity_Access_Array_Access_Array is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array;
   use type StaticPagesEntity_Access_Array_Access_Array;
   subtype StaticPagesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.staticpages.StaticPagesEntity_Package_References.StaticPagesEntity_Access_Array_Access_Array_Access;
   use type StaticPagesEntity_Access_Array_Access_Array_Access;
   subtype InventoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access;
   use type InventoryEntity_Access;
   subtype InventoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array;
   use type InventoryEntity_Access_Array;
   subtype InventoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access;
   subtype InventoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array;
   use type InventoryEntity_Access_Array_Access_Array;
   subtype InventoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package_References.InventoryEntity_Access_Array_Access_Array_Access;
   use type InventoryEntity_Access_Array_Access_Array_Access;
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
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ProductListing_Access is views.admin.inventory.listings.ProductListing_Package_References.ProductListing_Access;
   function "=" (Left, Right : ProductListing_Access) return Boolean renames views.admin.inventory.listings.ProductListing_Package_References."=";
   subtype ProductListing_Access_Array is views.admin.inventory.listings.ProductListing_Package_References.ProductListing_Access_Array;
   function "=" (Left, Right : ProductListing_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListing_Package_References."=";
   subtype ProductListing_Access_Array_Access is views.admin.inventory.listings.ProductListing_Package_References.ProductListing_Access_Array_Access;
   function "=" (Left, Right : ProductListing_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListing_Package_References."=";
   subtype ProductListing_Access_Array_Access_Array is views.admin.inventory.listings.ProductListing_Package_References.ProductListing_Access_Array_Access_Array;
   function "=" (Left, Right : ProductListing_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListing_Package_References."=";
   subtype ProductListing_Access_Array_Access_Array_Access is views.admin.inventory.listings.ProductListing_Package_References.ProductListing_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProductListing_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListing_Package_References."=";

   type ProductListing is new Java_Object and ProductListingInterface with record
      logUtil : LogUtil_Access;
      directory : Directory_Access;
      basicItemData : BasicItemData_Access;
      storeFronts : StoreFrontsEntity_Access;
      staticPages : StaticPagesEntity_Access;
      inventory_Case : InventoryEntity_Access;
      searchRequest : SearchRequest_Access;
      INVENTORY : Unbounded_String;
   end record;

   procedure Initialize (This : in out ProductListing'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return ProductListing_Access;
   function getHashSet (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return HashSet_Access;
   procedure getHashSet (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   procedure savePage (This : in out ProductListing; file : Unbounded_String; data : Unbounded_String);
   procedure create (This : in out ProductListing; keywordData : Unbounded_String; keywordFilenameHashMap_Param : access HashMap_Package.HashMap'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; staticPath_Param : access AbPath_Package.AbPath'Class);
   procedure addStaticPageInfoToDatabase (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; keywordFilenameHashMap_Param : access HashMap_Package.HashMap'Class);
   function generateAll (This : in out ProductListing) return Unbounded_String;
   function generateAll (This : in out ProductListing; storeName_Param : Unbounded_String) return Unbounded_String;
   procedure generateAll (This : in out ProductListing; storeName_Param : Unbounded_String);

end views.admin.inventory.listings.ProductListing_Package;


