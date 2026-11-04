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


with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package; use org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package; use org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package; use org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package body org.allbinary.business.advertisement.Advertisement_Package is

   subtype AdvertisementImageInterface_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access;
   function "=" (Left, Right : AdvertisementImageInterface_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References."=";
   subtype AdvertisementImageInterface_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array;
   function "=" (Left, Right : AdvertisementImageInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References."=";
   subtype AdvertisementImageInterface_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementImageInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References."=";
   subtype AdvertisementImageInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementImageInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References."=";
   subtype AdvertisementImageInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References.AdvertisementImageInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementImageInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementProductInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References.AdvertisementProductInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProductInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype AdvertisementThumbnailInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References.AdvertisementThumbnailInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementThumbnailInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package_References."=";
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   function "=" (Left, Right : Money_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   function "=" (Left, Right : Money_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   function "=" (Left, Right : Money_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   function "=" (Left, Right : Money_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Money_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   procedure Initialize_Fields (This : in out Advertisement'Class) is
   begin
      null;
      This.artist := Null_Unbounded_String;
      This.artistLink := Null_Unbounded_String;
      This.title := Null_Unbounded_String;
      This.dateAdded := Null_Unbounded_String;
      This.directory := Null_Unbounded_String;
      This.framedLink := Null_Unbounded_String;
      This.rank := 0;
      This.listPrice := null;
      This.ourPrice := null;
      This.image := null;
      This.product := null;
      This.thumbnail := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Advertisement'Class) is
   begin
      Initialize_Fields (This);
        This.displayInBrowserContraintsInterface := null;
   end Initialize;

   function Create return Advertisement_Access is
      This : constant Advertisement_Access := new Advertisement;
   begin
      Advertisement_Package.Initialize (This.all);
      return This;
   end Create;

   function getArtist (This : in out Advertisement) return Unbounded_String is
   begin
        return This.artist;
   end getArtist;

   procedure setArtist (This : in out Advertisement; artist : Unbounded_String) is
   begin
        This.artist := artist;
   end setArtist;

   function getArtistLink (This : in out Advertisement) return Unbounded_String is
   begin
        return This.artistLink;
   end getArtistLink;

   procedure setArtistLink (This : in out Advertisement; artistLink : Unbounded_String) is
   begin
        This.artistLink := artistLink;
   end setArtistLink;

   function getTitle (This : in out Advertisement) return Unbounded_String is
   begin
        return This.title;
   end getTitle;

   procedure setTitle (This : in out Advertisement; title : Unbounded_String) is
   begin
        This.title := title;
   end setTitle;

   function getDateAdded (This : in out Advertisement) return Unbounded_String is
   begin
        return This.dateAdded;
   end getDateAdded;

   procedure setDateAdded (This : in out Advertisement; dateAdded : Unbounded_String) is
   begin
        This.dateAdded := dateAdded;
   end setDateAdded;

   function getDirectory (This : in out Advertisement) return Unbounded_String is
   begin
        return This.directory;
   end getDirectory;

   procedure setDirectory (This : in out Advertisement; directory : Unbounded_String) is
   begin
        This.directory := directory;
   end setDirectory;

   function getFramedLink (This : in out Advertisement) return Unbounded_String is
   begin
        return This.framedLink;
   end getFramedLink;

   procedure setFramedLink (This : in out Advertisement; framedLink : Unbounded_String) is
   begin
        This.framedLink := framedLink;
   end setFramedLink;

   function getListPrice (This : in out Advertisement) return Money_Access is
   begin
        return This.listPrice;
   end getListPrice;

   procedure setListPrice (This : in out Advertisement; listPrice_Param : access Money_Package.Money'Class) is
      listPrice : constant Money_Access := Money_Access (listPrice_Param);
   begin
        This.listPrice := listPrice;
   end setListPrice;

   function getOurPrice (This : in out Advertisement) return Money_Access is
   begin
        return This.ourPrice;
   end getOurPrice;

   procedure setOurPrice (This : in out Advertisement; ourPrice_Param : access Money_Package.Money'Class) is
      ourPrice : constant Money_Access := Money_Access (ourPrice_Param);
   begin
        This.ourPrice := ourPrice;
   end setOurPrice;

   function getRank (This : in out Advertisement) return Integer is
   begin
        return This.rank;
   end getRank;

   procedure setRank (This : in out Advertisement; rank : Integer) is
   begin
        This.rank := rank;
   end setRank;

   function getImage (This : in out Advertisement) return AdvertisementImageInterface_Access is
   begin
        return This.image;
   end getImage;

   procedure setImage (This : in out Advertisement; image_Param : access AdvertisementImageInterface_Package.AdvertisementImageInterface'Class) is
      image : constant AdvertisementImageInterface_Access := AdvertisementImageInterface_Access (image_Param);
   begin
        This.image := image;
   end setImage;

   function getProduct (This : in out Advertisement) return AdvertisementProductInterface_Access is
   begin
        return This.product;
   end getProduct;

   procedure setProduct (This : in out Advertisement; product_Param : access AdvertisementProductInterface_Package.AdvertisementProductInterface'Class) is
      product : constant AdvertisementProductInterface_Access := AdvertisementProductInterface_Access (product_Param);
   begin
        This.product := product;
   end setProduct;

   function getThumbnail (This : in out Advertisement) return AdvertisementThumbnailInterface_Access is
   begin
        return This.thumbnail;
   end getThumbnail;

   procedure setThumbnail (This : in out Advertisement; thumbnail_Param : access AdvertisementThumbnailInterface_Package.AdvertisementThumbnailInterface'Class) is
      thumbnail : constant AdvertisementThumbnailInterface_Access := AdvertisementThumbnailInterface_Access (thumbnail_Param);
   begin
        This.thumbnail := thumbnail;
   end setThumbnail;

   function getDisplayInBrowserContraintsInterface (This : in out Advertisement) return DisplayInBrowserContraintsInterface_Access is
   begin
        return This.displayInBrowserContraintsInterface;
   end getDisplayInBrowserContraintsInterface;

end org.allbinary.business.advertisement.Advertisement_Package;


