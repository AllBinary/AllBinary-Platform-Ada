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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package; use org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with workflows.template.data.BasicWorkFlow_Package; use workflows.template.data.BasicWorkFlow_Package;

package workflows.template.data.BasicStoreWorkFlow_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreWorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;

   type BasicStoreWorkFlow is tagged;
   type BasicStoreWorkFlow_Access is access all BasicStoreWorkFlow'Class;
   type BasicStoreWorkFlow_Access_Array is array (Natural range <>) of BasicStoreWorkFlow_Access;
   type BasicStoreWorkFlow_Access_Array_Access is access all BasicStoreWorkFlow_Access_Array;

   type BasicStoreWorkFlow is new BasicWorkFlow and StoreWorkFlowInterface with null record;

   procedure Initialize (This : in out BasicStoreWorkFlow'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicStoreWorkFlow_Access;
   function getStoreName (This : in out BasicStoreWorkFlow) return Unbounded_String;

end workflows.template.data.BasicStoreWorkFlow_Package;


