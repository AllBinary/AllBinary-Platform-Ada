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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.inventory.InventoryTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type InventoryTag is tagged;
   type InventoryTag_Access is access all InventoryTag'Class;
   type InventoryTag_Access_Array is array (Natural range <>) of InventoryTag_Access;
   type InventoryTag_Access_Array_Access is access all InventoryTag_Access_Array;
   type InventoryTag_Access_Array_Access_Array is array (Natural range <>) of InventoryTag_Access_Array_Access;
   type InventoryTag_Access_Array_Access_Array_Access is access all InventoryTag_Access_Array_Access_Array;

   type InventoryTag is new StoreValidationTransformTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InventoryTag'Class);
   function Create return InventoryTag_Access;
   procedure search (This : in out InventoryTag);
   procedure viewSummary (This : in out InventoryTag);
   function doStartTag (This : in out InventoryTag) return Integer;

end tags.generic_Id.inventory.InventoryTag_Package;


