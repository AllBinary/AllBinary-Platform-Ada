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


package body views.business.context.OverrideObjectConfigRootContextView_Package is

   procedure Initialize_Fields (This : in out OverrideObjectConfigRootContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OverrideObjectConfigRootContextView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("OverrideObjectRootContextView()"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return OverrideObjectConfigRootContextView_Access is
      This : constant OverrideObjectConfigRootContextView_Access := new OverrideObjectConfigRootContextView;
   begin
      Initialize (This.all, transformInfoInterface);
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
                This.logUtil.putF (To_Unbounded_String ("View Name: ") & This.getTransformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("view()"));
            end if;
            rootTransformInfoInterface := TransformInfoInterface_Access (TransformInfoHttp_Package.Create (TransformInfoHttp_Access (This.getTransformInfoInterface)));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.getTransformInfoInterface.getStoreName);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            nameStart := stringBuffer.toString;
            if (This.getTransformInfoInterface.getName.indexOf (GeneratorTransformInfoData_Package.NAME)) > (0) then
                rootTransformInfoInterface.setName (nameStart & Java_Image (GeneratorTransformInfoData_Package.NAME));
            elsif (This.getTransformInfoInterface.getName.indexOf (RootTransformInfoData_Package.NAME)) > (0) then
                rootTransformInfoInterface.setName (nameStart & Java_Image (RootTransformInfoData_Package.NAME));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Override Currently Not Supported")));
            end if;
            overrideObjectConfigDocument := This.getTransformInfoInterface.getObjectConfigInterface.toXmlDoc;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Retrieved OverrideObjectConfig: ") & XmlDocumentHelper_Package.toString (overrideObjectConfigDocument), This'Unchecked_Access, To_Unbounded_String ("view()"));
            end if;
            transformFactory := TransformFactory_Package.getInstance;
            rootComponentInterface := transformFactory.getInstance (This.abeClientInformation, rootTransformInfoInterface.getName, rootTransformInfoInterface);
            transformTemplateInterface := TransformTemplateInterface_Access (rootComponentInterface);
            componentInterface := transformFactory.getInstance (This.abeClientInformation, transformTemplateInterface.getName, rootComponentInterface.getTransformInfoInterface);
            transformInfoObjectConfigInterface := TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, componentInterface.getTransformInfoInterface, overrideObjectConfigDocument);
            componentInterface.getTransformInfoInterface.setObjectConfigInterface (transformInfoObjectConfigInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Set OverrideObjectConfig: ") & componentInterface.getTransformInfoInterface.getObjectConfigInterface.toString, This'Unchecked_Access, To_Unbounded_String ("view()"));
            end if;
            return componentInterface.view;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure view (This : in out OverrideObjectConfigRootContextView) is
      Java_Result : constant Unbounded_String := OverrideObjectConfigRootContextView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.business.context.OverrideObjectConfigRootContextView_Package;


