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

limited with views.admin.inventory.InventoryUploadMediaUtil_Package;
package views.admin.inventory.InventoryUploadMediaUtil_Package_References is
   type InventoryUploadMediaUtil_Access is access all views.admin.inventory.InventoryUploadMediaUtil_Package.InventoryUploadMediaUtil'Class;
   type InventoryUploadMediaUtil_Access_Array is array (Natural range <>) of InventoryUploadMediaUtil_Access;
   type InventoryUploadMediaUtil_Access_Array_Access is access all InventoryUploadMediaUtil_Access_Array;
   type InventoryUploadMediaUtil_Access_Array_Access_Array is array (Natural range <>) of InventoryUploadMediaUtil_Access_Array_Access;
   type InventoryUploadMediaUtil_Access_Array_Access_Array_Access is access all InventoryUploadMediaUtil_Access_Array_Access_Array;
end views.admin.inventory.InventoryUploadMediaUtil_Package_References;

with views.admin.inventory.InventoryUploadMediaUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaData_Package_References;
limited with org.allbinary.logic.visual.media.MediaUtil_Package;
with org.allbinary.logic.visual.media.MediaUtil_Package_References;

package views.admin.inventory.InventoryUploadMediaUtil_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MediaData_Package renames Standard.org.allbinary.logic.visual.media.MediaData_Package;
   package MediaUtil_Package renames Standard.org.allbinary.logic.visual.media.MediaUtil_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype ItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access;
   use type ItemInterface_Access;
   subtype ItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array;
   use type ItemInterface_Access_Array;
   subtype ItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access;
   use type ItemInterface_Access_Array_Access;
   subtype ItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array;
   use type ItemInterface_Access_Array_Access_Array;
   subtype ItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array_Access;
   use type ItemInterface_Access_Array_Access_Array_Access;
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
   subtype MediaData_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access;
   use type MediaData_Access;
   subtype MediaData_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array;
   use type MediaData_Access_Array;
   subtype MediaData_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access;
   use type MediaData_Access_Array_Access;
   subtype MediaData_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array;
   use type MediaData_Access_Array_Access_Array;
   subtype MediaData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array_Access;
   use type MediaData_Access_Array_Access_Array_Access;
   subtype MediaUtil_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access;
   use type MediaUtil_Access;
   subtype MediaUtil_Access_Array is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array;
   use type MediaUtil_Access_Array;
   subtype MediaUtil_Access_Array_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access;
   use type MediaUtil_Access_Array_Access;
   subtype MediaUtil_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access_Array;
   use type MediaUtil_Access_Array_Access_Array;
   subtype MediaUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaUtil_Package_References.MediaUtil_Access_Array_Access_Array_Access;
   use type MediaUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventoryUploadMediaUtil_Access is views.admin.inventory.InventoryUploadMediaUtil_Package_References.InventoryUploadMediaUtil_Access;
   function "=" (Left, Right : InventoryUploadMediaUtil_Access) return Boolean renames views.admin.inventory.InventoryUploadMediaUtil_Package_References."=";
   subtype InventoryUploadMediaUtil_Access_Array is views.admin.inventory.InventoryUploadMediaUtil_Package_References.InventoryUploadMediaUtil_Access_Array;
   function "=" (Left, Right : InventoryUploadMediaUtil_Access_Array) return Boolean renames views.admin.inventory.InventoryUploadMediaUtil_Package_References."=";
   subtype InventoryUploadMediaUtil_Access_Array_Access is views.admin.inventory.InventoryUploadMediaUtil_Package_References.InventoryUploadMediaUtil_Access_Array_Access;
   function "=" (Left, Right : InventoryUploadMediaUtil_Access_Array_Access) return Boolean renames views.admin.inventory.InventoryUploadMediaUtil_Package_References."=";
   subtype InventoryUploadMediaUtil_Access_Array_Access_Array is views.admin.inventory.InventoryUploadMediaUtil_Package_References.InventoryUploadMediaUtil_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryUploadMediaUtil_Access_Array_Access_Array) return Boolean renames views.admin.inventory.InventoryUploadMediaUtil_Package_References."=";
   subtype InventoryUploadMediaUtil_Access_Array_Access_Array_Access is views.admin.inventory.InventoryUploadMediaUtil_Package_References.InventoryUploadMediaUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryUploadMediaUtil_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.InventoryUploadMediaUtil_Package_References."=";

   type InventoryUploadMediaUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      mediaUtil : MediaUtil_Access;
      LARGEWIDTH : Integer;
      LARGEHEIGHT : Integer;
      MEDIUMWIDTH : Integer;
      MEDIUMHEIGHT : Integer;
      SMALLWIDTH : Integer;
      SMALLHEIGHT : Integer;
      SMALL : Unbounded_String;
      MEDIUM : Unbounded_String;
      LARGE : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      itemInterface : ItemInterface_Access;
   end record;

   procedure Initialize (This : in out InventoryUploadMediaUtil'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) return InventoryUploadMediaUtil_Access;
   function saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class) return ItemInterface_Access;
   procedure saveFiles (This : in out InventoryUploadMediaUtil; byteArray : Short_Short_Integer_Array_Access; fileName : Unbounded_String; mediaData_Param : access MediaData_Package.MediaData'Class);
   procedure setFileNames (This : in out InventoryUploadMediaUtil; fileName : Unbounded_String);

end views.admin.inventory.InventoryUploadMediaUtil_Package;


