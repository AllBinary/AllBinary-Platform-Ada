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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;

package org.allbinary.business.advertisement.area.AdvertisementArea_Package is

   package AdvertisementCampaignData_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type AdvertisementArea is tagged;
   type AdvertisementArea_Access is access all AdvertisementArea'Class;
   type AdvertisementArea_Access_Array is array (Natural range <>) of AdvertisementArea_Access;
   type AdvertisementArea_Access_Array_Access is access all AdvertisementArea_Access_Array;

   type AdvertisementArea is new AdvertisementAreaInterface with record
      name : Unbounded_String;
      storeName : Unbounded_String;
      description : Unbounded_String;
      advertisementAreaConstraintsInterface : AdvertisementAreaConstraintsInterface_Access;
      campaign : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementArea'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return AdvertisementArea_Access;
   function getName (This : in out AdvertisementArea) return Unbounded_String;
   function getStoreName (This : in out AdvertisementArea) return Unbounded_String;
   function getDescription (This : in out AdvertisementArea) return Unbounded_String;
   function getConstraints (This : in out AdvertisementArea) return AdvertisementAreaConstraintsInterface_Access;
   function getCampaign (This : in out AdvertisementArea) return Unbounded_String;
   procedure setName (This : in out AdvertisementArea; name : Unbounded_String);
   procedure setStoreName (This : in out AdvertisementArea; storeName : Unbounded_String);
   procedure setDescription (This : in out AdvertisementArea; description : Unbounded_String);
   procedure setConstraints (This : in out AdvertisementArea; advertisementConstraintsInterface : AdvertisementAreaConstraintsInterface_Access);
   procedure setCampaign (This : in out AdvertisementArea; campaign : Unbounded_String);

end org.allbinary.business.advertisement.area.AdvertisementArea_Package;


