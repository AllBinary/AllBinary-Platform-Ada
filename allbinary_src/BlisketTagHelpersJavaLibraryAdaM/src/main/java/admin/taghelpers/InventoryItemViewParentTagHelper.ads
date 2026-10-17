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
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with taghelpers.ValidationViewHelper_Package; use taghelpers.ValidationViewHelper_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;
with views.admin.inventory.InventoryItemView_Package; use views.admin.inventory.InventoryItemView_Package;
with views.admin.inventory.download.DownloadableInventoryItemView_Package; use views.admin.inventory.download.DownloadableInventoryItemView_Package;

package admin.taghelpers.InventoryItemViewParentTagHelper_Package is

   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package ValidationViewHelper_Package renames Standard.taghelpers.ValidationViewHelper_Package;
   package HelperTag_Package renames Standard.tags.HelperTag_Package;
   package InventoryItemView_Package renames Standard.views.admin.inventory.InventoryItemView_Package;
   package DownloadableInventoryItemView_Package renames Standard.views.admin.inventory.download.DownloadableInventoryItemView_Package;

   type InventoryItemViewParentTagHelper is tagged;
   type InventoryItemViewParentTagHelper_Access is access all InventoryItemViewParentTagHelper'Class;
   type InventoryItemViewParentTagHelper_Access_Array is array (Natural range <>) of InventoryItemViewParentTagHelper_Access;
   type InventoryItemViewParentTagHelper_Access_Array_Access is access all InventoryItemViewParentTagHelper_Access_Array;

   type InventoryItemViewParentTagHelper is new Java_Object with null record;
   instance : InventoryItemViewParentTagHelper_Access;

   procedure Initialize (This : in out InventoryItemViewParentTagHelper'Class);
   function Create return InventoryItemViewParentTagHelper_Access;
   function getInstance return InventoryItemViewParentTagHelper_Access;
   function getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access) return InventoryItemView_Access;
   procedure getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access);
   function getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access) return DownloadableInventoryItemView_Access;
   procedure getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access);
   function getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access) return RequestMapInterface_Access;
   procedure getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag : HelperTag_Access);
   procedure checkForValidationViewHelper (This : in out InventoryItemViewParentTagHelper; helperObject : Java_Object_Access);

end admin.taghelpers.InventoryItemViewParentTagHelper_Package;


