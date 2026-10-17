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


package body views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package is

   procedure Initialize_Fields (This : in out TitleBodyCustomizerView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.titleBody := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TitleBodyCustomizerView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return TitleBodyCustomizerView_Access is
      This : constant TitleBodyCustomizerView_Access := new TitleBodyCustomizerView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out TitleBodyCustomizerView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This.titleBody));
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function toXmlNode (This : in out TitleBodyCustomizerView; document : Document_Access) return Node_Access is
      pageName : Unbounded_String;
   begin
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (This.getTransformInfoInterface.getName, This.getWeblisketSession.getStoreName);
        if StringValidationUtil_Package.getInstance.isEmpty (pageName) then
            pageName := TitleBodyCustomizerView_Package.NAME;
        end if;
        return ModDomHelper_Package.createNameValueNodes (document, PageData_Package.getInstance.NAME, pageName);
   end toXmlNode;

   --  throws Exception
   function view (This : in out TitleBodyCustomizerView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            success := XmlDocumentHelper_Package.toString (This.getDoc);
            result := StoreTransformer_Package.Create (This.abeClientInformation, This.getTransformInfoInterface).translate (success);
            return StringEscapeUtils_Package.unescapeHtml3 (result);
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

   procedure toXmlNode (This : in out TitleBodyCustomizerView; document : Document_Access) is
      Java_Result : constant Node_Access := TitleBodyCustomizerView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure view (This : in out TitleBodyCustomizerView) is
      Java_Result : constant Unbounded_String := TitleBodyCustomizerView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

begin
   null;
   NAME := To_Unbounded_String ("None");

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package;


