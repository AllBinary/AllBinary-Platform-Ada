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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with admin.tags.AbTagData_Package; use admin.tags.AbTagData_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;
with views.admin.inventory.download.DownloadableInventoryItemView_Package; use views.admin.inventory.download.DownloadableInventoryItemView_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.DownloadItemsRequestHelper_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package AbTagData_Package renames admin.tags.AbTagData_Package;
   package DownloadableItem_Package renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package DownloadItemsEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package HelperTag_Package renames tags.HelperTag_Package;
   package DownloadableInventoryItemView_Package renames views.admin.inventory.download.DownloadableInventoryItemView_Package;

   type DownloadItemsRequestHelper is tagged;
   type DownloadItemsRequestHelper_Access is access all DownloadItemsRequestHelper'Class;
   type DownloadItemsRequestHelper_Access_Array is array (Natural range <>) of DownloadItemsRequestHelper_Access;
   type DownloadItemsRequestHelper_Access_Array_Access is access all DownloadItemsRequestHelper_Access_Array;

   type DownloadItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      downloadableItem : DownloadableItem_Access;
   end record;

   procedure Initialize (This : in out DownloadItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return DownloadItemsRequestHelper_Access;
   function insert (This : in out DownloadItemsRequestHelper) return Unbounded_String;
   procedure insert (This : in out DownloadItemsRequestHelper);
   function delete (This : in out DownloadItemsRequestHelper) return Unbounded_String;
   procedure delete (This : in out DownloadItemsRequestHelper);
   function update (This : in out DownloadItemsRequestHelper) return Unbounded_String;
   procedure update (This : in out DownloadItemsRequestHelper);

end admin.taghelpers.DownloadItemsRequestHelper_Package;


