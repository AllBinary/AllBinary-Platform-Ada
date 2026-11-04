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

limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References is
   type TransformInfoObjectConfig_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package.TransformInfoObjectConfig'Class;
   type TransformInfoObjectConfig_Access_Array is array (Natural range <>) of TransformInfoObjectConfig_Access;
   type TransformInfoObjectConfig_Access_Array_Access is access all TransformInfoObjectConfig_Access_Array;
   type TransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfig_Access_Array_Access;
   type TransformInfoObjectConfig_Access_Array_Access_Array_Access is access all TransformInfoObjectConfig_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.NamedNodeMap_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype NamedNodeMap_Access is org.w3c.dom.NamedNodeMap_Package_References.NamedNodeMap_Access;
   use type NamedNodeMap_Access;
   subtype NamedNodeMap_Access_Array is org.w3c.dom.NamedNodeMap_Package_References.NamedNodeMap_Access_Array;
   use type NamedNodeMap_Access_Array;
   subtype NamedNodeMap_Access_Array_Access is org.w3c.dom.NamedNodeMap_Package_References.NamedNodeMap_Access_Array_Access;
   use type NamedNodeMap_Access_Array_Access;
   subtype NamedNodeMap_Access_Array_Access_Array is org.w3c.dom.NamedNodeMap_Package_References.NamedNodeMap_Access_Array_Access_Array;
   use type NamedNodeMap_Access_Array_Access_Array;
   subtype NamedNodeMap_Access_Array_Access_Array_Access is org.w3c.dom.NamedNodeMap_Package_References.NamedNodeMap_Access_Array_Access_Array_Access;
   use type NamedNodeMap_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectConfig_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References.TransformInfoObjectConfig_Access;
   function "=" (Left, Right : TransformInfoObjectConfig_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References."=";
   subtype TransformInfoObjectConfig_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References.TransformInfoObjectConfig_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfig_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References."=";
   subtype TransformInfoObjectConfig_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References.TransformInfoObjectConfig_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfig_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References."=";
   subtype TransformInfoObjectConfig_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References.TransformInfoObjectConfig_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfig_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References."=";
   subtype TransformInfoObjectConfig_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References.TransformInfoObjectConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfig_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package_References."=";

   type TransformInfoObjectConfig is new Java_Object and TransformInfoObjectConfigInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      ownerTransformInfoInterface : TransformInfoInterface_Access;
      document : Document_Access;
      outputTypeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfig_Access;
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfig_Access;
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return TransformInfoObjectConfig_Access;
   procedure createDocument (This : in out TransformInfoObjectConfig);
   function getTransformInfoInterface (This : in out TransformInfoObjectConfig) return TransformInfoInterface_Access;
   function toXmlDoc (This : in out TransformInfoObjectConfig) return Document_Access;
   procedure setDocument (This : in out TransformInfoObjectConfig; document_Param : access Document_Package.Document'Class);
   function containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Boolean;
   procedure containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getTemplateAttributes (This : in out TransformInfoObjectConfig) return NamedNodeMap_Access;
   function getName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure setName (This : in out TransformInfoObjectConfig; name : Unbounded_String);
   function getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String) return BasicArrayList_Access;
   procedure getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String);
   function getTransformDomNodes (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getGroupTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getParentTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getRootNode (This : in out TransformInfoObjectConfig) return Node_Access;
   procedure setOutputTypeName (This : in out TransformInfoObjectConfig; outputTypeName : Unbounded_String);
   function getOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getInputOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getImportUriPath (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function toString (This : in out TransformInfoObjectConfig) return Unbounded_String;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;


