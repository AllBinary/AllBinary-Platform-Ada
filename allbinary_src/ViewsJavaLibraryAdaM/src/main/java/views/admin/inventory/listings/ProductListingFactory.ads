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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with views.admin.inventory.listings.ProductListingInterface_Package; use views.admin.inventory.listings.ProductListingInterface_Package;

package views.admin.inventory.listings.ProductListingFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ProductListingFactory is tagged;
   type ProductListingFactory_Access is access all ProductListingFactory'Class;
   type ProductListingFactory_Access_Array is array (Natural range <>) of ProductListingFactory_Access;
   type ProductListingFactory_Access_Array_Access is access all ProductListingFactory_Access_Array;

   type ProductListingFactory is new Java_Object with null record;

   procedure Initialize (This : in out ProductListingFactory'Class);
   function Create return ProductListingFactory_Access;
   function getInstance (searchRequest_Param : access SearchRequest'Class) return ProductListingInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest'Class);

end views.admin.inventory.listings.ProductListingFactory_Package;


