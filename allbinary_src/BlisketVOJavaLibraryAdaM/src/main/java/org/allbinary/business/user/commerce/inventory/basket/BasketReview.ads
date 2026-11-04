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

limited with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
package org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References is
   type BasketReview_Access is access all org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package.BasketReview'Class;
   type BasketReview_Access_Array is array (Natural range <>) of BasketReview_Access;
   type BasketReview_Access_Array_Access is access all BasketReview_Access_Array;
   type BasketReview_Access_Array_Access_Array is array (Natural range <>) of BasketReview_Access_Array_Access;
   type BasketReview_Access_Array_Access_Array_Access is access all BasketReview_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References;

with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.Item_Package;
with org.allbinary.business.user.commerce.inventory.item.Item_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Item_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.Item_Package;
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
   subtype Item_Access is org.allbinary.business.user.commerce.inventory.item.Item_Package_References.Item_Access;
   use type Item_Access;
   subtype Item_Access_Array is org.allbinary.business.user.commerce.inventory.item.Item_Package_References.Item_Access_Array;
   use type Item_Access_Array;
   subtype Item_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.Item_Package_References.Item_Access_Array_Access;
   use type Item_Access_Array_Access;
   subtype Item_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.Item_Package_References.Item_Access_Array_Access_Array;
   use type Item_Access_Array_Access_Array;
   subtype Item_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.Item_Package_References.Item_Access_Array_Access_Array_Access;
   use type Item_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasketReview_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access;
   function "=" (Left, Right : BasketReview_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References."=";
   subtype BasketReview_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array;
   function "=" (Left, Right : BasketReview_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References."=";
   subtype BasketReview_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access;
   function "=" (Left, Right : BasketReview_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References."=";
   subtype BasketReview_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array;
   function "=" (Left, Right : BasketReview_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References."=";
   subtype BasketReview_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasketReview_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References."=";

   type BasketReview is new Java_Object with record
      items : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasketReview'Class);
   function Create return BasketReview_Access;
   function isValid (This : in out BasketReview) return Boolean;
   procedure addItem (This : in out BasketReview; item_Param : access Item_Package.Item'Class);
   function getItems (This : in out BasketReview) return BasicArrayList_Access;
   procedure removeItem (This : in out BasketReview; id : Unbounded_String);
   procedure adjustItem (This : in out BasketReview; id : Unbounded_String; num : Unbounded_String);
   function getTotalWeight (This : in out BasketReview) return Unbounded_String;
   function getNumberOfItems (This : in out BasketReview) return Integer;
   function getIds (This : in out BasketReview) return Java_Object_Access;
   function getNumberOf (This : in out BasketReview; id : Unbounded_String) return Integer;
   procedure getNumberOf (This : in out BasketReview; id : Unbounded_String);
   function toXmlNode (This : in out BasketReview; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasketReview; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;


