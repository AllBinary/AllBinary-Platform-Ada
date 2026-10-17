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


package body views.business.context.RootContextView_Package is

   procedure Initialize_Fields (This : in out RootContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RootContextView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("RootContextView()"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return RootContextView_Access is
      This : constant RootContextView_Access := new RootContextView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out RootContextView) return Unbounded_String is
      viewName : Unbounded_String;
      componentInterface : TransformInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View Name: ") & This.getTransformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("view()"));
            end if;
            viewName := This.getName;
            componentInterface := TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, viewName, This.getTransformInfoInterface);
            return componentInterface.view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
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
            objectConfig := NoTemplateTransformInfoObjectConfig_Package.Create (This.getTransformInfoInterface, This.getTransformInfoInterface.getObjectConfigInterface.toXmlDoc);
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
                This.logUtil.putF (To_Unbounded_String ("Root Template With View Name: ") & viewName, This'Unchecked_Access, To_Unbounded_String ("getName()"));
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getName()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getName;

   procedure view (This : in out RootContextView) is
      Java_Result : constant Unbounded_String := RootContextView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

   procedure getName (This : in out RootContextView) is
      Java_Result : constant Unbounded_String := RootContextView'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

end views.business.context.RootContextView_Package;


