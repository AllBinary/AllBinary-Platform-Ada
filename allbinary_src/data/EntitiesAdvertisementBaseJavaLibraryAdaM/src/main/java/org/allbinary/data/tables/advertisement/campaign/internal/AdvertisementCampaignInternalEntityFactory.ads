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

limited with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package;
package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References is
   type AdvertisementCampaignInternalEntityFactory_Access is access all org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package.AdvertisementCampaignInternalEntityFactory'Class;
   type AdvertisementCampaignInternalEntityFactory_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntityFactory_Access;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access is access all AdvertisementCampaignInternalEntityFactory_Access_Array;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntityFactory_Access_Array_Access;
   type AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array_Access is access all AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References;

with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package;
with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References;

package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package is

   package Reference_Types is
   subtype AdvertisementCampaignInternalEntityInterface_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References.AdvertisementCampaignInternalEntityInterface_Access;
   use type AdvertisementCampaignInternalEntityInterface_Access;
   subtype AdvertisementCampaignInternalEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References.AdvertisementCampaignInternalEntityInterface_Access_Array;
   use type AdvertisementCampaignInternalEntityInterface_Access_Array;
   subtype AdvertisementCampaignInternalEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References.AdvertisementCampaignInternalEntityInterface_Access_Array_Access;
   use type AdvertisementCampaignInternalEntityInterface_Access_Array_Access;
   subtype AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References.AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array;
   use type AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array;
   subtype AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package_References.AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array_Access;
   use type AdvertisementCampaignInternalEntityInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementCampaignInternalEntityFactory_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References.AdvertisementCampaignInternalEntityFactory_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntityFactory_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References."=";
   subtype AdvertisementCampaignInternalEntityFactory_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References.AdvertisementCampaignInternalEntityFactory_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInternalEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References."=";
   subtype AdvertisementCampaignInternalEntityFactory_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References.AdvertisementCampaignInternalEntityFactory_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References."=";
   subtype AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References.AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References."=";
   subtype AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References.AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package_References."=";

   type AdvertisementCampaignInternalEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementCampaignInternalEntityFactory'Class);
   function Create return AdvertisementCampaignInternalEntityFactory_Access;
   function getInstance return AdvertisementCampaignInternalEntityInterface_Access;

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package;


