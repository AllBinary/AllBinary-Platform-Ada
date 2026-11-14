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
limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;
package org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References is
   type AdvertisementCampaigns_Access is access all org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package.AdvertisementCampaigns'Class;
   type AdvertisementCampaigns_Access_Array is array (Natural range <>) of AdvertisementCampaigns_Access;
   type AdvertisementCampaigns_Access_Array_Access is access all AdvertisementCampaigns_Access_Array;
   type AdvertisementCampaigns_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaigns_Access_Array_Access;
   type AdvertisementCampaigns_Access_Array_Access_Array_Access is access all AdvertisementCampaigns_Access_Array_Access_Array;
   type AdvertisementCampaigns_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaigns_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaigns_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaigns_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaigns_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaigns_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaigns_Access_Array_Object'Class then AdvertisementCampaigns_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementCampaigns_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaigns_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaigns_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaigns_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaigns_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaigns_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaigns_Access_Array_Access_Array_Object'Class then AdvertisementCampaigns_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References;

with org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package_References;
limited with org.allbinary.business.advertisement.AdvertisementsInterface_Package;
with org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;
limited with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
with org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package_References;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;

package org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementInterface_Package;
   package AdvertisementsInterface_Package renames Standard.org.allbinary.business.advertisement.AdvertisementsInterface_Package;
   package AdvertisementSearchInterface_Package renames Standard.org.allbinary.business.advertisement.search.AdvertisementSearchInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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


   subtype AdvertisementCampaigns_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.AdvertisementCampaigns_Access;
   function "=" (Left, Right : AdvertisementCampaigns_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References."=";
   subtype AdvertisementCampaigns_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.AdvertisementCampaigns_Access_Array;
   function "=" (Left, Right : AdvertisementCampaigns_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References."=";
   subtype AdvertisementCampaigns_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.AdvertisementCampaigns_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaigns_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References."=";
   function Java_Box (Value : AdvertisementCampaigns_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaigns_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaigns_Access_Array_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.Java_Unbox_AdvertisementCampaigns_Access_Array;
   subtype AdvertisementCampaigns_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.AdvertisementCampaigns_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaigns_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References."=";
   subtype AdvertisementCampaigns_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.AdvertisementCampaigns_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaigns_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References."=";
   function Java_Box (Value : AdvertisementCampaigns_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaigns_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaigns_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package_References.Java_Unbox_AdvertisementCampaigns_Access_Array_Access_Array;

   type AdvertisementCampaigns is new Java_Object and AdvertisementCampaignsInterface with record
      advertisementsVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AdvertisementCampaigns'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return AdvertisementCampaigns_Access;
   procedure add (This : in out AdvertisementCampaigns; advertisementInterface_Param : access AdvertisementInterface_Package.AdvertisementInterface'Class);
   function get (This : in out AdvertisementCampaigns; index : Integer) return AdvertisementInterface_Access;
   procedure get (This : in out AdvertisementCampaigns; index : Integer);
   function size (This : in out AdvertisementCampaigns) return Integer;
   function isEnabled (This : in out AdvertisementCampaigns) return Boolean;
   function search (This : in out AdvertisementCampaigns; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class) return AdvertisementsInterface_Access;
   procedure search (This : in out AdvertisementCampaigns; advertisementSearchInterface_Param : access AdvertisementSearchInterface_Package.AdvertisementSearchInterface'Class);

end org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;


