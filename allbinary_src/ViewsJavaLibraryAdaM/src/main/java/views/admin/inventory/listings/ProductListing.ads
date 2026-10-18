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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntity_Package; use org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
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

   type ProductListing is tagged;
   type ProductListing_Access is access all ProductListing'Class;
   type ProductListing_Access_Array is array (Natural range <>) of ProductListing_Access;
   type ProductListing_Access_Array_Access is access all ProductListing_Access_Array;
   type ProductListing_Access_Array_Access_Array is array (Natural range <>) of ProductListing_Access_Array_Access;
   type ProductListing_Access_Array_Access_Array_Access is access all ProductListing_Access_Array_Access_Array;

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


