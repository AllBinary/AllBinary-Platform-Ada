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

limited with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References is
   type DownloadableItem_Access is access all org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package.DownloadableItem'Class;
   type DownloadableItem_Access_Array is array (Natural range <>) of DownloadableItem_Access;
   type DownloadableItem_Access_Array_Access is access all DownloadableItem_Access_Array;
   type DownloadableItem_Access_Array_Access_Array is array (Natural range <>) of DownloadableItem_Access_Array_Access;
   type DownloadableItem_Access_Array_Access_Array_Access is access all DownloadableItem_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;

with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;
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

package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype DownloadableItem_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access;
   function "=" (Left, Right : DownloadableItem_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";

   type DownloadableItem is new Java_Object with record
      id : Unbounded_String;
      basicItemId : Unbounded_String;
      enabled : Unbounded_String;
      system : Unbounded_String;
      platform : Unbounded_String;
      specialName : Unbounded_String;
      version : Unbounded_String;
      changes : Unbounded_String;
      licenseFile : Unbounded_String;
      file : Unbounded_String;
      size : Long_Long_Integer;
      validTime : Long_Long_Integer;
      retries : Unbounded_String;
   end record;

   procedure Initialize (This : in out DownloadableItem'Class; id : Unbounded_String);
   function Create (id : Unbounded_String) return DownloadableItem_Access;
   procedure Initialize (This : in out DownloadableItem'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return DownloadableItem_Access;
   function toVector (This : in out DownloadableItem) return BasicArrayList_Access;
   function toHashMap (This : in out DownloadableItem) return HashMap_Access;
   function getId (This : in out DownloadableItem) return Unbounded_String;
   function getSystem (This : in out DownloadableItem) return Unbounded_String;
   function getPlatform (This : in out DownloadableItem) return Unbounded_String;
   function getSpecialName (This : in out DownloadableItem) return Unbounded_String;
   function getVersion (This : in out DownloadableItem) return Unbounded_String;
   function getChanges (This : in out DownloadableItem) return Unbounded_String;
   function getLicenseFile (This : in out DownloadableItem) return Unbounded_String;
   function getFile (This : in out DownloadableItem) return Unbounded_String;
   function getSize (This : in out DownloadableItem) return Long_Long_Integer;
   function getValidTime (This : in out DownloadableItem) return Long_Long_Integer;
   function getRetries (This : in out DownloadableItem) return Unbounded_String;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;


