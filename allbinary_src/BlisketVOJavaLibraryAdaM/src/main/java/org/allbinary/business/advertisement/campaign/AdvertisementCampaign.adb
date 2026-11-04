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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package; use org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package; use org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.product.AdvertisementProductInterface_Package;
with org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface_Package;
with org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package body org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
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
   procedure Initialize_Fields (This : in out AdvertisementCampaign'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaign'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.hashMap := hashMap;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementCampaign_Access is
      This : constant AdvertisementCampaign_Access := new AdvertisementCampaign;
   begin
      AdvertisementCampaign_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getComponent (This : in out AdvertisementCampaign) return Java_Object_Access is
   begin
        return null;
   end getComponent;

   function getName (This : in out AdvertisementCampaign) return Unbounded_String is
   begin
        return Java_Unbox (This.hashMap.get (AdvertisementCampaignData_Package.getInstance.NAME));
   end getName;

   procedure setComponentName (This : in out AdvertisementCampaign; name : Unbounded_String) is
   begin
        This.hashMap.put (DynamicObjectData_Package.NAME, Java_Box (name));
   end setComponentName;

   procedure setName (This : in out AdvertisementCampaign; name : Unbounded_String) is
   begin
        This.hashMap.put (AdvertisementCampaignData_Package.getInstance.NAME, Java_Box (name));
   end setName;

   function search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access is
      advertisementSearchInterface : constant AdvertisementSearchInterface_Access := AdvertisementSearchInterface_Access (advertisementSearchInterface_Param);
   begin
        return null;
   end search;

   procedure search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) is
      Java_Result : constant AdvertisementsInterface_Access := AdvertisementCampaign'Class (This).search (advertisementSearchInterface_Param => advertisementSearchInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;


