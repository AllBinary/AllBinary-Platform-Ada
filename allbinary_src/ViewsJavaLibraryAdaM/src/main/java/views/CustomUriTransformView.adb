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
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package; use org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package body views.CustomUriTransformView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoCustomUriTransformer_Package renames Standard.org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;
   package TransformDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   procedure Initialize_Fields (This : in out CustomUriTransformView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.getInstance);
      This.transformInfoInterface := null;
      This.transformDocumentInterface := null;
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomUriTransformView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, CustomUriTransformView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        CustomUriTransformView'Class (This).setTransformInfoInterface (transformInfoInterface);
        CustomUriTransformView'Class (This).setTransformDocumentInterface (TransformDocumentFactory_Package.getInstance);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CustomUriTransformView_Access is
      This : constant CustomUriTransformView_Access := new CustomUriTransformView;
   begin
      CustomUriTransformView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function getTypeId (This : in out CustomUriTransformView) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   function getTransformInfoInterface (This : in out CustomUriTransformView) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   procedure setTransformInfoInterface (This : in out CustomUriTransformView; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        This.transformInfoInterface := transformInfoInterface;
   end setTransformInfoInterface;

   function getTransformDocumentInterface (This : in out CustomUriTransformView) return TransformDocumentInterface_Access is
   begin
        return This.transformDocumentInterface;
   end getTransformDocumentInterface;

   procedure setTransformDocumentInterface (This : in out CustomUriTransformView; transformDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class) is
      transformDocumentInterface : constant TransformDocumentInterface_Access := TransformDocumentInterface_Access (transformDocumentInterface_Param);
   begin
        This.transformDocumentInterface := transformDocumentInterface;
   end setTransformDocumentInterface;

   function toXmlDoc (This : in out CustomUriTransformView) return Document_Access is
   begin
        return This.transformDocumentInterface.getDoc;
   end toXmlDoc;

   --  throws Exception
   function getDoc (This : in out CustomUriTransformView) return Document_Access is
      document : Document_Access;
      dataNode : Node_Access;
   begin
        document := CustomUriTransformView'Class (This).getTransformInfoInterface.getDataDocument;
        dataNode := CustomUriTransformView'Class (This).getTransformDocumentInterface.getDoc.importNode (document.getFirstChild, True);
        if (dataNode) /= (null) then
            CustomUriTransformView'Class (This).getTransformDocumentInterface.getBaseNode.appendChild (dataNode);
        end if;
        return CustomUriTransformView'Class (This).getTransformDocumentInterface.getDoc;
   end getDoc;

   --  throws Exception
   function view (This : in out CustomUriTransformView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            success := XmlDocumentHelper_Package.toString (CustomUriTransformView'Class (This).getDoc);
            result := TransformInfoCustomUriTransformer_Package.Create (This.abeClientInformation, CustomUriTransformView'Class (This).getTransformInfoInterface).translate (success);
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CustomUriTransformView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.CustomUriTransformView_Package;


