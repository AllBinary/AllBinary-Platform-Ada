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

limited with workflows.template.data.BasicWorkFlow_Package;
package workflows.template.data.BasicWorkFlow_Package_References is
   type BasicWorkFlow_Access is access all workflows.template.data.BasicWorkFlow_Package.BasicWorkFlow'Class;
   type BasicWorkFlow_Access_Array is array (Natural range <>) of BasicWorkFlow_Access;
   type BasicWorkFlow_Access_Array_Access is access all BasicWorkFlow_Access_Array;
   type BasicWorkFlow_Access_Array_Access_Array is array (Natural range <>) of BasicWorkFlow_Access_Array_Access;
   type BasicWorkFlow_Access_Array_Access_Array_Access is access all BasicWorkFlow_Access_Array_Access_Array;
end workflows.template.data.BasicWorkFlow_Package_References;

with workflows.template.data.BasicWorkFlow_Package_References;
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
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package workflows.template.data.BasicWorkFlow_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ValidationComponentInterface_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access;
   use type ValidationComponentInterface_Access;
   subtype ValidationComponentInterface_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array;
   use type ValidationComponentInterface_Access_Array;
   subtype ValidationComponentInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access;
   use type ValidationComponentInterface_Access_Array_Access;
   subtype ValidationComponentInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array;
   use type ValidationComponentInterface_Access_Array_Access_Array;
   subtype ValidationComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array_Access;
   use type ValidationComponentInterface_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicWorkFlow_Access is workflows.template.data.BasicWorkFlow_Package_References.BasicWorkFlow_Access;
   function "=" (Left, Right : BasicWorkFlow_Access) return Boolean renames workflows.template.data.BasicWorkFlow_Package_References."=";
   subtype BasicWorkFlow_Access_Array is workflows.template.data.BasicWorkFlow_Package_References.BasicWorkFlow_Access_Array;
   function "=" (Left, Right : BasicWorkFlow_Access_Array) return Boolean renames workflows.template.data.BasicWorkFlow_Package_References."=";
   subtype BasicWorkFlow_Access_Array_Access is workflows.template.data.BasicWorkFlow_Package_References.BasicWorkFlow_Access_Array_Access;
   function "=" (Left, Right : BasicWorkFlow_Access_Array_Access) return Boolean renames workflows.template.data.BasicWorkFlow_Package_References."=";
   subtype BasicWorkFlow_Access_Array_Access_Array is workflows.template.data.BasicWorkFlow_Package_References.BasicWorkFlow_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWorkFlow_Access_Array_Access_Array) return Boolean renames workflows.template.data.BasicWorkFlow_Package_References."=";
   subtype BasicWorkFlow_Access_Array_Access_Array_Access is workflows.template.data.BasicWorkFlow_Package_References.BasicWorkFlow_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWorkFlow_Access_Array_Access_Array_Access) return Boolean renames workflows.template.data.BasicWorkFlow_Package_References."=";

   type BasicWorkFlow is new Java_Object and WorkFlowInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      validationDomNodeInterface : ValidationComponentInterface_Access;
      propertiesHashMap : HashMap_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out BasicWorkFlow'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicWorkFlow_Access;
   function getName (This : in out BasicWorkFlow) return Unbounded_String;
   function getPropertiesHashMap (This : in out BasicWorkFlow) return HashMap_Access;
   function getPageContext (This : in out BasicWorkFlow) return PageContext_Access;
   function process (This : in out BasicWorkFlow) return Integer;

end workflows.template.data.BasicWorkFlow_Package;


