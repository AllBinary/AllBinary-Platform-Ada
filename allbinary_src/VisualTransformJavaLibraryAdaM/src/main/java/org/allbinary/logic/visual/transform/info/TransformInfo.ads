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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.Encoder_Package; use org.allbinary.logic.control.crypt.Encoder_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.OutputTypeData_Package; use org.allbinary.logic.io.OutputTypeData_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package; use org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package; use org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
with org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package; use org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfo_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Encoder_Package renames org.allbinary.logic.control.crypt.Encoder_Package;
   package CryptFileReader_Package renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package OutputTypeData_Package renames org.allbinary.logic.io.OutputTypeData_Package;
   package AbFilePath_Package renames org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoDataData_Package renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;
   package TransformInfoObjectConfig_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigInterface_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package TransformInfoTemplateData_Package renames org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
   package TransformInfoObjectData_Package renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames org.w3c.dom.Document_Package;

   type TransformInfo is tagged;
   type TransformInfo_Access is access all TransformInfo'Class;
   type TransformInfo_Access_Array is array (Natural range <>) of TransformInfo_Access;
   type TransformInfo_Access_Array_Access is access all TransformInfo_Access_Array;

   type TransformInfo is new TransformInfoInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      isChild : Boolean;
      name : Unbounded_String;
      storeName : Unbounded_String;
      objectFileName : Unbounded_String;
      anyType : Java_Object_Access;
      objectConfigFileName : Unbounded_String;
      objectConfigInterface : TransformInfoObjectConfigInterface_Access;
      template : Unbounded_String;
      templateFileName : Unbounded_String;
      dataFileName : Unbounded_String;
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfo'Class);
   function Create return TransformInfo_Access;
   procedure override (This : in out TransformInfo; hashMap : HashMap_Access);
   function log (This : in out TransformInfo) return Unbounded_String;
   procedure log (This : in out TransformInfo);
   procedure setName (This : in out TransformInfo; value : Unbounded_String);
   procedure setStoreName (This : in out TransformInfo; value : Unbounded_String);
   function getStoreName (This : in out TransformInfo) return Unbounded_String;
   procedure getStoreName (This : in out TransformInfo);
   procedure setObject (This : in out TransformInfo; anyType : Java_Object_Access);
   procedure setObjectFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setTemplate (This : in out TransformInfo; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfigFileName (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfigFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfig (This : in out TransformInfo; value : Unbounded_String);
   procedure setDataFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setData (This : in out TransformInfo; value : Unbounded_String);
   function getName (This : in out TransformInfo) return Unbounded_String;
   procedure getName (This : in out TransformInfo);
   function getObject (This : in out TransformInfo) return Java_Object_Access;
   procedure getObject (This : in out TransformInfo);
   function getObjectFile (This : in out TransformInfo) return Unbounded_String;
   procedure getObjectFile (This : in out TransformInfo);
   function getTemplate (This : in out TransformInfo) return Unbounded_String;
   procedure getTemplate (This : in out TransformInfo);
   function getTemplateFile (This : in out TransformInfo) return Unbounded_String;
   procedure getTemplateFile (This : in out TransformInfo);
   function getTemplateFilePath (This : in out TransformInfo) return AbPath_Access;
   procedure getTemplateFilePath (This : in out TransformInfo);
   function getObjectConfigFilePath (This : in out TransformInfo) return AbPath_Access;
   procedure getObjectConfigFilePath (This : in out TransformInfo);
   function getDataFilePath (This : in out TransformInfo) return AbPath_Access;
   procedure getDataFilePath (This : in out TransformInfo);
   function getObjectConfigFile (This : in out TransformInfo) return Unbounded_String;
   procedure getObjectConfigFile (This : in out TransformInfo);
   function getData (This : in out TransformInfo) return Unbounded_String;
   procedure getData (This : in out TransformInfo);
   function getDataDocument (This : in out TransformInfo) return Document_Access;
   procedure getDataDocument (This : in out TransformInfo);
   function getDataFile (This : in out TransformInfo) return Unbounded_String;
   procedure getDataFile (This : in out TransformInfo);
   function toHashMap (This : in out TransformInfo) return HashMap_Access;
   procedure toHashMap (This : in out TransformInfo);
   function toVector (This : in out TransformInfo) return BasicArrayList_Access;
   procedure toVector (This : in out TransformInfo);
   function getKey (This : in out TransformInfo) return Java_Object_Access;
   procedure getKey (This : in out TransformInfo);
   procedure setChild (This : in out TransformInfo);
   function isChild (This : in out TransformInfo) return Boolean;
   procedure isChild (This : in out TransformInfo);
   function getObjectConfigInterface (This : in out TransformInfo) return TransformInfoObjectConfigInterface_Access;
   procedure getObjectConfigInterface (This : in out TransformInfo);
   procedure setObjectConfigInterface (This : in out TransformInfo; objectConfigInterface : TransformInfoObjectConfigInterface_Access);

end org.allbinary.logic.visual.transform.info.TransformInfo_Package;


