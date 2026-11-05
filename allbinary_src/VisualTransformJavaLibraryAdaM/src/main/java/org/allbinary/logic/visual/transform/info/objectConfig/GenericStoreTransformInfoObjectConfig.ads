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

limited with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References is
   type GenericStoreTransformInfoObjectConfig_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package.GenericStoreTransformInfoObjectConfig'Class;
   type GenericStoreTransformInfoObjectConfig_Access_Array is array (Natural range <>) of GenericStoreTransformInfoObjectConfig_Access;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access is access all GenericStoreTransformInfoObjectConfig_Access_Array;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of GenericStoreTransformInfoObjectConfig_Access_Array_Access;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access is access all GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoHttp_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype TransformInfoHttp_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access;
   use type TransformInfoHttp_Access;
   subtype TransformInfoHttp_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array;
   use type TransformInfoHttp_Access_Array;
   subtype TransformInfoHttp_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access;
   use type TransformInfoHttp_Access_Array_Access;
   subtype TransformInfoHttp_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access_Array;
   use type TransformInfoHttp_Access_Array_Access_Array;
   subtype TransformInfoHttp_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package_References.TransformInfoHttp_Access_Array_Access_Array_Access;
   use type TransformInfoHttp_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
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


   subtype GenericStoreTransformInfoObjectConfig_Access is org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References.GenericStoreTransformInfoObjectConfig_Access;
   function "=" (Left, Right : GenericStoreTransformInfoObjectConfig_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References."=";
   subtype GenericStoreTransformInfoObjectConfig_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References.GenericStoreTransformInfoObjectConfig_Access_Array;
   function "=" (Left, Right : GenericStoreTransformInfoObjectConfig_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References."=";
   subtype GenericStoreTransformInfoObjectConfig_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References.GenericStoreTransformInfoObjectConfig_Access_Array_Access;
   function "=" (Left, Right : GenericStoreTransformInfoObjectConfig_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References."=";
   subtype GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References.GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array;
   function "=" (Left, Right : GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References."=";
   subtype GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References.GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package_References."=";

   type GenericStoreTransformInfoObjectConfig is new TransformInfoObjectConfig with record
      GenericStoreTransformInfoObjectConfig_Field_logUtil : LogUtil_Access;
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


