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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.inventory.InventoryItemView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MediaData_Package renames Standard.org.allbinary.logic.visual.media.MediaData_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type InventoryItemView is tagged;
   type InventoryItemView_Access is access all InventoryItemView'Class;
   type InventoryItemView_Access_Array is array (Natural range <>) of InventoryItemView_Access;
   type InventoryItemView_Access_Array_Access is access all InventoryItemView_Access_Array;
   type InventoryItemView_Access_Array_Access_Array is array (Natural range <>) of InventoryItemView_Access_Array_Access;
   type InventoryItemView_Access_Array_Access_Array_Access is access all InventoryItemView_Access_Array_Access_Array;

   type InventoryItemView is new HttpStoreComponentView and RequestMapInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      imageFileName : Unbounded_String;
      mediaData : MediaData_Access;
      itemInterface : ItemInterface_Access;
      downloadableItemVector : BasicArrayList_Access;
      requestHashMap : HashMap_Access;
   end record;
   TYPE_ID : Integer;

   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InventoryItemView_Access;
   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) return InventoryItemView_Access;
   function getTypeId (This : in out InventoryItemView) return Integer;
   procedure getFormData (This : in out InventoryItemView);
   procedure addDomNodeInterfaces (This : in out InventoryItemView);
   function getItemInterface (This : in out InventoryItemView) return ItemInterface_Access;
   function view (This : in out InventoryItemView) return Unbounded_String;
   procedure processImageFiles (This : in out InventoryItemView);
   procedure setRequestHashMap (This : in out InventoryItemView; requestHashMap_Param : access HashMap_Package.HashMap'Class);
   function getRequestHashMap (This : in out InventoryItemView) return HashMap_Access;

end views.admin.inventory.InventoryItemView_Package;


