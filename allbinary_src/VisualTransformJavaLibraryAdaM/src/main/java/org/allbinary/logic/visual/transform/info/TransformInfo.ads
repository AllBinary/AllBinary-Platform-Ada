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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfo_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfo is tagged;
   type TransformInfo_Access is access all TransformInfo'Class;
   type TransformInfo_Access_Array is array (Natural range <>) of TransformInfo_Access;
   type TransformInfo_Access_Array_Access is access all TransformInfo_Access_Array;
   type TransformInfo_Access_Array_Access_Array is array (Natural range <>) of TransformInfo_Access_Array_Access;
   type TransformInfo_Access_Array_Access_Array_Access is access all TransformInfo_Access_Array_Access_Array;

   type TransformInfo is new Java_Object and TransformInfoInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      isChild_Field : Boolean;
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
   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TransformInfo_Access;
   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String);
   function Create (name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) return TransformInfo_Access;
   procedure override (This : in out TransformInfo; hashMap_Param : access HashMap_Package.HashMap'Class);
   function log (This : in out TransformInfo) return Unbounded_String;
   procedure setName (This : in out TransformInfo; value : Unbounded_String);
   procedure setStoreName (This : in out TransformInfo; value : Unbounded_String);
   function getStoreName (This : in out TransformInfo) return Unbounded_String;
   procedure setObject (This : in out TransformInfo; anyType_Param : access Java_Object'Class);
   procedure setObjectFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setTemplate (This : in out TransformInfo; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfigFileName (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfigFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setObjectConfig (This : in out TransformInfo; value : Unbounded_String);
   procedure setDataFile (This : in out TransformInfo; value : Unbounded_String);
   procedure setData (This : in out TransformInfo; value : Unbounded_String);
   function getName (This : in out TransformInfo) return Unbounded_String;
   function getObject (This : in out TransformInfo) return Java_Object_Access;
   function getObjectFile (This : in out TransformInfo) return Unbounded_String;
   function getTemplate (This : in out TransformInfo) return Unbounded_String;
   function getTemplateFile (This : in out TransformInfo) return Unbounded_String;
   function getTemplateFilePath (This : in out TransformInfo) return AbPath_Access;
   function getObjectConfigFilePath (This : in out TransformInfo) return AbPath_Access;
   function getDataFilePath (This : in out TransformInfo) return AbPath_Access;
   function getObjectConfigFile (This : in out TransformInfo) return Unbounded_String;
   function getData (This : in out TransformInfo) return Unbounded_String;
   function getDataDocument (This : in out TransformInfo) return Document_Access;
   function getDataFile (This : in out TransformInfo) return Unbounded_String;
   function toHashMap (This : in out TransformInfo) return HashMap_Access;
   function toVector (This : in out TransformInfo) return BasicArrayList_Access;
   function getKey (This : in out TransformInfo) return Java_Object_Access;
   procedure setChild (This : in out TransformInfo);
   function isChild (This : in out TransformInfo) return Boolean;
   function getObjectConfigInterface (This : in out TransformInfo) return TransformInfoObjectConfigInterface_Access;
   procedure setObjectConfigInterface (This : in out TransformInfo; objectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class);
   procedure setObject (This : in out TransformInfo; Value : Unbounded_String);

end org.allbinary.logic.visual.transform.info.TransformInfo_Package;


