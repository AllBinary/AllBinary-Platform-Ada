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

with AllBinary_Java;
limited with org.allbinary.business.advertisement.Advertisement_Package;
package org.allbinary.business.advertisement.Advertisement_Package_References is
   type Advertisement_Access is access all org.allbinary.business.advertisement.Advertisement_Package.Advertisement'Class;
   type Advertisement_Access_Array is array (Natural range <>) of Advertisement_Access;
   type Advertisement_Access_Array_Access is access all Advertisement_Access_Array;
   type Advertisement_Access_Array_Access_Array is array (Natural range <>) of Advertisement_Access_Array_Access;
   type Advertisement_Access_Array_Access_Array_Access is access all Advertisement_Access_Array_Access_Array;
   type Advertisement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Advertisement_Access_Array_Access;
   end record;
   function Java_Box (Value : Advertisement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Advertisement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Advertisement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Advertisement_Access_Array_Access is (if Value /= null and then Value.all in Advertisement_Access_Array_Object'Class then Advertisement_Access_Array_Object'Class (Value.all).Value else null);
   type Advertisement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Advertisement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Advertisement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Advertisement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Advertisement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Advertisement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Advertisement_Access_Array_Access_Array_Object'Class then Advertisement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.Advertisement_Package_References;

with org.allbinary.business.advertisement.Advertisement_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References;
limited with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References;
limited with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
limited with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;

package org.allbinary.business.advertisement.Advertisement_Package is

   package AdvertisementImageInterface_Package renames Standard.org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
   package AdvertisementProductInterface_Package renames Standard.org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
   package AdvertisementThumbnailInterface_Package renames Standard.org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package DisplayInBrowserContraintsInterface_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
   package Reference_Types is
   subtype AdvertisementImageInterface_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access;
   use type AdvertisementImageInterface_Access;
   subtype AdvertisementImageInterface_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array;
   use type AdvertisementImageInterface_Access_Array;
   subtype AdvertisementImageInterface_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access;
   use type AdvertisementImageInterface_Access_Array_Access;
   subtype AdvertisementImageInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access_Array;
   use type AdvertisementImageInterface_Access_Array_Access_Array;
   subtype AdvertisementImageInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access_Array_Access;
   use type AdvertisementImageInterface_Access_Array_Access_Array_Access;
   subtype AdvertisementProductInterface_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access;
   use type AdvertisementProductInterface_Access;
   subtype AdvertisementProductInterface_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array;
   use type AdvertisementProductInterface_Access_Array;
   subtype AdvertisementProductInterface_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access;
   use type AdvertisementProductInterface_Access_Array_Access;
   subtype AdvertisementProductInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array;
   use type AdvertisementProductInterface_Access_Array_Access_Array;
   subtype AdvertisementProductInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array_Access;
   use type AdvertisementProductInterface_Access_Array_Access_Array_Access;
   subtype AdvertisementThumbnailInterface_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access;
   use type AdvertisementThumbnailInterface_Access;
   subtype AdvertisementThumbnailInterface_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array;
   use type AdvertisementThumbnailInterface_Access_Array;
   subtype AdvertisementThumbnailInterface_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access;
   use type AdvertisementThumbnailInterface_Access_Array_Access;
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array;
   use type AdvertisementThumbnailInterface_Access_Array_Access_Array;
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array_Access;
   use type AdvertisementThumbnailInterface_Access_Array_Access_Array_Access;
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   subtype DisplayInBrowserContraintsInterface_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access;
   use type DisplayInBrowserContraintsInterface_Access;
   subtype DisplayInBrowserContraintsInterface_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array;
   use type DisplayInBrowserContraintsInterface_Access_Array;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   use type DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Advertisement_Access is org.allbinary.business.advertisement.Advertisement_Package_References.Advertisement_Access;
   function "=" (Left, Right : Advertisement_Access) return Boolean renames org.allbinary.business.advertisement.Advertisement_Package_References."=";
   subtype Advertisement_Access_Array is org.allbinary.business.advertisement.Advertisement_Package_References.Advertisement_Access_Array;
   function "=" (Left, Right : Advertisement_Access_Array) return Boolean renames org.allbinary.business.advertisement.Advertisement_Package_References."=";
   subtype Advertisement_Access_Array_Access is org.allbinary.business.advertisement.Advertisement_Package_References.Advertisement_Access_Array_Access;
   function "=" (Left, Right : Advertisement_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.Advertisement_Package_References."=";
   function Java_Box (Value : Advertisement_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.Advertisement_Package_References.Java_Box;
   function Java_Unbox_Advertisement_Access_Array (Value : access Java_Object'Class) return Advertisement_Access_Array_Access renames org.allbinary.business.advertisement.Advertisement_Package_References.Java_Unbox_Advertisement_Access_Array;
   subtype Advertisement_Access_Array_Access_Array is org.allbinary.business.advertisement.Advertisement_Package_References.Advertisement_Access_Array_Access_Array;
   function "=" (Left, Right : Advertisement_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.Advertisement_Package_References."=";
   subtype Advertisement_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.Advertisement_Package_References.Advertisement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Advertisement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.Advertisement_Package_References."=";
   function Java_Box (Value : Advertisement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.Advertisement_Package_References.Java_Box;
   function Java_Unbox_Advertisement_Access_Array_Access_Array (Value : access Java_Object'Class) return Advertisement_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.Advertisement_Package_References.Java_Unbox_Advertisement_Access_Array_Access_Array;

   type Advertisement is new Java_Object and AdvertisementInterface with record
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
   procedure setListPrice (This : in out Advertisement; listPrice_Param : access Money_Package.Money'Class);
   function getOurPrice (This : in out Advertisement) return Money_Access;
   procedure setOurPrice (This : in out Advertisement; ourPrice_Param : access Money_Package.Money'Class);
   function getRank (This : in out Advertisement) return Integer;
   procedure setRank (This : in out Advertisement; rank : Integer);
   function getImage (This : in out Advertisement) return AdvertisementImageInterface_Access;
   procedure setImage (This : in out Advertisement; image_Param : access AdvertisementImageInterface_Package.AdvertisementImageInterface'Class);
   function getProduct (This : in out Advertisement) return AdvertisementProductInterface_Access;
   procedure setProduct (This : in out Advertisement; product_Param : access AdvertisementProductInterface_Package.AdvertisementProductInterface'Class);
   function getThumbnail (This : in out Advertisement) return AdvertisementThumbnailInterface_Access;
   procedure setThumbnail (This : in out Advertisement; thumbnail_Param : access AdvertisementThumbnailInterface_Package.AdvertisementThumbnailInterface'Class);
   function getDisplayInBrowserContraintsInterface (This : in out Advertisement) return DisplayInBrowserContraintsInterface_Access;

end org.allbinary.business.advertisement.Advertisement_Package;


