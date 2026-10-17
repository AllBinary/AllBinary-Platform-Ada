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


package body views.business.context.modules.storefront.HttpStoreComponentView_Package is

   procedure Initialize_Fields (This : in out HttpStoreComponentView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out HttpStoreComponentView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        This.setTransformDocumentInterface (TransformStoreDocumentFactory_Package.getInstance (This.getPageContext, This.getWeblisketSession));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return HttpStoreComponentView_Access is
      This : constant HttpStoreComponentView_Access := new HttpStoreComponentView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out HttpStoreComponentView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("view"));
            end if;
            This.toXmlDoc;
            success := XmlDocumentHelper_Package.toString (This.getDoc);
            result := StoreTransformer_Package.Create (This.abeClientInformation, This.getTransformInfoInterface).translate (success);
            return result;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure view (This : in out HttpStoreComponentView) is
      Java_Result : constant Unbounded_String := HttpStoreComponentView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.business.context.modules.storefront.HttpStoreComponentView_Package;


