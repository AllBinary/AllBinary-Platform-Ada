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
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.item.Item_Package; use org.allbinary.business.user.commerce.inventory.item.Item_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemView_Package; use org.allbinary.business.user.commerce.inventory.item.ItemView_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;

package org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Item_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.Item_Package;
   package ItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemView_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasketReview is tagged;
   type BasketReview_Access is access all BasketReview'Class;
   type BasketReview_Access_Array is array (Natural range <>) of BasketReview_Access;
   type BasketReview_Access_Array_Access is access all BasketReview_Access_Array;

   type BasketReview is new Java_Object with record
      items : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasketReview'Class);
   function Create return BasketReview_Access;
   function isValid (This : in out BasketReview) return Boolean;
   procedure addItem (This : in out BasketReview; item_Param : access Item'Class);
   function getItems (This : in out BasketReview) return BasicArrayList_Access;
   procedure removeItem (This : in out BasketReview; id : Unbounded_String);
   procedure adjustItem (This : in out BasketReview; id : Unbounded_String; num : Unbounded_String);
   function getTotalWeight (This : in out BasketReview) return Unbounded_String;
   function getNumberOfItems (This : in out BasketReview) return Integer;
   function getIds (This : in out BasketReview) return Set_Access;
   function getNumberOf (This : in out BasketReview; id : Unbounded_String) return Integer;
   procedure getNumberOf (This : in out BasketReview; id : Unbounded_String);
   function toXmlNode (This : in out BasketReview; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasketReview; document_Param : access Document'Class);

end org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;


