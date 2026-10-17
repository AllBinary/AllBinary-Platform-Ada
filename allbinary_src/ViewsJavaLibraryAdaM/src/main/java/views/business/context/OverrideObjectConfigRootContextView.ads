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
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.OverrideObjectConfigRootContextView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package GeneratorTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package;
   package RootTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
   package TransformInfoHttp_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package TransformTemplateInterface_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type OverrideObjectConfigRootContextView is tagged;
   type OverrideObjectConfigRootContextView_Access is access all OverrideObjectConfigRootContextView'Class;
   type OverrideObjectConfigRootContextView_Access_Array is array (Natural range <>) of OverrideObjectConfigRootContextView_Access;
   type OverrideObjectConfigRootContextView_Access_Array_Access is access all OverrideObjectConfigRootContextView_Access_Array;

   type OverrideObjectConfigRootContextView is new HttpStoreComponentView with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out OverrideObjectConfigRootContextView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return OverrideObjectConfigRootContextView_Access;
   function view (This : in out OverrideObjectConfigRootContextView) return Unbounded_String;

end views.business.context.OverrideObjectConfigRootContextView_Package;


