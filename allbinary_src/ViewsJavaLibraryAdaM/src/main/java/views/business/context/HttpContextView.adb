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
with org.allbinary.logic.visual.transform.ContextTransformer_Package; use org.allbinary.logic.visual.transform.ContextTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;

package body views.business.context.HttpContextView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package ContextTransformer_Package renames Standard.org.allbinary.logic.visual.transform.ContextTransformer_Package;
   package TransformHttpRequestDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
   procedure Initialize_Fields (This : in out HttpContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out HttpContextView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, HttpContextView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        HttpContextView'Class (This).setTransformDocumentInterface (TransformHttpRequestDocumentFactory_Package.getInstance (HttpContextView'Class (This).getPageContext, HttpContextView'Class (This).getWeblisketSession));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return HttpContextView_Access is
      This : constant HttpContextView_Access := new HttpContextView;
   begin
      HttpContextView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out HttpContextView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            HttpContextView'Class (This).toXmlDoc;
            success := XmlDocumentHelper_Package.toString (HttpContextView'Class (This).getDoc);
            result := ContextTransformer_Package.Create (This.abeClientInformation, HttpContextView'Class (This).getTransformInfoInterface).translate (success);
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, HttpContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.business.context.HttpContextView_Package;


