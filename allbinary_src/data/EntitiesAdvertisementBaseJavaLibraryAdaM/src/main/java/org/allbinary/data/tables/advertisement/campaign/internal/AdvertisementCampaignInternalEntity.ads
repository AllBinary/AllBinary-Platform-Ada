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
limited with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package;
package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References is
   type AdvertisementCampaignInternalEntity_Access is access all org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package.AdvertisementCampaignInternalEntity'Class;
   type AdvertisementCampaignInternalEntity_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntity_Access;
   type AdvertisementCampaignInternalEntity_Access_Array_Access is access all AdvertisementCampaignInternalEntity_Access_Array;
   type AdvertisementCampaignInternalEntity_Access_Array_Access_Array is array (Natural range <>) of AdvertisementCampaignInternalEntity_Access_Array_Access;
   type AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access is access all AdvertisementCampaignInternalEntity_Access_Array_Access_Array;
   type AdvertisementCampaignInternalEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaignInternalEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaignInternalEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaignInternalEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaignInternalEntity_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaignInternalEntity_Access_Array_Object'Class then AdvertisementCampaignInternalEntity_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Object'Class then AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References;

with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References;
limited with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package; use org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityInterface_Package;

package org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementCampaignInterface_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package;
   package AdvertisementCampaignsInterface_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
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
   subtype AdvertisementCampaignInterface_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access;
   use type AdvertisementCampaignInterface_Access;
   subtype AdvertisementCampaignInterface_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array;
   use type AdvertisementCampaignInterface_Access_Array;
   subtype AdvertisementCampaignInterface_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access;
   use type AdvertisementCampaignInterface_Access_Array_Access;
   subtype AdvertisementCampaignInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access_Array;
   use type AdvertisementCampaignInterface_Access_Array_Access_Array;
   subtype AdvertisementCampaignInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface_Package_References.AdvertisementCampaignInterface_Access_Array_Access_Array_Access;
   use type AdvertisementCampaignInterface_Access_Array_Access_Array_Access;
   subtype AdvertisementCampaignsInterface_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access;
   use type AdvertisementCampaignsInterface_Access;
   subtype AdvertisementCampaignsInterface_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array;
   use type AdvertisementCampaignsInterface_Access_Array;
   subtype AdvertisementCampaignsInterface_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access;
   use type AdvertisementCampaignsInterface_Access_Array_Access;
   subtype AdvertisementCampaignsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access_Array;
   use type AdvertisementCampaignsInterface_Access_Array_Access_Array;
   subtype AdvertisementCampaignsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface_Package_References.AdvertisementCampaignsInterface_Access_Array_Access_Array_Access;
   use type AdvertisementCampaignsInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementCampaignInternalEntity_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.AdvertisementCampaignInternalEntity_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntity_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References."=";
   subtype AdvertisementCampaignInternalEntity_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.AdvertisementCampaignInternalEntity_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInternalEntity_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References."=";
   subtype AdvertisementCampaignInternalEntity_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.AdvertisementCampaignInternalEntity_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References."=";
   function Java_Box (Value : AdvertisementCampaignInternalEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaignInternalEntity_Access_Array_Access renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array;
   subtype AdvertisementCampaignInternalEntity_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.AdvertisementCampaignInternalEntity_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementCampaignInternalEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References."=";
   subtype AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References."=";
   function Java_Box (Value : AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.Java_Box;
   function Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementCampaignInternalEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package_References.Java_Unbox_AdvertisementCampaignInternalEntity_Access_Array_Access_Array;

   type AdvertisementCampaignInternalEntity is new AbSqlBean and AdvertisementCampaignInternalEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdvertisementCampaignInternalEntity'Class);
   function Create return AdvertisementCampaignInternalEntity_Access;
   procedure delete (This : in out AdvertisementCampaignInternalEntity; value : Unbounded_String);
   function getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String) return AdvertisementCampaignsInterface_Access;
   procedure getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String);
   function get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String) return AdvertisementCampaignInterface_Access;
   procedure get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String);
   procedure update (This : in out AdvertisementCampaignInternalEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;
   function createTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;
   function dropTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String;
   procedure insert (This : in out AdvertisementCampaignInternalEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package;


