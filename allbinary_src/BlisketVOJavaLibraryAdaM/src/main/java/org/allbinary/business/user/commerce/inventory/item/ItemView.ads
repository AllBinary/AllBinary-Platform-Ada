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
limited with org.allbinary.business.user.commerce.inventory.item.ItemView_Package;
package org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References is
   type ItemView_Access is access all org.allbinary.business.user.commerce.inventory.item.ItemView_Package.ItemView'Class;
   type ItemView_Access_Array is array (Natural range <>) of ItemView_Access;
   type ItemView_Access_Array_Access is access all ItemView_Access_Array;
   type ItemView_Access_Array_Access_Array is array (Natural range <>) of ItemView_Access_Array_Access;
   type ItemView_Access_Array_Access_Array_Access is access all ItemView_Access_Array_Access_Array;
   type ItemView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemView_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemView_Access_Array_Access is (if Value /= null and then Value.all in ItemView_Access_Array_Object'Class then ItemView_Access_Array_Object'Class (Value.all).Value else null);
   type ItemView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ItemView_Access_Array_Access_Array_Object'Class then ItemView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References;

with org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References;

package org.allbinary.business.user.commerce.inventory.item.ItemView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype OrderItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access;
   use type OrderItemInterface_Access;
   subtype OrderItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array;
   use type OrderItemInterface_Access_Array;
   subtype OrderItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access;
   use type OrderItemInterface_Access_Array_Access;
   subtype OrderItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access_Array;
   use type OrderItemInterface_Access_Array_Access_Array;
   subtype OrderItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package_References.OrderItemInterface_Access_Array_Access_Array_Access;
   use type OrderItemInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ItemView_Access is org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.ItemView_Access;
   function "=" (Left, Right : ItemView_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References."=";
   subtype ItemView_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.ItemView_Access_Array;
   function "=" (Left, Right : ItemView_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References."=";
   subtype ItemView_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.ItemView_Access_Array_Access;
   function "=" (Left, Right : ItemView_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References."=";
   function Java_Box (Value : ItemView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.Java_Box;
   function Java_Unbox_ItemView_Access_Array (Value : access Java_Object'Class) return ItemView_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.Java_Unbox_ItemView_Access_Array;
   subtype ItemView_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.ItemView_Access_Array_Access_Array;
   function "=" (Left, Right : ItemView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References."=";
   subtype ItemView_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.ItemView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References."=";
   function Java_Box (Value : ItemView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.Java_Box;
   function Java_Unbox_ItemView_Access_Array_Access_Array (Value : access Java_Object'Class) return ItemView_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.ItemView_Package_References.Java_Unbox_ItemView_Access_Array_Access_Array;

   type ItemView is new Java_Object with record
      itemInterface : OrderItemInterface_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ItemView'Class; itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return ItemView_Access;
   function toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.item.ItemView_Package;


