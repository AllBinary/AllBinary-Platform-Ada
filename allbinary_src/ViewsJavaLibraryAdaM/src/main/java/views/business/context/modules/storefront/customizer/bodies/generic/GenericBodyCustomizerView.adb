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


with org.allbinary.business.page.PageData_Package; use org.allbinary.business.page.PageData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.StoreTransformer_Package; use org.allbinary.logic.visual.transform.StoreTransformer_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.apache.commons.lang3.StringEscapeUtils_Package; use org.apache.commons.lang3.StringEscapeUtils_Package;

package body views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package is

   package PageData_Package renames Standard.org.allbinary.business.page.PageData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package StoreTransformer_Package renames Standard.org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package StringEscapeUtils_Package renames Standard.org.apache.commons.lang3.StringEscapeUtils_Package;
   procedure Initialize_Fields (This : in out GenericBodyCustomizerView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.body_Id := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericBodyCustomizerView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GenericBodyCustomizerView_Access is
      This : constant GenericBodyCustomizerView_Access := new GenericBodyCustomizerView;
   begin
      GenericBodyCustomizerView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out GenericBodyCustomizerView) is
   begin
        GenericBodyCustomizerView'Class (This).addDomNodeInterface (DomNodeInterface_Access (This.body_Id));
        GenericBodyCustomizerView'Class (This).addDomNodeInterface (DomNodeInterface_Access (GenericBodyCustomizerView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function toXmlNode (This : in out GenericBodyCustomizerView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      pageName : Unbounded_String;
   begin
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (GenericBodyCustomizerView'Class (This).getTransformInfoInterface.getName, GenericBodyCustomizerView'Class (This).getWeblisketSession.getStoreName);
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
            GenericBodyCustomizerView'Class (This).addDomNodeInterfaces;
            success := XmlDocumentHelper_Package.toString (GenericBodyCustomizerView'Class (This).getDoc);
            result := StoreTransformer_Package.Create (This.abeClientInformation, GenericBodyCustomizerView'Class (This).getTransformInfoInterface).translate (success);
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

   procedure toXmlNode (This : in out GenericBodyCustomizerView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericBodyCustomizerView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("None");

end views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package;


