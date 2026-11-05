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

limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
package org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References is
   type AdvertisementCampaignInterface_Access is access all org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package.AdvertisementCampaignInterface'Class;
   type AdvertisementCampaignInterface_Access_Array is array (Natural range <>) of AdvertisementCampaignInterface_Access;
   type AdvertisementCampaignInterface_Access_Array_Access is access all AdvertisementCampaignInterface_Access_Array;
   type AdvertisementCampaignInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignInterface_Access_Array_Access;
   type AdvertisementCampaignInterface_Access_Array_Access_Array_Access is access all AdvertisementCampaignInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References;

with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;
limited with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package is

   package AdvertisementsInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementsInterface_Package;
   package AdvertisementSearchInterface_Package renames Standard.org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
   package Reference_Types is
   subtype AdvertisementsInterface_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access;
   use type AdvertisementsInterface_Access;
   subtype AdvertisementsInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array;
   use type AdvertisementsInterface_Access_Array;
   subtype AdvertisementsInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access;
   use type AdvertisementsInterface_Access_Array_Access;
   subtype AdvertisementsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array;
   use type AdvertisementsInterface_Access_Array_Access_Array;
   subtype AdvertisementsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array_Access;
   use type AdvertisementsInterface_Access_Array_Access_Array_Access;
   subtype AdvertisementSearchInterface_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access;
   use type AdvertisementSearchInterface_Access;
   subtype AdvertisementSearchInterface_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array;
   use type AdvertisementSearchInterface_Access_Array;
   subtype AdvertisementSearchInterface_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access;
   use type AdvertisementSearchInterface_Access_Array_Access;
   subtype AdvertisementSearchInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access_Array;
   use type AdvertisementSearchInterface_Access_Array_Access_Array;
   subtype AdvertisementSearchInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References.AdvertisementSearchInterface_Access_Array_Access_Array_Access;
   use type AdvertisementSearchInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvertisementCampaignInterface is interface;
   subtype AdvertisementCampaignInterface_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access;
   function "=" (Left, Right : AdvertisementCampaignInterface_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References."=";
   subtype AdvertisementCampaignInterface_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References."=";
   subtype AdvertisementCampaignInterface_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References."=";
   subtype AdvertisementCampaignInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References."=";
   subtype AdvertisementCampaignInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementCampaignInterface (Value : AdvertisementCampaignInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out AdvertisementCampaignInterface) return Unbounded_String is abstract;
   function getComponent (This : in out AdvertisementCampaignInterface) return Java_Object_Access is abstract;
   procedure setName (This : in out AdvertisementCampaignInterface; name : Unbounded_String) is abstract;
   procedure setComponentName (This : in out AdvertisementCampaignInterface; name : Unbounded_String) is abstract;
   function search (This : in out AdvertisementCampaignInterface; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access is abstract;
   procedure search (This : in out AdvertisementCampaignInterface; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) is abstract;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;


