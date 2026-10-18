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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.OrderItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.ItemView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ItemView is tagged;
   type ItemView_Access is access all ItemView'Class;
   type ItemView_Access_Array is array (Natural range <>) of ItemView_Access;
   type ItemView_Access_Array_Access is access all ItemView_Access_Array;
   type ItemView_Access_Array_Access_Array is array (Natural range <>) of ItemView_Access_Array_Access;
   type ItemView_Access_Array_Access_Array_Access is access all ItemView_Access_Array_Access_Array;

   type ItemView is new Java_Object with record
      itemInterface : OrderItemInterface_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ItemView'Class; itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (itemInterface_Param : access OrderItemInterface_Package.OrderItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return ItemView_Access;
   function toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ItemView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.item.ItemView_Package;


