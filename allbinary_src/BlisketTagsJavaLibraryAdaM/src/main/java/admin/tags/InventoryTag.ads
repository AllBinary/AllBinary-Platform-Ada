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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.InventoryTag_Package is


   type InventoryTag is tagged;
   type InventoryTag_Access is access all InventoryTag'Class;
   type InventoryTag_Access_Array is array (Natural range <>) of InventoryTag_Access;
   type InventoryTag_Access_Array_Access is access all InventoryTag_Access_Array;
   type InventoryTag_Access_Array_Access_Array is array (Natural range <>) of InventoryTag_Access_Array_Access;
   type InventoryTag_Access_Array_Access_Array_Access is access all InventoryTag_Access_Array_Access_Array;

   type InventoryTag is new TableTag with record
      storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out InventoryTag'Class);
   function Create return InventoryTag_Access;
   procedure setStoreName (This : in out InventoryTag; value : Unbounded_String);
   function doStartTag (This : in out InventoryTag) return Integer;

end admin.tags.InventoryTag_Package;


