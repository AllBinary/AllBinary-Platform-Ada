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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoHttp_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type GenericStoreTransformInfoObjectConfig is tagged;
   type GenericStoreTransformInfoObjectConfig_Access is access all GenericStoreTransformInfoObjectConfig'Class;
   type GenericStoreTransformInfoObjectConfig_Access_Array is array (Natural range <>) of GenericStoreTransformInfoObjectConfig_Access;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access is access all GenericStoreTransformInfoObjectConfig_Access_Array;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of GenericStoreTransformInfoObjectConfig_Access_Array_Access;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access is access all GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array;

   type GenericStoreTransformInfoObjectConfig is new TransformInfoObjectConfig with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GenericStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return GenericStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return GenericStoreTransformInfoObjectConfig_Access;
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class) return Document_Access;
   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class);
   function createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) return HashMap_Access;
   procedure createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String);
   function createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) return HashMap_Access;
   procedure createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String);
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Document_Access;
   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;


