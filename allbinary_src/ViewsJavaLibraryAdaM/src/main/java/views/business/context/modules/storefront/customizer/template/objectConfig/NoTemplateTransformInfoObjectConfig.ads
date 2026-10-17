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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfig_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type NoTemplateTransformInfoObjectConfig is tagged;
   type NoTemplateTransformInfoObjectConfig_Access is access all NoTemplateTransformInfoObjectConfig'Class;
   type NoTemplateTransformInfoObjectConfig_Access_Array is array (Natural range <>) of NoTemplateTransformInfoObjectConfig_Access;
   type NoTemplateTransformInfoObjectConfig_Access_Array_Access is access all NoTemplateTransformInfoObjectConfig_Access_Array;

   type NoTemplateTransformInfoObjectConfig is new TransformInfoObjectConfig with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NoTemplateTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) return NoTemplateTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return NoTemplateTransformInfoObjectConfig_Access;
   function generate (This : in out NoTemplateTransformInfoObjectConfig; objectConfigDocument_Param : access Document'Class) return Document_Access;
   procedure generate (This : in out NoTemplateTransformInfoObjectConfig; objectConfigDocument_Param : access Document'Class);

end views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package;


