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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;

package org.allbinary.logic.visual.transform.TransformFactory_Package is

   package TransformInfoEntity_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoHttpFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TransformFactory is tagged;
   type TransformFactory_Access is access all TransformFactory'Class;
   type TransformFactory_Access_Array is array (Natural range <>) of TransformFactory_Access;
   type TransformFactory_Access_Array_Access is access all TransformFactory_Access_Array;

   type TransformFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : TransformFactory_Access;

   procedure Initialize (This : in out TransformFactory'Class);
   function Create return TransformFactory_Access;
   function getInstance return TransformFactory_Access;
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface'Class);
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.TransformFactory_Package;


