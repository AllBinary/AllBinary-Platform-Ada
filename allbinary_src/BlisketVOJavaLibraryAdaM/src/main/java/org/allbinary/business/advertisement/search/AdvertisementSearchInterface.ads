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
with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package; use org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package; use org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package; use org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package is

   package AdvertisementCategoryInterface_Package renames Standard.org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
   package AdvertisementWebsiteInterface_Package renames Standard.org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
   package PriceConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
   package TwoDimensionalConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

   type AdvertisementSearchInterface is interface;
   type AdvertisementSearchInterface_Access is access all AdvertisementSearchInterface'Class;
   type AdvertisementSearchInterface_Access_Array is array (Natural range <>) of AdvertisementSearchInterface_Access;
   type AdvertisementSearchInterface_Access_Array_Access is access all AdvertisementSearchInterface_Access_Array;
   function getWebSite (This : in out AdvertisementSearchInterface) return AdvertisementWebsiteInterface_Access is abstract;
   function getCategory (This : in out AdvertisementSearchInterface) return AdvertisementCategoryInterface_Access is abstract;
   function getSizeConstraints (This : in out AdvertisementSearchInterface) return TwoDimensionalConstraintInterface_Access is abstract;
   function getPricingConstraints (This : in out AdvertisementSearchInterface) return PriceConstraintInterface_Access is abstract;
   function getPageNumber (This : in out AdvertisementSearchInterface) return Integer is abstract;
   function getProductsPerPage (This : in out AdvertisementSearchInterface) return Integer is abstract;
   function getSearchParams (This : in out AdvertisementSearchInterface) return HashMap_Access is abstract;
   procedure setCategory (This : in out AdvertisementSearchInterface; advertisementCategoryInterface : AdvertisementCategoryInterface_Access) is abstract;
   procedure setSizeConstraints (This : in out AdvertisementSearchInterface; twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface_Access) is abstract;
   procedure setPricingConstraints (This : in out AdvertisementSearchInterface; priceConstraintInterface : PriceConstraintInterface_Access) is abstract;
   procedure setPageNumber (This : in out AdvertisementSearchInterface; pageNumber : Integer) is abstract;
   procedure setProductsPerPage (This : in out AdvertisementSearchInterface; productsPerPage : Integer) is abstract;
   procedure setSearchParams (This : in out AdvertisementSearchInterface; columnAndKeywordHashMap : HashMap_Access) is abstract;

end org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;


