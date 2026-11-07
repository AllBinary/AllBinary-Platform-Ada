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

limited with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References is
   type DownloadableItemView_Access is access all org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package.DownloadableItemView'Class;
   type DownloadableItemView_Access_Array is array (Natural range <>) of DownloadableItemView_Access;
   type DownloadableItemView_Access_Array_Access is access all DownloadableItemView_Access_Array;
   type DownloadableItemView_Access_Array_Access_Array is array (Natural range <>) of DownloadableItemView_Access_Array_Access;
   type DownloadableItemView_Access_Array_Access_Array_Access is access all DownloadableItemView_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References;

with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;

package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype DownloadableItemView_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References.DownloadableItemView_Access;
   function "=" (Left, Right : DownloadableItemView_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References."=";
   subtype DownloadableItemView_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References.DownloadableItemView_Access_Array;
   function "=" (Left, Right : DownloadableItemView_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References."=";
   subtype DownloadableItemView_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References.DownloadableItemView_Access_Array_Access;
   function "=" (Left, Right : DownloadableItemView_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References."=";
   subtype DownloadableItemView_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References.DownloadableItemView_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableItemView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References."=";
   subtype DownloadableItemView_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References.DownloadableItemView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableItemView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package_References."=";

   type DownloadableItemView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      downloadableItem : DownloadableItem_Access;
   end record;

   procedure Initialize (This : in out DownloadableItemView'Class; downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class);
   function Create (downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class) return DownloadableItemView_Access;
   function toXmlNode (This : in out DownloadableItemView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out DownloadableItemView; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out DownloadableItemView) return Document_Access;
   function view (This : in out DownloadableItemView) return Unbounded_String;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;


