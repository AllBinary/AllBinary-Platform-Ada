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


package body views.BasicComponentView_Package is

   procedure Initialize_Fields (This : in out BasicComponentView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      This.transformDocumentInterface := null;
      This.transformInfoInterface := null;
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicComponentView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        This.setTransformInfoInterface (transformInfoInterface);
        This.setTransformDocumentInterface (TransformDocumentFactory_Package.getInstance);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return BasicComponentView_Access is
      This : constant BasicComponentView_Access := new BasicComponentView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getTypeId (This : in out BasicComponentView) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   function getTransformDocumentInterface (This : in out BasicComponentView) return TransformDocumentInterface_Access is
   begin
        return This.transformDocumentInterface;
   end getTransformDocumentInterface;

   procedure setTransformDocumentInterface (This : in out BasicComponentView; transformDocumentInterface : TransformDocumentInterface_Access) is
   begin
        This.transformDocumentInterface := transformDocumentInterface;
   end setTransformDocumentInterface;

   function getTransformInfoInterface (This : in out BasicComponentView) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   procedure setTransformInfoInterface (This : in out BasicComponentView; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        This.transformInfoInterface := transformInfoInterface;
   end setTransformInfoInterface;

   function toXmlDoc (This : in out BasicComponentView) return Document_Access is
   begin
        return This.transformDocumentInterface.getDoc;
   end toXmlDoc;

   --  throws Exception
   function getDoc (This : in out BasicComponentView) return Document_Access is
      document : Document_Access;
      dataNode : Node_Access;
   begin
        document := This.getTransformInfoInterface.getDataDocument;
        dataNode := This.getTransformDocumentInterface.getDoc.importNode (document.getFirstChild, True);
        if (dataNode) /= (null) then
            This.getTransformDocumentInterface.getBaseNode.appendChild (dataNode);
        end if;
        return This.getTransformDocumentInterface.getDoc;
   end getDoc;

   --  throws Exception
   function view (This : in out BasicComponentView) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            success := XmlDocumentHelper_Package.toString (This.getDoc);
            result := BasicTransformer_Package.Create (This.abeClientInformation, This.getTransformInfoInterface).translate (success);
            return result;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure getTypeId (This : in out BasicComponentView) is
      Java_Result : constant Integer := BasicComponentView'Class (This).getTypeId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTypeId;

   procedure getTransformDocumentInterface (This : in out BasicComponentView) is
      Java_Result : constant TransformDocumentInterface_Access := BasicComponentView'Class (This).getTransformDocumentInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformDocumentInterface;

   procedure getTransformInfoInterface (This : in out BasicComponentView) is
      Java_Result : constant TransformInfoInterface_Access := BasicComponentView'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure toXmlDoc (This : in out BasicComponentView) is
      Java_Result : constant Document_Access := BasicComponentView'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure getDoc (This : in out BasicComponentView) is
      Java_Result : constant Document_Access := BasicComponentView'Class (This).getDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDoc;

   procedure view (This : in out BasicComponentView) is
      Java_Result : constant Unbounded_String := BasicComponentView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.BasicComponentView_Package;


