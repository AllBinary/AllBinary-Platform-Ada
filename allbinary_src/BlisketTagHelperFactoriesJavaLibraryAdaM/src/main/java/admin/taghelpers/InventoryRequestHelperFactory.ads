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

limited with admin.taghelpers.InventoryRequestHelperFactory_Package;
package admin.taghelpers.InventoryRequestHelperFactory_Package_References is
   type InventoryRequestHelperFactory_Access is access all admin.taghelpers.InventoryRequestHelperFactory_Package.InventoryRequestHelperFactory'Class;
   type InventoryRequestHelperFactory_Access_Array is array (Natural range <>) of InventoryRequestHelperFactory_Access;
   type InventoryRequestHelperFactory_Access_Array_Access is access all InventoryRequestHelperFactory_Access_Array;
   type InventoryRequestHelperFactory_Access_Array_Access_Array is array (Natural range <>) of InventoryRequestHelperFactory_Access_Array_Access;
   type InventoryRequestHelperFactory_Access_Array_Access_Array_Access is access all InventoryRequestHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.InventoryRequestHelperFactory_Package_References;

with admin.taghelpers.InventoryRequestHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;

package admin.taghelpers.InventoryRequestHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype InventoryRequestHelperFactory_Access is admin.taghelpers.InventoryRequestHelperFactory_Package_References.InventoryRequestHelperFactory_Access;
   function "=" (Left, Right : InventoryRequestHelperFactory_Access) return Boolean renames admin.taghelpers.InventoryRequestHelperFactory_Package_References."=";
   subtype InventoryRequestHelperFactory_Access_Array is admin.taghelpers.InventoryRequestHelperFactory_Package_References.InventoryRequestHelperFactory_Access_Array;
   function "=" (Left, Right : InventoryRequestHelperFactory_Access_Array) return Boolean renames admin.taghelpers.InventoryRequestHelperFactory_Package_References."=";
   subtype InventoryRequestHelperFactory_Access_Array_Access is admin.taghelpers.InventoryRequestHelperFactory_Package_References.InventoryRequestHelperFactory_Access_Array_Access;
   function "=" (Left, Right : InventoryRequestHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryRequestHelperFactory_Package_References."=";
   subtype InventoryRequestHelperFactory_Access_Array_Access_Array is admin.taghelpers.InventoryRequestHelperFactory_Package_References.InventoryRequestHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryRequestHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.InventoryRequestHelperFactory_Package_References."=";
   subtype InventoryRequestHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.InventoryRequestHelperFactory_Package_References.InventoryRequestHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryRequestHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.InventoryRequestHelperFactory_Package_References."=";

   type InventoryRequestHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InventoryRequestHelperFactory'Class);
   function Create return InventoryRequestHelperFactory_Access;
   function getInstance (This : in out InventoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out InventoryRequestHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.InventoryRequestHelperFactory_Package;


