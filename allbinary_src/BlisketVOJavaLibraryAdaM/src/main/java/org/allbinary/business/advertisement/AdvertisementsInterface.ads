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

package org.allbinary.business.advertisement.AdvertisementsInterface_Package is


   type AdvertisementsInterface is interface;
   type AdvertisementsInterface_Access is access all AdvertisementsInterface'Class;
   type AdvertisementsInterface_Access_Array is array (Natural range <>) of AdvertisementsInterface_Access;
   type AdvertisementsInterface_Access_Array_Access is access all AdvertisementsInterface_Access_Array;
   procedure add (This : in out AdvertisementsInterface; advertisementInterface : AdvertisementInterface_Access) is abstract;
   function get (This : in out AdvertisementsInterface; index : Integer) return AdvertisementInterface_Access is abstract;
   function getCurrentPageNum (This : in out AdvertisementsInterface) return Integer is abstract;
   function getErrorDescription (This : in out AdvertisementsInterface) return Unbounded_String is abstract;
   function getErrorNum (This : in out AdvertisementsInterface) return Unbounded_String is abstract;
   function getNumberOfPosters (This : in out AdvertisementsInterface) return Integer is abstract;
   function getNumberOfProductsInPage (This : in out AdvertisementsInterface) return Integer is abstract;
   function getStatusCode (This : in out AdvertisementsInterface) return Integer is abstract;
   function getTotalNumberOfProducts (This : in out AdvertisementsInterface) return Integer is abstract;
   function isSearchValid (This : in out AdvertisementsInterface) return Boolean is abstract;
   procedure setCurrentPageNum (This : in out AdvertisementsInterface; currentPageNum : Integer) is abstract;
   procedure setErrorDescription (This : in out AdvertisementsInterface; errorDescription : Unbounded_String) is abstract;
   procedure setErrorNum (This : in out AdvertisementsInterface; errorNum : Unbounded_String) is abstract;
   procedure setNumberOfProductsInPage (This : in out AdvertisementsInterface; numberOfProductsInPage : Integer) is abstract;
   procedure setStatusCode (This : in out AdvertisementsInterface; statusCode : Integer) is abstract;
   procedure setTotalNumberOfProducts (This : in out AdvertisementsInterface; totalNumberOfProducts : Integer) is abstract;
   function toString (This : in out AdvertisementsInterface) return Unbounded_String is abstract;

end org.allbinary.business.advertisement.AdvertisementsInterface_Package;


