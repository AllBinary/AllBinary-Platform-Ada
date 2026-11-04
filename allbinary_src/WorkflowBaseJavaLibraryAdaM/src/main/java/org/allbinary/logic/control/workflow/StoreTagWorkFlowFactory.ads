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

limited with org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;
package org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References is
   type StoreTagWorkFlowFactory_Access is access all org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package.StoreTagWorkFlowFactory'Class;
   type StoreTagWorkFlowFactory_Access_Array is array (Natural range <>) of StoreTagWorkFlowFactory_Access;
   type StoreTagWorkFlowFactory_Access_Array_Access is access all StoreTagWorkFlowFactory_Access_Array;
   type StoreTagWorkFlowFactory_Access_Array_Access_Array is array (Natural range <>) of StoreTagWorkFlowFactory_Access_Array_Access;
   type StoreTagWorkFlowFactory_Access_Array_Access_Array_Access is access all StoreTagWorkFlowFactory_Access_Array_Access_Array;
end org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References;

with org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References;

package org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype StoreWorkFlowInterface_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access;
   use type StoreWorkFlowInterface_Access;
   subtype StoreWorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array;
   use type StoreWorkFlowInterface_Access_Array;
   subtype StoreWorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access;
   use type StoreWorkFlowInterface_Access_Array_Access;
   subtype StoreWorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array;
   use type StoreWorkFlowInterface_Access_Array_Access_Array;
   subtype StoreWorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array_Access;
   use type StoreWorkFlowInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreTagWorkFlowFactory_Access is org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References.StoreTagWorkFlowFactory_Access;
   function "=" (Left, Right : StoreTagWorkFlowFactory_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References."=";
   subtype StoreTagWorkFlowFactory_Access_Array is org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References.StoreTagWorkFlowFactory_Access_Array;
   function "=" (Left, Right : StoreTagWorkFlowFactory_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References."=";
   subtype StoreTagWorkFlowFactory_Access_Array_Access is org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References.StoreTagWorkFlowFactory_Access_Array_Access;
   function "=" (Left, Right : StoreTagWorkFlowFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References."=";
   subtype StoreTagWorkFlowFactory_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References.StoreTagWorkFlowFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreTagWorkFlowFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References."=";
   subtype StoreTagWorkFlowFactory_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References.StoreTagWorkFlowFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreTagWorkFlowFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package_References."=";

   type StoreTagWorkFlowFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StoreTagWorkFlowFactory_Access;

   procedure Initialize (This : in out StoreTagWorkFlowFactory'Class);
   function Create return StoreTagWorkFlowFactory_Access;
   function getInstance return StoreTagWorkFlowFactory_Access;
   function getInstance (This : in out StoreTagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreWorkFlowInterface_Access;
   procedure getInstance (This : in out StoreTagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;


