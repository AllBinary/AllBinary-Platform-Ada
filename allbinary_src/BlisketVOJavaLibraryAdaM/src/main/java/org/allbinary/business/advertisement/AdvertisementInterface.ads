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
limited with org.allbinary.business.advertisement.AdvertisementInterface_Package;
package org.allbinary.business.advertisement.AdvertisementInterface_Package_References is
   type AdvertisementInterface_Access is access all org.allbinary.business.advertisement.AdvertisementInterface_Package.AdvertisementInterface'Class;
   type AdvertisementInterface_Access_Array is array (Natural range <>) of AdvertisementInterface_Access;
   type AdvertisementInterface_Access_Array_Access is access all AdvertisementInterface_Access_Array;
   type AdvertisementInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementInterface_Access_Array_Access;
   type AdvertisementInterface_Access_Array_Access_Array_Access is access all AdvertisementInterface_Access_Array_Access_Array;
   type AdvertisementInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementInterface_Access_Array_Object'Class then AdvertisementInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementInterface_Access_Array_Access_Array_Object'Class then AdvertisementInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.AdvertisementInterface_Package_References;

with org.allbinary.business.advertisement.AdvertisementInterface_Package_References;
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

package org.allbinary.business.advertisement.AdvertisementInterface_Package is

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


   type AdvertisementInterface is interface;
   subtype AdvertisementInterface_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access;
   function "=" (Left, Right : AdvertisementInterface_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array;
   function "=" (Left, Right : AdvertisementInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   function Java_Box (Value : AdvertisementInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementInterface_Access_Array_Access renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References.Java_Unbox_AdvertisementInterface_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   function Java_Box (Value : AdvertisementInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementInterface_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References.Java_Unbox_AdvertisementInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementInterface (Value : AdvertisementInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
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
   procedure setImage (This : in out AdvertisementInterface; AdvertisementImageInterface_Param : access AdvertisementImageInterface_Package.AdvertisementImageInterface'Class) is abstract;
   procedure setProduct (This : in out AdvertisementInterface; AdvertisementProductInterface_Param : access AdvertisementProductInterface_Package.AdvertisementProductInterface'Class) is abstract;
   procedure setThumbnail (This : in out AdvertisementInterface; AdvertisementThumbnailInterface_Param : access AdvertisementThumbnailInterface_Package.AdvertisementThumbnailInterface'Class) is abstract;

end org.allbinary.business.advertisement.AdvertisementInterface_Package;


