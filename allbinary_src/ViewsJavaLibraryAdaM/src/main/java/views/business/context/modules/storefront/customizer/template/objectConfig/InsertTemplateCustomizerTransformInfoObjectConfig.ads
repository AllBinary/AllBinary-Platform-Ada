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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package; use views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package;

package views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoDomNodeView_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type InsertTemplateCustomizerTransformInfoObjectConfig is tagged;
   type InsertTemplateCustomizerTransformInfoObjectConfig_Access is access all InsertTemplateCustomizerTransformInfoObjectConfig'Class;
   type InsertTemplateCustomizerTransformInfoObjectConfig_Access_Array is array (Natural range <>) of InsertTemplateCustomizerTransformInfoObjectConfig_Access;
   type InsertTemplateCustomizerTransformInfoObjectConfig_Access_Array_Access is access all InsertTemplateCustomizerTransformInfoObjectConfig_Access_Array;

   type InsertTemplateCustomizerTransformInfoObjectConfig is new NoTemplateTransformInfoObjectConfig with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertTemplateCustomizerTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return InsertTemplateCustomizerTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return InsertTemplateCustomizerTransformInfoObjectConfig_Access;
   procedure set (This : in out InsertTemplateCustomizerTransformInfoObjectConfig; aParentViewName : Unbounded_String);

end views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package;


