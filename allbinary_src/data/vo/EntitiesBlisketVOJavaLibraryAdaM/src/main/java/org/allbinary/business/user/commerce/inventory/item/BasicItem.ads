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

limited with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
package org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References is
   type BasicItem_Access is access all org.allbinary.business.user.commerce.inventory.item.BasicItem_Package.BasicItem'Class;
   type BasicItem_Access_Array is array (Natural range <>) of BasicItem_Access;
   type BasicItem_Access_Array_Access is access all BasicItem_Access_Array;
   type BasicItem_Access_Array_Access_Array is array (Natural range <>) of BasicItem_Access_Array_Access;
   type BasicItem_Access_Array_Access_Array_Access is access all BasicItem_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References;

with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References;
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
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;

package org.allbinary.business.user.commerce.inventory.item.BasicItem_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicItem_Access is org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References.BasicItem_Access;
   function "=" (Left, Right : BasicItem_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References."=";
   subtype BasicItem_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References.BasicItem_Access_Array;
   function "=" (Left, Right : BasicItem_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References."=";
   subtype BasicItem_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References.BasicItem_Access_Array_Access;
   function "=" (Left, Right : BasicItem_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References."=";
   subtype BasicItem_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References.BasicItem_Access_Array_Access_Array;
   function "=" (Left, Right : BasicItem_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References."=";
   subtype BasicItem_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References.BasicItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItem_Package_References."=";

   type BasicItem is new Java_Object and ItemInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      basicItemData : BasicItemData_Access;
      itemId : Unbounded_String;
      number : Unbounded_String;
      inBaskets : Unbounded_String;
      weight : Unbounded_String;
      enabled : Unbounded_String;
      newOrUsed : Unbounded_String;
      summary : Unbounded_String;
      distributor : Unbounded_String;
      idUsedByDistributor : Unbounded_String;
      producedBy : Unbounded_String;
      productionDate : Unbounded_String;
      startProductionDate : Unbounded_String;
      description : Unbounded_String;
      keywords : Unbounded_String;
      category : Unbounded_String;
      type_Id : Unbounded_String;
      smallImage : Unbounded_String;
      mediumImage : Unbounded_String;
      largeImage : Unbounded_String;
      price : Money_Access;
      comment : Unbounded_String;
      customs : Unbounded_String;
      downloads : Unbounded_String;
      groups : Unbounded_String;
      options : Unbounded_String;
      permissions : Unbounded_String;
      specials : Unbounded_String;
      downloadable : Boolean;
      timeEntered : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicItem'Class; itemHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (itemHashMap_Param : access HashMap_Package.HashMap'Class) return BasicItem_Access;
   procedure Initialize (This : in out BasicItem'Class);
   function Create return BasicItem_Access;
   procedure setId (This : in out BasicItem; itemId : Unbounded_String);
   procedure setNumber (This : in out BasicItem; number : Unbounded_String);
   procedure setInBaskets (This : in out BasicItem; value : Unbounded_String);
   procedure setWeight (This : in out BasicItem; value : Unbounded_String);
   procedure setNewOrUsed (This : in out BasicItem; value : Unbounded_String);
   procedure setSummary (This : in out BasicItem; value : Unbounded_String);
   procedure setDistributor (This : in out BasicItem; value : Unbounded_String);
   procedure setIdUsedByDistributor (This : in out BasicItem; value : Unbounded_String);
   procedure setProducedBy (This : in out BasicItem; value : Unbounded_String);
   procedure setProductionDate (This : in out BasicItem; value : Unbounded_String);
   procedure setStartProductionDate (This : in out BasicItem; value : Unbounded_String);
   procedure setDescription (This : in out BasicItem; value : Unbounded_String);
   procedure setKeywords (This : in out BasicItem; value : Unbounded_String);
   procedure setCategory (This : in out BasicItem; value : Unbounded_String);
   procedure setType (This : in out BasicItem; value : Unbounded_String);
   procedure setSmallImage (This : in out BasicItem; value : Unbounded_String);
   procedure setMediumImage (This : in out BasicItem; value : Unbounded_String);
   procedure setLargeImage (This : in out BasicItem; value : Unbounded_String);
   procedure setTimeEntered (This : in out BasicItem; value : Unbounded_String);
   procedure setLastModified (This : in out BasicItem; value : Unbounded_String);
   procedure setPrice (This : in out BasicItem; value_Param : access Money_Package.Money'Class);
   procedure setComment (This : in out BasicItem; value : Unbounded_String);
   procedure setCustoms (This : in out BasicItem; value : Unbounded_String);
   procedure setDownloads (This : in out BasicItem; value : Unbounded_String);
   procedure setGroups (This : in out BasicItem; value : Unbounded_String);
   procedure setOptions (This : in out BasicItem; value : Unbounded_String);
   procedure setPermissions (This : in out BasicItem; value : Unbounded_String);
   procedure setSpecials (This : in out BasicItem; value : Unbounded_String);
   procedure setEnabled (This : in out BasicItem; value : Unbounded_String);
   function getId (This : in out BasicItem) return Unbounded_String;
   function getNumber (This : in out BasicItem) return Unbounded_String;
   function getInBaskets (This : in out BasicItem) return Unbounded_String;
   function getWeight (This : in out BasicItem) return Unbounded_String;
   function getNewOrUsed (This : in out BasicItem) return Unbounded_String;
   function getSummary (This : in out BasicItem) return Unbounded_String;
   function getDistributor (This : in out BasicItem) return Unbounded_String;
   function getIdUsedByDistributor (This : in out BasicItem) return Unbounded_String;
   function getProducedBy (This : in out BasicItem) return Unbounded_String;
   function getProductionDate (This : in out BasicItem) return Unbounded_String;
   function getStartProductionDate (This : in out BasicItem) return Unbounded_String;
   function getDescription (This : in out BasicItem) return Unbounded_String;
   function getKeywords (This : in out BasicItem) return Unbounded_String;
   function getCategory (This : in out BasicItem) return Unbounded_String;
   function getType (This : in out BasicItem) return Unbounded_String;
   function getSmallImage (This : in out BasicItem) return Unbounded_String;
   function getMediumImage (This : in out BasicItem) return Unbounded_String;
   function getLargeImage (This : in out BasicItem) return Unbounded_String;
   function getTimeEntered (This : in out BasicItem) return Unbounded_String;
   function getLastModified (This : in out BasicItem) return Unbounded_String;
   function getPrice (This : in out BasicItem) return Money_Access;
   function getComment (This : in out BasicItem) return Unbounded_String;
   function getCustoms (This : in out BasicItem) return Unbounded_String;
   function getDownloads (This : in out BasicItem) return Unbounded_String;
   function getGroups (This : in out BasicItem) return Unbounded_String;
   function getOptions (This : in out BasicItem) return Unbounded_String;
   function getPermissions (This : in out BasicItem) return Unbounded_String;
   function getSpecials (This : in out BasicItem) return Unbounded_String;
   procedure setDownloadable (This : in out BasicItem; downloadable : Boolean);
   function isDownloadable (This : in out BasicItem) return Boolean;
   function getEnabled (This : in out BasicItem) return Unbounded_String;
   function getTotal (This : in out BasicItem) return Money_Access;
   function toHashMap (This : in out BasicItem) return HashMap_Access;
   function toVector (This : in out BasicItem) return BasicArrayList_Access;
   function getKey (This : in out BasicItem) return Java_Object_Access;

end org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;


