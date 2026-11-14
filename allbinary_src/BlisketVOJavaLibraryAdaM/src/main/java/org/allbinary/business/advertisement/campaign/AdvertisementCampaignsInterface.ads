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
limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
package org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References is
   type AdvertisementCampaignsInterface_Access is access all org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package.AdvertisementCampaignsInterface'Class;
   type AdvertisementCampaignsInterface_Access_Array is array (Natural range <>) of AdvertisementCampaignsInterface_Access;
   type AdvertisementCampaignsInterface_Access_Array_Access is access all AdvertisementCampaignsInterface_Access_Array;
   type AdvertisementCampaignsInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignsInterface_Access_Array_Access;
   type AdvertisementCampaignsInterface_Access_Array_Access_Array_Access is access all AdvertisementCampaignsInterface_Access_Array_Access_Array;
   type AdvertisementCampaignsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaignsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaignsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaignsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaignsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaignsInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaignsInterface_Access_Array_Object'Class then AdvertisementCampaignsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementCampaignsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaignsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaignsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaignsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaignsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaignsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaignsInterface_Access_Array_Access_Array_Object'Class then AdvertisementCampaignsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References;

with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package_References;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package is

   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;
   package Reference_Types is
   subtype AdvertisementInterface_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access;
   use type AdvertisementInterface_Access;
   subtype AdvertisementInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array;
   use type AdvertisementInterface_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access;
   subtype AdvertisementInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array;
   use type AdvertisementInterface_Access_Array_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvertisementCampaignsInterface is interface;
   subtype AdvertisementCampaignsInterface_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access;
   function "=" (Left, Right : AdvertisementCampaignsInterface_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References."=";
   subtype AdvertisementCampaignsInterface_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignsInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References."=";
   subtype AdvertisementCampaignsInterface_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementCampaignsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaignsInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaignsInterface_Access_Array_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.Java_Unbox_AdvertisementCampaignsInterface_Access_Array;
   subtype AdvertisementCampaignsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References."=";
   subtype AdvertisementCampaignsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementCampaignsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaignsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaignsInterface_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.Java_Unbox_AdvertisementCampaignsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementCampaignsInterface (Value : AdvertisementCampaignsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure add (This : in out AdvertisementCampaignsInterface; advertisementInterface_Param : access AdvertisementInterface_Package.AdvertisementInterface'Class) is abstract;
   function get (This : in out AdvertisementCampaignsInterface; index : Integer) return AdvertisementInterface_Access is abstract;
   procedure get (This : in out AdvertisementCampaignsInterface; index : Integer) is abstract;
   function size (This : in out AdvertisementCampaignsInterface) return Integer is abstract;
   function isEnabled (This : in out AdvertisementCampaignsInterface) return Boolean is abstract;

end org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;


