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

limited with tags.generic_Id.inventory.InventoryTag_Package;
package tags.generic_Id.inventory.InventoryTag_Package_References is
   type InventoryTag_Access is access all tags.generic_Id.inventory.InventoryTag_Package.InventoryTag'Class;
   type InventoryTag_Access_Array is array (Natural range <>) of InventoryTag_Access;
   type InventoryTag_Access_Array_Access is access all InventoryTag_Access_Array;
   type InventoryTag_Access_Array_Access_Array is array (Natural range <>) of InventoryTag_Access_Array_Access;
   type InventoryTag_Access_Array_Access_Array_Access is access all InventoryTag_Access_Array_Access_Array;
end tags.generic_Id.inventory.InventoryTag_Package_References;

with tags.generic_Id.inventory.InventoryTag_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.inventory.InventoryTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype InventoryTag_Access is tags.generic_Id.inventory.InventoryTag_Package_References.InventoryTag_Access;
   function "=" (Left, Right : InventoryTag_Access) return Boolean renames tags.generic_Id.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array is tags.generic_Id.inventory.InventoryTag_Package_References.InventoryTag_Access_Array;
   function "=" (Left, Right : InventoryTag_Access_Array) return Boolean renames tags.generic_Id.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access is tags.generic_Id.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access;
   function "=" (Left, Right : InventoryTag_Access_Array_Access) return Boolean renames tags.generic_Id.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access_Array is tags.generic_Id.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.inventory.InventoryTag_Package_References."=";
   subtype InventoryTag_Access_Array_Access_Array_Access is tags.generic_Id.inventory.InventoryTag_Package_References.InventoryTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.inventory.InventoryTag_Package_References."=";

   type InventoryTag is new StoreValidationTransformTag with record
      InventoryTag_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InventoryTag'Class);
   function Create return InventoryTag_Access;
   procedure search (This : in out InventoryTag);
   procedure viewSummary (This : in out InventoryTag);
   function doStartTag (This : in out InventoryTag) return Integer;

end tags.generic_Id.inventory.InventoryTag_Package;


