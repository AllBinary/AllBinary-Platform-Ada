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
limited with views.admin.inventory.download.DownloadableInventoryItemView_Package;
package views.admin.inventory.download.DownloadableInventoryItemView_Package_References is
   type DownloadableInventoryItemView_Access is access all views.admin.inventory.download.DownloadableInventoryItemView_Package.DownloadableInventoryItemView'Class;
   type DownloadableInventoryItemView_Access_Array is array (Natural range <>) of DownloadableInventoryItemView_Access;
   type DownloadableInventoryItemView_Access_Array_Access is access all DownloadableInventoryItemView_Access_Array;
   type DownloadableInventoryItemView_Access_Array_Access_Array is array (Natural range <>) of DownloadableInventoryItemView_Access_Array_Access;
   type DownloadableInventoryItemView_Access_Array_Access_Array_Access is access all DownloadableInventoryItemView_Access_Array_Access_Array;
   type DownloadableInventoryItemView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadableInventoryItemView_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadableInventoryItemView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadableInventoryItemView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadableInventoryItemView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadableInventoryItemView_Access_Array_Access is (if Value /= null and then Value.all in DownloadableInventoryItemView_Access_Array_Object'Class then DownloadableInventoryItemView_Access_Array_Object'Class (Value.all).Value else null);
   type DownloadableInventoryItemView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadableInventoryItemView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadableInventoryItemView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadableInventoryItemView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadableInventoryItemView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadableInventoryItemView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownloadableInventoryItemView_Access_Array_Access_Array_Object'Class then DownloadableInventoryItemView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.inventory.download.DownloadableInventoryItemView_Package_References;

with views.admin.inventory.download.DownloadableInventoryItemView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.inventory.download.DownloadableInventoryItemView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
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
   subtype DownloadableItem_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access;
   use type DownloadableItem_Access;
   subtype DownloadableItem_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array;
   use type DownloadableItem_Access_Array;
   subtype DownloadableItem_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access;
   use type DownloadableItem_Access_Array_Access;
   subtype DownloadableItem_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array;
   use type DownloadableItem_Access_Array_Access_Array;
   subtype DownloadableItem_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array_Access;
   use type DownloadableItem_Access_Array_Access_Array_Access;
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
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype FileItem_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access;
   use type FileItem_Access;
   subtype FileItem_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array;
   use type FileItem_Access_Array;
   subtype FileItem_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access;
   use type FileItem_Access_Array_Access;
   subtype FileItem_Access_Array_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array;
   use type FileItem_Access_Array_Access_Array;
   subtype FileItem_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array_Access;
   use type FileItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DownloadableInventoryItemView_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   function Java_Box (Value : DownloadableInventoryItemView_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References.Java_Box;
   function Java_Unbox_DownloadableInventoryItemView_Access_Array (Value : access Java_Object'Class) return DownloadableInventoryItemView_Access_Array_Access renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References.Java_Unbox_DownloadableInventoryItemView_Access_Array;
   subtype DownloadableInventoryItemView_Access_Array_Access_Array is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access_Array) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   subtype DownloadableInventoryItemView_Access_Array_Access_Array_Access is views.admin.inventory.download.DownloadableInventoryItemView_Package_References.DownloadableInventoryItemView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableInventoryItemView_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References."=";
   function Java_Box (Value : DownloadableInventoryItemView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References.Java_Box;
   function Java_Unbox_DownloadableInventoryItemView_Access_Array_Access_Array (Value : access Java_Object'Class) return DownloadableInventoryItemView_Access_Array_Access_Array_Access renames views.admin.inventory.download.DownloadableInventoryItemView_Package_References.Java_Unbox_DownloadableInventoryItemView_Access_Array_Access_Array;

   type DownloadableInventoryItemView is new HttpStoreComponentView and RequestMapInterface with record
      DownloadableInventoryItemView_Field_logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      itemInterface : ItemInterface_Access;
      downloadableItem : DownloadableItem_Access;
      requestHashMap : HashMap_Access;
   end record;
   TYPE_ID : Integer;

   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DownloadableInventoryItemView_Access;
   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) return DownloadableInventoryItemView_Access;
   function getTypeId (This : in out DownloadableInventoryItemView) return Integer;
   procedure getFormData (This : in out DownloadableInventoryItemView);
   procedure addDomNodeInterfaces (This : in out DownloadableInventoryItemView);
   function view (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure processFile (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class);
   procedure unzip (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class);
   function getItemFilePath (This : in out DownloadableInventoryItemView) return Unbounded_String;
   procedure setRequestHashMap (This : in out DownloadableInventoryItemView; requestHashMap_Param : access HashMap_Package.HashMap'Class);
   function getRequestHashMap (This : in out DownloadableInventoryItemView) return HashMap_Access;
   function getDownloadableItem (This : in out DownloadableInventoryItemView) return DownloadableItem_Access;

end views.admin.inventory.download.DownloadableInventoryItemView_Package;


