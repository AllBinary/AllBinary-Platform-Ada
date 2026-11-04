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

limited with workflows.template.data.BasicStoreWorkFlow_Package;
package workflows.template.data.BasicStoreWorkFlow_Package_References is
   type BasicStoreWorkFlow_Access is access all workflows.template.data.BasicStoreWorkFlow_Package.BasicStoreWorkFlow'Class;
   type BasicStoreWorkFlow_Access_Array is array (Natural range <>) of BasicStoreWorkFlow_Access;
   type BasicStoreWorkFlow_Access_Array_Access is access all BasicStoreWorkFlow_Access_Array;
   type BasicStoreWorkFlow_Access_Array_Access_Array is array (Natural range <>) of BasicStoreWorkFlow_Access_Array_Access;
   type BasicStoreWorkFlow_Access_Array_Access_Array_Access is access all BasicStoreWorkFlow_Access_Array_Access_Array;
end workflows.template.data.BasicStoreWorkFlow_Package_References;

with workflows.template.data.BasicStoreWorkFlow_Package_References;
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
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package; use org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with workflows.template.data.BasicWorkFlow_Package; use workflows.template.data.BasicWorkFlow_Package;

package workflows.template.data.BasicStoreWorkFlow_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreWorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicStoreWorkFlow_Access is workflows.template.data.BasicStoreWorkFlow_Package_References.BasicStoreWorkFlow_Access;
   function "=" (Left, Right : BasicStoreWorkFlow_Access) return Boolean renames workflows.template.data.BasicStoreWorkFlow_Package_References."=";
   subtype BasicStoreWorkFlow_Access_Array is workflows.template.data.BasicStoreWorkFlow_Package_References.BasicStoreWorkFlow_Access_Array;
   function "=" (Left, Right : BasicStoreWorkFlow_Access_Array) return Boolean renames workflows.template.data.BasicStoreWorkFlow_Package_References."=";
   subtype BasicStoreWorkFlow_Access_Array_Access is workflows.template.data.BasicStoreWorkFlow_Package_References.BasicStoreWorkFlow_Access_Array_Access;
   function "=" (Left, Right : BasicStoreWorkFlow_Access_Array_Access) return Boolean renames workflows.template.data.BasicStoreWorkFlow_Package_References."=";
   subtype BasicStoreWorkFlow_Access_Array_Access_Array is workflows.template.data.BasicStoreWorkFlow_Package_References.BasicStoreWorkFlow_Access_Array_Access_Array;
   function "=" (Left, Right : BasicStoreWorkFlow_Access_Array_Access_Array) return Boolean renames workflows.template.data.BasicStoreWorkFlow_Package_References."=";
   subtype BasicStoreWorkFlow_Access_Array_Access_Array_Access is workflows.template.data.BasicStoreWorkFlow_Package_References.BasicStoreWorkFlow_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicStoreWorkFlow_Access_Array_Access_Array_Access) return Boolean renames workflows.template.data.BasicStoreWorkFlow_Package_References."=";

   type BasicStoreWorkFlow is new BasicWorkFlow and StoreWorkFlowInterface with null record;

   procedure Initialize (This : in out BasicStoreWorkFlow'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicStoreWorkFlow_Access;
   function getStoreName (This : in out BasicStoreWorkFlow) return Unbounded_String;

end workflows.template.data.BasicStoreWorkFlow_Package;


