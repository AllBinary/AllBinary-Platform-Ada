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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicItemView is tagged;
   type BasicItemView_Access is access all BasicItemView'Class;
   type BasicItemView_Access_Array is array (Natural range <>) of BasicItemView_Access;
   type BasicItemView_Access_Array_Access is access all BasicItemView_Access_Array;
   type BasicItemView_Access_Array_Access_Array is array (Natural range <>) of BasicItemView_Access_Array_Access;
   type BasicItemView_Access_Array_Access_Array_Access is access all BasicItemView_Access_Array_Access_Array;

   type BasicItemView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      basicItemData : BasicItemData_Access;
      itemInterface : ItemInterface_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicItemView'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (itemInterface_Param : access ItemInterface_Package.ItemInterface'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicItemView_Access;
   function toXmlNode (This : in out BasicItemView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicItemView; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out BasicItemView) return Document_Access;
   function view (This : in out BasicItemView) return Unbounded_String;

end org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;


