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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package; use views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package;

package body views.business.context.RootContextView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformInfo_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfo_Package;
   package NoTemplateTransformInfoObjectConfig_Package renames Standard.views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package;
   procedure Initialize_Fields (This : in out RootContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RootContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, RootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("RootContextView()"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootContextView_Access is
      This : constant RootContextView_Access := new RootContextView;
   begin
      RootContextView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out RootContextView) return Unbounded_String is
      viewName : Unbounded_String;
      componentInterface : TransformInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View Name: ") & RootContextView'Class (This).getTransformInfoInterface.getName, RootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"));
            end if;
            viewName := RootContextView'Class (This).getName;
            componentInterface := TransformInterface_Access (TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, viewName, RootContextView'Class (This).getTransformInfoInterface));
            return componentInterface.view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, RootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws Exception
   function getName (This : in out RootContextView) return Unbounded_String is
      objectConfig : NoTemplateTransformInfoObjectConfig_Access;
      componentsVector : BasicArrayList_Access;
      transformInfoInterface : TransformInfo_Access;
      viewName : Unbounded_String;
   begin
        begin
            objectConfig := NoTemplateTransformInfoObjectConfig_Package.Create (RootContextView'Class (This).getTransformInfoInterface, RootContextView'Class (This).getTransformInfoInterface.getObjectConfigInterface.toXmlDoc);
            componentsVector := objectConfig.getTransforms;
            if (componentsVector.size) = (0) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Template View Not Set - No Components")));
            end if;
            if (componentsVector.size) > (1) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("To Many Root Template Views: ") & Java_Image (componentsVector.size)));
            end if;
            transformInfoInterface := TransformInfo_Access (componentsVector.get (0));
            viewName := transformInfoInterface.getName;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Root Template With View Name: ") & viewName, RootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("getName()"));
            end if;
            if StringValidationUtil_Package.getInstance.isEmpty (viewName) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Template View Not Set - No View Name")));
            end if;
            return viewName;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, RootContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("getName()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getName;

end views.business.context.RootContextView_Package;


