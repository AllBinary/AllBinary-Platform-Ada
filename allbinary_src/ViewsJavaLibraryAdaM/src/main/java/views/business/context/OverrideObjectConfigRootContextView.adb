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


with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package body views.business.context.OverrideObjectConfigRootContextView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package GeneratorTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package;
   package RootTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
   package TransformInfoHttp_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package TransformTemplateInterface_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   procedure Initialize_Fields (This : in out OverrideObjectConfigRootContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OverrideObjectConfigRootContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, OverrideObjectConfigRootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("OverrideObjectRootContextView()"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return OverrideObjectConfigRootContextView_Access is
      This : constant OverrideObjectConfigRootContextView_Access := new OverrideObjectConfigRootContextView;
   begin
      OverrideObjectConfigRootContextView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out OverrideObjectConfigRootContextView) return Unbounded_String is
      rootTransformInfoInterface : TransformInfoInterface_Access;
      stringBuffer : StringMaker_Access;
      nameStart : Unbounded_String;
      overrideObjectConfigDocument : Document_Access;
      transformFactory : TransformFactory_Access;
      rootComponentInterface : TransformInterface_Access;
      transformTemplateInterface : TransformTemplateInterface_Access;
      componentInterface : TransformInterface_Access;
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View Name: ") & OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface.getName, OverrideObjectConfigRootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"));
            end if;
            rootTransformInfoInterface := TransformInfoInterface_Access (TransformInfoHttp_Package.Create (TransformInfoHttp_Access (OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface)));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface.getStoreName);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            nameStart := stringBuffer.toString;
            if (OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface.getName.indexOf (GeneratorTransformInfoData_Package.NAME)) > (0) then
                rootTransformInfoInterface.setName (nameStart & Java_Image (GeneratorTransformInfoData_Package.NAME));
            elsif (OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface.getName.indexOf (RootTransformInfoData_Package.NAME)) > (0) then
                rootTransformInfoInterface.setName (nameStart & Java_Image (RootTransformInfoData_Package.NAME));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Override Currently Not Supported")));
            end if;
            overrideObjectConfigDocument := OverrideObjectConfigRootContextView'Class (This).getTransformInfoInterface.getObjectConfigInterface.toXmlDoc;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Retrieved OverrideObjectConfig: ") & XmlDocumentHelper_Package.toString (overrideObjectConfigDocument), OverrideObjectConfigRootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"));
            end if;
            transformFactory := TransformFactory_Package.getInstance;
            rootComponentInterface := TransformInterface_Access (transformFactory.getInstance (This.abeClientInformation, rootTransformInfoInterface.getName, rootTransformInfoInterface));
            transformTemplateInterface := TransformTemplateInterface_Access (rootComponentInterface);
            componentInterface := TransformInterface_Access (transformFactory.getInstance (This.abeClientInformation, transformTemplateInterface.getName, rootComponentInterface.getTransformInfoInterface));
            transformInfoObjectConfigInterface := TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, componentInterface.getTransformInfoInterface, overrideObjectConfigDocument));
            componentInterface.getTransformInfoInterface.setObjectConfigInterface (transformInfoObjectConfigInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Set OverrideObjectConfig: ") & componentInterface.getTransformInfoInterface.getObjectConfigInterface.toString, OverrideObjectConfigRootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"));
            end if;
            return componentInterface.view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OverrideObjectConfigRootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.business.context.OverrideObjectConfigRootContextView_Package;


