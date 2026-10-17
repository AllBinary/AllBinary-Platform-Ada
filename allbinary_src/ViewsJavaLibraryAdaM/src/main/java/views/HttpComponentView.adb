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


package body views.HttpComponentView_Package is

   procedure Initialize_Fields (This : in out HttpComponentView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      This.transformDocumentInterface := null;
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out HttpComponentView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        TransformInfoHttpComposite_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        This.domNodeInterfaceVector := BasicArrayListD_Package.Create;
        This.setTransformDocumentInterface (TransformHttpRequestDocumentFactory_Package.getInstance (This.getPageContext, This.getWeblisketSession));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return HttpComponentView_Access is
      This : constant HttpComponentView_Access := new HttpComponentView;
   begin
      HttpComponentView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getTypeId (This : in out HttpComponentView) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   function getTransformDocumentInterface (This : in out HttpComponentView) return TransformDocumentInterface_Access is
   begin
        return This.transformDocumentInterface;
   end getTransformDocumentInterface;

   procedure setTransformDocumentInterface (This : in out HttpComponentView; transformDocumentInterface : TransformDocumentInterface_Access) is
   begin
        This.transformDocumentInterface := transformDocumentInterface;
   end setTransformDocumentInterface;

   procedure addDomNodeInterface (This : in out HttpComponentView; domNodeInterface : DomNodeInterface_Access) is
   begin
        This.domNodeInterfaceVector.add (domNodeInterface);
   end addDomNodeInterface;

   --  throws Exception
   function toXmlDoc (This : in out HttpComponentView) return Document_Access is
      size : Integer;
      domNodeInterface : DomNodeInterface_Access;
      index : Integer;
   begin
        begin
            size := This.domNodeInterfaceVector.size;
            for index in 0 .. (size) - 1 loop
                domNodeInterface := DomNodeInterface_Access (This.domNodeInterfaceVector.get (index));
                This.transformDocumentInterface.getBaseNode.appendChild (domNodeInterface.toXmlNode (This.transformDocumentInterface.getDoc));
            end loop;
            return This.getTransformDocumentInterface.getDoc;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toXmlDoc()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlDoc;

   --  throws Exception
   function getDoc (This : in out HttpComponentView) return Document_Access is
      document : Document_Access;
      node : Node_Access;
      dataNode : Node_Access;
   begin
        document := This.getTransformInfoInterface.getDataDocument;
        node := DomNodeHelper_Package.getFirstChildElement (document);
        if (node) /= (null) then
            dataNode := This.getTransformDocumentInterface.getDoc.importNode (node, True);
            if (dataNode) /= (null) then
                This.getTransformDocumentInterface.getBaseNode.appendChild (dataNode);
            end if;
        end if;
        return This.getTransformDocumentInterface.getDoc;
   end getDoc;

   --  throws Exception
   function view (This : in out HttpComponentView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            This.toXmlDoc;
            success := XmlDocumentHelper_Package.toString (This.getDoc);
            result := BasicTransformer_Package.Create (This.abeClientInformation, This.getTransformInfoInterface).translate (success);
            return result;
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

end views.HttpComponentView_Package;


