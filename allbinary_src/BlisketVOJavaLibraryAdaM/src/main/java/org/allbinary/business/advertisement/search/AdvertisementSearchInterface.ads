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

limited with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
package org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References is
   type AdvertisementSearchInterface_Access is access all org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class;
   type AdvertisementSearchInterface_Access_Array is array (Natural range <>) of AdvertisementSearchInterface_Access;
   type AdvertisementSearchInterface_Access_Array_Access is access all AdvertisementSearchInterface_Access_Array;
   type AdvertisementSearchInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementSearchInterface_Access_Array_Access;
   type AdvertisementSearchInterface_Access_Array_Access_Array_Access is access all AdvertisementSearchInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;

with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References;
limited with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References;
limited with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References;
limited with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;

package org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AdvertisementCategoryInterface_Package renames Standard.org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
   package AdvertisementWebsiteInterface_Package renames Standard.org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
   package PriceConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
   package Reference_Types is
   subtype AdvertisementCategoryInterface_Access is org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References.AdvertisementCategoryInterface_Access;
   use type AdvertisementCategoryInterface_Access;
   subtype AdvertisementCategoryInterface_Access_Array is org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References.AdvertisementCategoryInterface_Access_Array;
   use type AdvertisementCategoryInterface_Access_Array;
   subtype AdvertisementCategoryInterface_Access_Array_Access is org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References.AdvertisementCategoryInterface_Access_Array_Access;
   use type AdvertisementCategoryInterface_Access_Array_Access;
   subtype AdvertisementCategoryInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References.AdvertisementCategoryInterface_Access_Array_Access_Array;
   use type AdvertisementCategoryInterface_Access_Array_Access_Array;
   subtype AdvertisementCategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package_References.AdvertisementCategoryInterface_Access_Array_Access_Array_Access;
   use type AdvertisementCategoryInterface_Access_Array_Access_Array_Access;
   subtype AdvertisementWebsiteInterface_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access;
   use type AdvertisementWebsiteInterface_Access;
   subtype AdvertisementWebsiteInterface_Access_Array is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array;
   use type AdvertisementWebsiteInterface_Access_Array;
   subtype AdvertisementWebsiteInterface_Access_Array_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access;
   use type AdvertisementWebsiteInterface_Access_Array_Access;
   subtype AdvertisementWebsiteInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access_Array;
   use type AdvertisementWebsiteInterface_Access_Array_Access_Array;
   subtype AdvertisementWebsiteInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package_References.AdvertisementWebsiteInterface_Access_Array_Access_Array_Access;
   use type AdvertisementWebsiteInterface_Access_Array_Access_Array_Access;
   subtype PriceConstraintInterface_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access;
   use type PriceConstraintInterface_Access;
   subtype PriceConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array;
   use type PriceConstraintInterface_Access_Array;
   subtype PriceConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access;
   use type PriceConstraintInterface_Access_Array_Access;
   subtype PriceConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access_Array;
   use type PriceConstraintInterface_Access_Array_Access_Array;
   subtype PriceConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access_Array_Access;
   use type PriceConstraintInterface_Access_Array_Access_Array_Access;
   subtype TwoDimensionalConstraintInterface_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access;
   use type TwoDimensionalConstraintInterface_Access;
   subtype TwoDimensionalConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array;
   use type TwoDimensionalConstraintInterface_Access_Array;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access;
   use type TwoDimensionalConstraintInterface_Access_Array_Access;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   use type TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   use type TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvertisementSearchInterface is interface;
   subtype AdvertisementSearchInterface_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access;
   function "=" (Left, Right : AdvertisementSearchInterface_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References."=";
   subtype AdvertisementSearchInterface_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array;
   function "=" (Left, Right : AdvertisementSearchInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References."=";
   subtype AdvertisementSearchInterface_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementSearchInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References."=";
   subtype AdvertisementSearchInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementSearchInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References."=";
   subtype AdvertisementSearchInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementSearchInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementSearchInterface (Value : AdvertisementSearchInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getWebSite (This : in out AdvertisementSearchInterface) return AdvertisementWebsiteInterface_Access is abstract;
   function getCategory (This : in out AdvertisementSearchInterface) return AdvertisementCategoryInterface_Access is abstract;
   function getSizeConstraints (This : in out AdvertisementSearchInterface) return TwoDimensionalConstraintInterface_Access is abstract;
   function getPricingConstraints (This : in out AdvertisementSearchInterface) return PriceConstraintInterface_Access is abstract;
   function getPageNumber (This : in out AdvertisementSearchInterface) return Integer is abstract;
   function getProductsPerPage (This : in out AdvertisementSearchInterface) return Integer is abstract;
   function getSearchParams (This : in out AdvertisementSearchInterface) return HashMap_Access is abstract;
   procedure setCategory (This : in out AdvertisementSearchInterface; advertisementCategoryInterface_Param : access AdvertisementCategoryInterface_Package.AdvertisementCategoryInterface'Class) is abstract;
   procedure setSizeConstraints (This : in out AdvertisementSearchInterface; twoDimensionConstraintsInterface_Param : access TwoDimensionalConstraintInterface_Package.TwoDimensionalConstraintInterface'Class) is abstract;
   procedure setPricingConstraints (This : in out AdvertisementSearchInterface; priceConstraintInterface_Param : access PriceConstraintInterface_Package.PriceConstraintInterface'Class) is abstract;
   procedure setPageNumber (This : in out AdvertisementSearchInterface; pageNumber : Integer) is abstract;
   procedure setProductsPerPage (This : in out AdvertisementSearchInterface; productsPerPage : Integer) is abstract;
   procedure setSearchParams (This : in out AdvertisementSearchInterface; columnAndKeywordHashMap_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;


