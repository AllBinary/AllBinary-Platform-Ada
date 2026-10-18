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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.DownloadItemsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type DownloadItemsRequestHelper is tagged;
   type DownloadItemsRequestHelper_Access is access all DownloadItemsRequestHelper'Class;
   type DownloadItemsRequestHelper_Access_Array is array (Natural range <>) of DownloadItemsRequestHelper_Access;
   type DownloadItemsRequestHelper_Access_Array_Access is access all DownloadItemsRequestHelper_Access_Array;
   type DownloadItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of DownloadItemsRequestHelper_Access_Array_Access;
   type DownloadItemsRequestHelper_Access_Array_Access_Array_Access is access all DownloadItemsRequestHelper_Access_Array_Access_Array;

   type DownloadItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      downloadableItem : DownloadableItem_Access;
   end record;

   procedure Initialize (This : in out DownloadItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return DownloadItemsRequestHelper_Access;
   function insert (This : in out DownloadItemsRequestHelper) return Unbounded_String;
   function delete (This : in out DownloadItemsRequestHelper) return Unbounded_String;
   function update (This : in out DownloadItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.DownloadItemsRequestHelper_Package;


