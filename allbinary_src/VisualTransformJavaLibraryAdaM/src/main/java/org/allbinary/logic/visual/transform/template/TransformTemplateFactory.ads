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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;

package org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package is

   package TransformInfoEntity_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;

   type TransformTemplateFactory is tagged;
   type TransformTemplateFactory_Access is access all TransformTemplateFactory'Class;
   type TransformTemplateFactory_Access_Array is array (Natural range <>) of TransformTemplateFactory_Access;
   type TransformTemplateFactory_Access_Array_Access is access all TransformTemplateFactory_Access_Array;

   type TransformTemplateFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformTemplateFactory_Access;

   procedure Initialize (This : in out TransformTemplateFactory'Class);
   function Create return TransformTemplateFactory_Access;
   function getInstance return TransformTemplateFactory_Access;
   function getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformTemplateInterface_Access;
   procedure getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);

end org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;


