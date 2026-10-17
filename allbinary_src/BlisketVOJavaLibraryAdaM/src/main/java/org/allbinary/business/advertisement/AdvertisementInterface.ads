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
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package; use org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package; use org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package; use org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;

package org.allbinary.business.advertisement.AdvertisementInterface_Package is

   package AdvertisementImageInterface_Package renames Standard.org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
   package AdvertisementProductInterface_Package renames Standard.org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
   package AdvertisementThumbnailInterface_Package renames Standard.org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;

   type AdvertisementInterface is interface;
   type AdvertisementInterface_Access is access all AdvertisementInterface'Class;
   type AdvertisementInterface_Access_Array is array (Natural range <>) of AdvertisementInterface_Access;
   type AdvertisementInterface_Access_Array_Access is access all AdvertisementInterface_Access_Array;
   function getArtist (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getArtistLink (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getTitle (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getDateAdded (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getDirectory (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getFramedLink (This : in out AdvertisementInterface) return Unbounded_String is abstract;
   function getListPrice (This : in out AdvertisementInterface) return Money_Access is abstract;
   function getOurPrice (This : in out AdvertisementInterface) return Money_Access is abstract;
   function getRank (This : in out AdvertisementInterface) return Integer is abstract;
   function getImage (This : in out AdvertisementInterface) return AdvertisementImageInterface_Access is abstract;
   function getProduct (This : in out AdvertisementInterface) return AdvertisementProductInterface_Access is abstract;
   function getThumbnail (This : in out AdvertisementInterface) return AdvertisementThumbnailInterface_Access is abstract;
   function getDisplayInBrowserContraintsInterface (This : in out AdvertisementInterface) return DisplayInBrowserContraintsInterface_Access is abstract;
   procedure setArtist (This : in out AdvertisementInterface; artist : Unbounded_String) is abstract;
   procedure setArtistLink (This : in out AdvertisementInterface; artistLink : Unbounded_String) is abstract;
   procedure setTitle (This : in out AdvertisementInterface; title : Unbounded_String) is abstract;
   procedure setDateAdded (This : in out AdvertisementInterface; dateAdded : Unbounded_String) is abstract;
   procedure setDirectory (This : in out AdvertisementInterface; directory : Unbounded_String) is abstract;
   procedure setFramedLink (This : in out AdvertisementInterface; framedLink : Unbounded_String) is abstract;
   procedure setRank (This : in out AdvertisementInterface; rank : Integer) is abstract;
   procedure setImage (This : in out AdvertisementInterface; AdvertisementImageInterface : AdvertisementImageInterface_Access) is abstract;
   procedure setProduct (This : in out AdvertisementInterface; AdvertisementProductInterface : AdvertisementProductInterface_Access) is abstract;
   procedure setThumbnail (This : in out AdvertisementInterface; AdvertisementThumbnailInterface : AdvertisementThumbnailInterface_Access) is abstract;

end org.allbinary.business.advertisement.AdvertisementInterface_Package;


