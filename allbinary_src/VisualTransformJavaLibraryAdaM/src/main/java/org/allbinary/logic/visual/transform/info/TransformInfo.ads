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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.info.TransformInfo_Package;
package org.allbinary.logic.visual.transform.info.TransformInfo_Package_References is
   type TransformInfo_Access is access all org.allbinary.logic.visual.transform.info.TransformInfo_Package.TransformInfo'Class;
   type TransformInfo_Access_Array is array (Natural range <>) of TransformInfo_Access;
   type TransformInfo_Access_Array_Access is access all TransformInfo_Access_Array;
   type TransformInfo_Access_Array_Access_Array is array (Natural range <>) of TransformInfo_Access_Array_Access;
   type TransformInfo_Access_Array_Access_Array_Access is access all TransformInfo_Access_Array_Access_Array;
   type TransformInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfo_Access_Array_Access is (if Value /= null and then Value.all in TransformInfo_Access_Array_Object'Class then TransformInfo_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfo_Access_Array_Access_Array_Object'Class then TransformInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfo_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
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
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
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
   subtype TransformInfoObjectConfigInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access;
   use type TransformInfoObjectConfigInterface_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfo_Access is org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.TransformInfo_Access;
   function "=" (Left, Right : TransformInfo_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References."=";
   subtype TransformInfo_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.TransformInfo_Access_Array;
   function "=" (Left, Right : TransformInfo_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References."=";
   subtype TransformInfo_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.TransformInfo_Access_Array_Access;
   function "=" (Left, Right : TransformInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References."=";
   function Java_Box (Value : TransformInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.Java_Box;
   function Java_Unbox_TransformInfo_Access_Array (Value : access Java_Object'Class) return TransformInfo_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.Java_Unbox_TransformInfo_Access_Array;
   subtype TransformInfo_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.TransformInfo_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References."=";
   subtype TransformInfo_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.TransformInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References."=";
   function Java_Box (Value : TransformInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.Java_Box;
   function Java_Unbox_TransformInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfo_Package_References.Java_Unbox_TransformInfo_Access_Array_Access_Array;

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


