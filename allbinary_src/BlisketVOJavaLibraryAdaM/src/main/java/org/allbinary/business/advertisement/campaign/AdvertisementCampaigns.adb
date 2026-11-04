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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package; use org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package; use org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package; use org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package body org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package is

   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AdvertisementInterface_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access;
   function "=" (Left, Right : AdvertisementInterface_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array;
   function "=" (Left, Right : AdvertisementInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementInterface_Package_References."=";
   subtype AdvertisementsInterface_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out AdvertisementCampaigns'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaigns'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
   begin
      Initialize_Fields (This);
        This.advertisementsVector := This.advertisementsVector;
   end Initialize;

   function Create (vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return AdvertisementCampaigns_Access is
      This : constant AdvertisementCampaigns_Access := new AdvertisementCampaigns;
   begin
      AdvertisementCampaigns_Package.Initialize (This.all, vector_Param);
      return This;
   end Create;

   procedure add (This : in out AdvertisementCampaigns; advertisementInterface_Param : access AdvertisementInterface_Package.AdvertisementInterface'Class) is
      advertisementInterface : constant AdvertisementInterface_Access := AdvertisementInterface_Access (advertisementInterface_Param);
   begin
        This.advertisementsVector.add (AdvertisementInterface_Package.Java_Object_Access_From_AdvertisementInterface (advertisementInterface));
   end add;

   function get (This : in out AdvertisementCampaigns; index : Integer) return AdvertisementInterface_Access is
   begin
        return AdvertisementInterface_Access (This.advertisementsVector.get (index));
   end get;

   function size (This : in out AdvertisementCampaigns) return Integer is
   begin
        return This.advertisementsVector.size;
   end size;

   function isEnabled (This : in out AdvertisementCampaigns) return Boolean is
   begin
        return True;
   end isEnabled;

   function search (This : in out AdvertisementCampaigns; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access is
      advertisementSearchInterface : constant AdvertisementSearchInterface_Access := AdvertisementSearchInterface_Access (advertisementSearchInterface_Param);
   begin
        return null;
   end search;

   procedure get (This : in out AdvertisementCampaigns; index : Integer) is
      Java_Result : constant AdvertisementInterface_Access := AdvertisementCampaigns'Class (This).get (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure search (This : in out AdvertisementCampaigns; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) is
      Java_Result : constant AdvertisementsInterface_Access := AdvertisementCampaigns'Class (This).search (advertisementSearchInterface_Param => advertisementSearchInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;


