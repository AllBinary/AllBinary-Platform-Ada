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


package body views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package is

   procedure Initialize_Fields (This : in out GenericBodyCustomizerView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.body_Id := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericBodyCustomizerView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return GenericBodyCustomizerView_Access is
      This : constant GenericBodyCustomizerView_Access := new GenericBodyCustomizerView;
   begin
      GenericBodyCustomizerView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out GenericBodyCustomizerView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This.body_Id));
        This.addDomNodeInterface (DomNodeInterface_Access (GenericBodyCustomizerView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function toXmlNode (This : in out GenericBodyCustomizerView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      pageName : Unbounded_String;
   begin
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (This.getTransformInfoInterface.getName, This.getWeblisketSession.getStoreName);
        if StringValidationUtil_Package.getInstance.isEmpty (pageName) then
            pageName := GenericBodyCustomizerView_Package.NAME;
        end if;
        return ModDomHelper_Package.createNameValueNodes (document, PageData_Package.getInstance.NAME, pageName);
   end toXmlNode;

   --  throws Exception
   function view (This : in out GenericBodyCustomizerView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            This.addDomNodeInterfaces;
            success := XmlDocumentHelper_Package.toString (This.getDoc);
            result := StoreTransformer_Package.Create (This.abeClientInformation, This.getTransformInfoInterface).translate (success);
            return StringEscapeUtils_Package.unescapeHtml3 (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, GenericBodyCustomizerView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out GenericBodyCustomizerView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := GenericBodyCustomizerView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("None");

end views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package;


