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
limited with admin.taghelpers.InventoryItemViewParentTagHelper_Package;
package admin.taghelpers.InventoryItemViewParentTagHelper_Package_References is
   type InventoryItemViewParentTagHelper_Access is access all admin.taghelpers.InventoryItemViewParentTagHelper_Package.InventoryItemViewParentTagHelper'Class;
   type InventoryItemViewParentTagHelper_Access_Array is array (Natural range <>) of InventoryItemViewParentTagHelper_Access;
   type InventoryItemViewParentTagHelper_Access_Array_Access is access all InventoryItemViewParentTagHelper_Access_Array;
   type InventoryItemViewParentTagHelper_Access_Array_Access_Array is array (Natural range <>) of InventoryItemViewParentTagHelper_Access_Array_Access;
   type InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access is access all InventoryItemViewParentTagHelper_Access_Array_Access_Array;
   type InventoryItemViewParentTagHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryItemViewParentTagHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryItemViewParentTagHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryItemViewParentTagHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryItemViewParentTagHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryItemViewParentTagHelper_Access_Array_Access is (if Value /= null and then Value.all in InventoryItemViewParentTagHelper_Access_Array_Object'Class then InventoryItemViewParentTagHelper_Access_Array_Object'Class (Value.all).Value else null);
   type InventoryItemViewParentTagHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryItemViewParentTagHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryItemViewParentTagHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventoryItemViewParentTagHelper_Access_Array_Access_Array_Object'Class then InventoryItemViewParentTagHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.InventoryItemViewParentTagHelper_Package_References;

with admin.taghelpers.InventoryItemViewParentTagHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References;
limited with tags.HelperTag_Package;
with tags.HelperTag_Package_References;
limited with views.admin.inventory.InventoryItemView_Package;
with views.admin.inventory.InventoryItemView_Package_References;
limited with views.admin.inventory.download.DownloadableInventoryItemView_Package;
with views.admin.inventory.download.DownloadableInventoryItemView_Package_References;

package admin.taghelpers.InventoryItemViewParentTagHelper_Package is

   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package HelperTag_Package renames Standard.tags.HelperTag_Package;
   package InventoryItemView_Package renames Standard.views.admin.inventory.InventoryItemView_Package;
   package DownloadableInventoryItemView_Package renames Standard.views.admin.inventory.download.DownloadableInventoryItemView_Package;
   package Reference_Types is
   subtype RequestMapInterface_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access;
   use type RequestMapInterface_Access;
   subtype RequestMapInterface_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array;
   use type RequestMapInterface_Access_Array;
   subtype RequestMapInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access;
   use type RequestMapInterface_Access_Array_Access;
   subtype RequestMapInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array;
   use type RequestMapInterface_Access_Array_Access_Array;
   subtype RequestMapInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array_Access;
   use type RequestMapInterface_Access_Array_Access_Array_Access;
   subtype HelperTag_Access is tags.HelperTag_Package_References.HelperTag_Access;
   use type HelperTag_Access;
   subtype HelperTag_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array;
   use type HelperTag_Access_Array;
   subtype HelperTag_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access;
   use type HelperTag_Access_Array_Access;
   subtype HelperTag_Access_Array_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array;
   use type HelperTag_Access_Array_Access_Array;
   subtype HelperTag_Access_Array_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array_Access;
   use type HelperTag_Access_Array_Access_Array_Access;
   subtype InventoryItemView_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access;
   use type InventoryItemView_Access;
   subtype InventoryItemView_Access_Array is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array;
   use type InventoryItemView_Access_Array;
   subtype InventoryItemView_Access_Array_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access;
   use type InventoryItemView_Access_Array_Access;
   subtype InventoryItemView_Access_Array_Access_Array is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access_Array;
   use type InventoryItemView_Access_Array_Access_Array;
   subtype InventoryItemView_Access_Array_Access_Array_Access is views.admin.inventory.InventoryItemView_Package_References.InventoryItemView_Access_Array_Access_Array_Access;
   use type InventoryItemView_Access_Array_Access_Array_Access;
   subtype DownloadableInventoryItemView_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access;
   use type DownloadableInventoryItemView_Access;
   subtype DownloadableInventoryItemView_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array;
   use type DownloadableInventoryItemView_Access_Array;
   subtype DownloadableInventoryItemView_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access;
   use type DownloadableInventoryItemView_Access_Array_Access;
   subtype DownloadableInventoryItemView_Access_Array_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array;
   use type DownloadableInventoryItemView_Access_Array_Access_Array;
   subtype DownloadableInventoryItemView_Access_Array_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array_Access;
   use type DownloadableInventoryItemView_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventoryItemViewParentTagHelper_Access is admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.InventoryItemViewParentTagHelper_Access;
   function "=" (Left, Right : InventoryItemViewParentTagHelper_Access) return Boolean renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References."=";
   subtype InventoryItemViewParentTagHelper_Access_Array is admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.InventoryItemViewParentTagHelper_Access_Array;
   function "=" (Left, Right : InventoryItemViewParentTagHelper_Access_Array) return Boolean renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References."=";
   subtype InventoryItemViewParentTagHelper_Access_Array_Access is admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.InventoryItemViewParentTagHelper_Access_Array_Access;
   function "=" (Left, Right : InventoryItemViewParentTagHelper_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References."=";
   function Java_Box (Value : InventoryItemViewParentTagHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.Java_Box;
   function Java_Unbox_InventoryItemViewParentTagHelper_Access_Array (Value : access Java_Object'Class) return InventoryItemViewParentTagHelper_Access_Array_Access renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.Java_Unbox_InventoryItemViewParentTagHelper_Access_Array;
   subtype InventoryItemViewParentTagHelper_Access_Array_Access_Array is admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.InventoryItemViewParentTagHelper_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryItemViewParentTagHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References."=";
   subtype InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access is admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References."=";
   function Java_Box (Value : InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.Java_Box;
   function Java_Unbox_InventoryItemViewParentTagHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return InventoryItemViewParentTagHelper_Access_Array_Access_Array_Access renames admin.taghelpers.InventoryItemViewParentTagHelper_Package_References.Java_Unbox_InventoryItemViewParentTagHelper_Access_Array_Access_Array;

   type InventoryItemViewParentTagHelper is new Java_Object with null record;
   instance : InventoryItemViewParentTagHelper_Access;

   procedure Initialize (This : in out InventoryItemViewParentTagHelper'Class);
   function Create return InventoryItemViewParentTagHelper_Access;
   function getInstance return InventoryItemViewParentTagHelper_Access;
   function getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return InventoryItemView_Access;
   procedure getInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class);
   function getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return DownloadableInventoryItemView_Access;
   procedure getDownloadableInventoryItemView (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class);
   function getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class) return RequestMapInterface_Access;
   procedure getRequestMapInterface (This : in out InventoryItemViewParentTagHelper; inventoryTag_Param : access HelperTag_Package.HelperTag'Class);
   procedure checkForValidationViewHelper (This : in out InventoryItemViewParentTagHelper; helperObject_Param : access Java_Object'Class);
   procedure checkForValidationViewHelper (This : in out InventoryItemViewParentTagHelper; Value : Unbounded_String);

end admin.taghelpers.InventoryItemViewParentTagHelper_Package;


