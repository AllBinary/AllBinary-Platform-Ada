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

limited with org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package;
package org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References is
   type NewWorkFlowFactory_Access is access all org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package.NewWorkFlowFactory'Class;
   type NewWorkFlowFactory_Access_Array is array (Natural range <>) of NewWorkFlowFactory_Access;
   type NewWorkFlowFactory_Access_Array_Access is access all NewWorkFlowFactory_Access_Array;
   type NewWorkFlowFactory_Access_Array_Access_Array is array (Natural range <>) of NewWorkFlowFactory_Access_Array_Access;
   type NewWorkFlowFactory_Access_Array_Access_Array_Access is access all NewWorkFlowFactory_Access_Array_Access_Array;
end org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References;

with org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References;
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
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;

package org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package is

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
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   use type WorkFlowInterface_Access;
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   use type WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   use type WorkFlowInterface_Access_Array_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NewWorkFlowFactory_Access is org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References.NewWorkFlowFactory_Access;
   function "=" (Left, Right : NewWorkFlowFactory_Access) return Boolean renames org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References."=";
   subtype NewWorkFlowFactory_Access_Array is org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References.NewWorkFlowFactory_Access_Array;
   function "=" (Left, Right : NewWorkFlowFactory_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References."=";
   subtype NewWorkFlowFactory_Access_Array_Access is org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References.NewWorkFlowFactory_Access_Array_Access;
   function "=" (Left, Right : NewWorkFlowFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References."=";
   subtype NewWorkFlowFactory_Access_Array_Access_Array is org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References.NewWorkFlowFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NewWorkFlowFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References."=";
   subtype NewWorkFlowFactory_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References.NewWorkFlowFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NewWorkFlowFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package_References."=";

   type NewWorkFlowFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : NewWorkFlowFactory_Access;

   procedure Initialize (This : in out NewWorkFlowFactory'Class);
   function Create return NewWorkFlowFactory_Access;
   function getInstance return NewWorkFlowFactory_Access;
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowInterface_Access;
   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) return WorkFlowInterface_Access;
   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String);

end org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package;


