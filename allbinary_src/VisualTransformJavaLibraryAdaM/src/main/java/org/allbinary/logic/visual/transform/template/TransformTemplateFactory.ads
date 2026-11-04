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

limited with org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;
package org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References is
   type TransformTemplateFactory_Access is access all org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package.TransformTemplateFactory'Class;
   type TransformTemplateFactory_Access_Array is array (Natural range <>) of TransformTemplateFactory_Access;
   type TransformTemplateFactory_Access_Array_Access is access all TransformTemplateFactory_Access_Array;
   type TransformTemplateFactory_Access_Array_Access_Array is array (Natural range <>) of TransformTemplateFactory_Access_Array_Access;
   type TransformTemplateFactory_Access_Array_Access_Array_Access is access all TransformTemplateFactory_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References;

with org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References;
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
limited with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References;

package org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package is

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
   subtype TransformTemplateInterface_Access is org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References.TransformTemplateInterface_Access;
   use type TransformTemplateInterface_Access;
   subtype TransformTemplateInterface_Access_Array is org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References.TransformTemplateInterface_Access_Array;
   use type TransformTemplateInterface_Access_Array;
   subtype TransformTemplateInterface_Access_Array_Access is org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References.TransformTemplateInterface_Access_Array_Access;
   use type TransformTemplateInterface_Access_Array_Access;
   subtype TransformTemplateInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References.TransformTemplateInterface_Access_Array_Access_Array;
   use type TransformTemplateInterface_Access_Array_Access_Array;
   subtype TransformTemplateInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package_References.TransformTemplateInterface_Access_Array_Access_Array_Access;
   use type TransformTemplateInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformTemplateFactory_Access is org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References.TransformTemplateFactory_Access;
   function "=" (Left, Right : TransformTemplateFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References."=";
   subtype TransformTemplateFactory_Access_Array is org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References.TransformTemplateFactory_Access_Array;
   function "=" (Left, Right : TransformTemplateFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References."=";
   subtype TransformTemplateFactory_Access_Array_Access is org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References.TransformTemplateFactory_Access_Array_Access;
   function "=" (Left, Right : TransformTemplateFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References."=";
   subtype TransformTemplateFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References.TransformTemplateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformTemplateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References."=";
   subtype TransformTemplateFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References.TransformTemplateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformTemplateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package_References."=";

   type TransformTemplateFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformTemplateFactory_Access;

   procedure Initialize (This : in out TransformTemplateFactory'Class);
   function Create return TransformTemplateFactory_Access;
   function getInstance return TransformTemplateFactory_Access;
   function getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformTemplateInterface_Access;
   procedure getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;


