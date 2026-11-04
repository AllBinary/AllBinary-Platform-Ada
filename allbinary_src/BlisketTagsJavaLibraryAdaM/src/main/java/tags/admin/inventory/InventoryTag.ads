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

limited with tags.admin.inventory.InventoryTag_Package;
package tags.admin.inventory.InventoryTag_Package_References is
   type InventoryTag_Access is access all tags.admin.inventory.InventoryTag_Package.InventoryTag'Class;
   type InventoryTag_Access_Array is array (Natural range <>) of InventoryTag_Access;
   type InventoryTag_Access_Array_Access is access all InventoryTag_Access_Array;
   type InventoryTag_Access_Array_Access_Array is array (Natural range <>) of InventoryTag_Access_Array_Access;
   type InventoryTag_Access_Array_Access_Array_Access is access all InventoryTag_Access_Array_Access_Array;
end tags.admin.inventory.InventoryTag_Package_References;

with tags.admin.inventory.InventoryTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.inventory.InventoryTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InventoryTag_Access is tags.admin.inventory.InventoryTag_Package_References.InventoryTag_Access;
   function "=" (Left, Right : InventoryTag_Access) return Boolean renames tags.admin.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array is tags.admin.inventory.InventoryTag_Package_References.InventoryTag_Access_Array;
   function "=" (Left, Right : InventoryTag_Access_Array) return Boolean renames tags.admin.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access is tags.admin.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access;
   function "=" (Left, Right : InventoryTag_Access_Array_Access) return Boolean renames tags.admin.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access_Array is tags.admin.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryTag_Access_Array_Access_Array) return Boolean renames tags.admin.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access_Array_Access is tags.admin.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.inventory.InventoryTag_Package_References."=";

   type InventoryTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out InventoryTag'Class);
   function Create return InventoryTag_Access;
   function doStartTag (This : in out InventoryTag) return Integer;

end tags.admin.inventory.InventoryTag_Package;


