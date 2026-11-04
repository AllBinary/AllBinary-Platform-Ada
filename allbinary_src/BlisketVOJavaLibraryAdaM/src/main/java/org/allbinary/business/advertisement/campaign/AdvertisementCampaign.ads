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

limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;
package org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References is
   type AdvertisementCampaign_Access is access all org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package.AdvertisementCampaign'Class;
   type AdvertisementCampaign_Access_Array is array (Natural range <>) of AdvertisementCampaign_Access;
   type AdvertisementCampaign_Access_Array_Access is access all AdvertisementCampaign_Access_Array;
   type AdvertisementCampaign_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaign_Access_Array_Access;
   type AdvertisementCampaign_Access_Array_Access_Array_Access is access all AdvertisementCampaign_Access_Array_Access_Array;
end org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References;

with org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;
limited with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype AdvertisementCampaign_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References.AdvertisementCampaign_Access;
   function "=" (Left, Right : AdvertisementCampaign_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References."=";
   subtype AdvertisementCampaign_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References.AdvertisementCampaign_Access_Array;
   function "=" (Left, Right : AdvertisementCampaign_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References."=";
   subtype AdvertisementCampaign_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References.AdvertisementCampaign_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaign_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References."=";
   subtype AdvertisementCampaign_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References.AdvertisementCampaign_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaign_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References."=";
   subtype AdvertisementCampaign_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References.AdvertisementCampaign_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaign_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package_References."=";

   type AdvertisementCampaign is new Java_Object and AdvertisementCampaignInterface with record
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out AdvertisementCampaign'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return AdvertisementCampaign_Access;
   function getComponent (This : in out AdvertisementCampaign) return Java_Object_Access;
   function getName (This : in out AdvertisementCampaign) return Unbounded_String;
   procedure setComponentName (This : in out AdvertisementCampaign; name : Unbounded_String);
   procedure setName (This : in out AdvertisementCampaign; name : Unbounded_String);
   function search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access;
   procedure search (This : in out AdvertisementCampaign; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class);

end org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;


