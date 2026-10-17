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
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;

package org.allbinary.business.advertisement.Advertisement_Package is

   package AdvertisementImageInterface_Package renames Standard.org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
   package AdvertisementProductInterface_Package renames Standard.org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
   package AdvertisementThumbnailInterface_Package renames Standard.org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;

   type Advertisement is tagged;
   type Advertisement_Access is access all Advertisement'Class;
   type Advertisement_Access_Array is array (Natural range <>) of Advertisement_Access;
   type Advertisement_Access_Array_Access is access all Advertisement_Access_Array;

   type Advertisement is new AdvertisementInterface with record
      artist : Unbounded_String;
      artistLink : Unbounded_String;
      title : Unbounded_String;
      dateAdded : Unbounded_String;
      directory : Unbounded_String;
      framedLink : Unbounded_String;
      rank : Integer;
      listPrice : Money_Access;
      ourPrice : Money_Access;
      image : AdvertisementImageInterface_Access;
      product : AdvertisementProductInterface_Access;
      thumbnail : AdvertisementThumbnailInterface_Access;
      displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface_Access;
   end record;

   procedure Initialize (This : in out Advertisement'Class);
   function Create return Advertisement_Access;
   function getArtist (This : in out Advertisement) return Unbounded_String;
   procedure setArtist (This : in out Advertisement; artist : Unbounded_String);
   function getArtistLink (This : in out Advertisement) return Unbounded_String;
   procedure setArtistLink (This : in out Advertisement; artistLink : Unbounded_String);
   function getTitle (This : in out Advertisement) return Unbounded_String;
   procedure setTitle (This : in out Advertisement; title : Unbounded_String);
   function getDateAdded (This : in out Advertisement) return Unbounded_String;
   procedure setDateAdded (This : in out Advertisement; dateAdded : Unbounded_String);
   function getDirectory (This : in out Advertisement) return Unbounded_String;
   procedure setDirectory (This : in out Advertisement; directory : Unbounded_String);
   function getFramedLink (This : in out Advertisement) return Unbounded_String;
   procedure setFramedLink (This : in out Advertisement; framedLink : Unbounded_String);
   function getListPrice (This : in out Advertisement) return Money_Access;
   procedure setListPrice (This : in out Advertisement; listPrice : Money_Access);
   function getOurPrice (This : in out Advertisement) return Money_Access;
   procedure setOurPrice (This : in out Advertisement; ourPrice : Money_Access);
   function getRank (This : in out Advertisement) return Integer;
   procedure setRank (This : in out Advertisement; rank : Integer);
   function getImage (This : in out Advertisement) return AdvertisementImageInterface_Access;
   procedure setImage (This : in out Advertisement; image : AdvertisementImageInterface_Access);
   function getProduct (This : in out Advertisement) return AdvertisementProductInterface_Access;
   procedure setProduct (This : in out Advertisement; product : AdvertisementProductInterface_Access);
   function getThumbnail (This : in out Advertisement) return AdvertisementThumbnailInterface_Access;
   procedure setThumbnail (This : in out Advertisement; thumbnail : AdvertisementThumbnailInterface_Access);
   function getDisplayInBrowserContraintsInterface (This : in out Advertisement) return DisplayInBrowserContraintsInterface_Access;

end org.allbinary.business.advertisement.Advertisement_Package;


