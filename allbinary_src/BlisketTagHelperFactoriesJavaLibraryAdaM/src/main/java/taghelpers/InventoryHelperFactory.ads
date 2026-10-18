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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package taghelpers.InventoryHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type InventoryHelperFactory is tagged;
   type InventoryHelperFactory_Access is access all InventoryHelperFactory'Class;
   type InventoryHelperFactory_Access_Array is array (Natural range <>) of InventoryHelperFactory_Access;
   type InventoryHelperFactory_Access_Array_Access is access all InventoryHelperFactory_Access_Array;
   type InventoryHelperFactory_Access_Array_Access_Array is array (Natural range <>) of InventoryHelperFactory_Access_Array_Access;
   type InventoryHelperFactory_Access_Array_Access_Array_Access is access all InventoryHelperFactory_Access_Array_Access_Array;

   type InventoryHelperFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InventoryHelperFactory'Class);
   function Create return InventoryHelperFactory_Access;
   function getInstance (This : in out InventoryHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out InventoryHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end taghelpers.InventoryHelperFactory_Package;


