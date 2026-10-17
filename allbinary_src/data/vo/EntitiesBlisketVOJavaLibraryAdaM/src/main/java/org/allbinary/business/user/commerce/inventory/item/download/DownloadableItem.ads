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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.data.generator.ProductIdGenerator_Package; use org.allbinary.data.generator.ProductIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.time.TimeUtil_Package; use org.allbinary.time.TimeUtil_Package;

package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ProductIdGenerator_Package renames Standard.org.allbinary.data.generator.ProductIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TimeUtil_Package renames Standard.org.allbinary.time.TimeUtil_Package;

   type DownloadableItem is tagged;
   type DownloadableItem_Access is access all DownloadableItem'Class;
   type DownloadableItem_Access_Array is array (Natural range <>) of DownloadableItem_Access;
   type DownloadableItem_Access_Array_Access is access all DownloadableItem_Access_Array;

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
   function toVector (This : in out DownloadableItem) return BasicArrayList_Access;
   procedure toVector (This : in out DownloadableItem);
   function toHashMap (This : in out DownloadableItem) return HashMap_Access;
   procedure toHashMap (This : in out DownloadableItem);
   function getId (This : in out DownloadableItem) return Unbounded_String;
   procedure getId (This : in out DownloadableItem);
   function getSystem (This : in out DownloadableItem) return Unbounded_String;
   procedure getSystem (This : in out DownloadableItem);
   function getPlatform (This : in out DownloadableItem) return Unbounded_String;
   procedure getPlatform (This : in out DownloadableItem);
   function getSpecialName (This : in out DownloadableItem) return Unbounded_String;
   procedure getSpecialName (This : in out DownloadableItem);
   function getVersion (This : in out DownloadableItem) return Unbounded_String;
   procedure getVersion (This : in out DownloadableItem);
   function getChanges (This : in out DownloadableItem) return Unbounded_String;
   procedure getChanges (This : in out DownloadableItem);
   function getLicenseFile (This : in out DownloadableItem) return Unbounded_String;
   procedure getLicenseFile (This : in out DownloadableItem);
   function getFile (This : in out DownloadableItem) return Unbounded_String;
   procedure getFile (This : in out DownloadableItem);
   function getSize (This : in out DownloadableItem) return Long_Long_Integer;
   procedure getSize (This : in out DownloadableItem);
   function getValidTime (This : in out DownloadableItem) return Long_Long_Integer;
   procedure getValidTime (This : in out DownloadableItem);
   function getRetries (This : in out DownloadableItem) return Unbounded_String;
   procedure getRetries (This : in out DownloadableItem);

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;


