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


package body org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package is

   procedure Initialize_Fields (This : in out TransformHttpRequestDocument'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.baseNode := null;
      This.document := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformHttpRequestDocument'Class; pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) is
      contentType : Unbounded_String;
      contentTypeNode : Node_Access;
      languageTypeNode : Node_Access;
      localTypeNode : Node_Access;
   begin
      Initialize_Fields (This);
        begin
            contentType := AcceptableResponseGenerator_Package.getInstance.get (HttpServletRequest_Access (pageContext.getRequest));
            This.document := DomDocumentHelper_Package.create;
            contentTypeNode := This.document.createElement (contentType);
            languageTypeNode := This.document.createElement (language);
            localTypeNode := This.document.createElement (local);
            This.baseNode := localTypeNode;
            languageTypeNode.appendChild (localTypeNode);
            contentTypeNode.appendChild (languageTypeNode);
            This.document.appendChild (contentTypeNode);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.putF (This.log, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) return TransformHttpRequestDocument_Access is
      This : constant TransformHttpRequestDocument_Access := new TransformHttpRequestDocument;
   begin
      Initialize (This.all, pageContext, weblisketSession);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformHttpRequestDocument'Class; searchRequest : SearchRequest_Access) is
      contentType : Unbounded_String;
      contentTypeNode : Node_Access;
      languageTypeNode : Node_Access;
      localTypeNode : Node_Access;
   begin
      Initialize_Fields (This);
        begin
            contentType := searchRequest.getContentType;
            This.document := DomDocumentHelper_Package.create;
            contentTypeNode := This.document.createElement (contentType);
            languageTypeNode := This.document.createElement (language);
            localTypeNode := This.document.createElement (local);
            This.baseNode := localTypeNode;
            languageTypeNode.appendChild (localTypeNode);
            contentTypeNode.appendChild (languageTypeNode);
            This.document.appendChild (contentTypeNode);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (searchRequest : SearchRequest_Access) return TransformHttpRequestDocument_Access is
      This : constant TransformHttpRequestDocument_Access := new TransformHttpRequestDocument;
   begin
      Initialize (This.all, searchRequest);
      return This;
   end Create;

   function getBaseNode (This : in out TransformHttpRequestDocument) return Node_Access is
   begin
        return This.baseNode;
   end getBaseNode;

   function getDoc (This : in out TransformHttpRequestDocument) return Document_Access is
   begin
        return This.document;
   end getDoc;

   --  throws Exception
   function log (This : in out TransformHttpRequestDocument) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        if (This.baseNode) /= (null) then
            stringBuffer.append (To_Unbounded_String ("BaseNode: "));
            stringBuffer.append (This.baseNode.getNodeName);
        else
            stringBuffer.append (To_Unbounded_String ("Log-Error: BaseNode is Null"));
        end if;
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Document: "));
        stringBuffer.append (XmlDocumentHelper_Package.toString (This.document));
        return stringBuffer.toString;
   end log;

   procedure getBaseNode (This : in out TransformHttpRequestDocument) is
      Java_Result : constant Node_Access := TransformHttpRequestDocument'Class (This).getBaseNode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBaseNode;

   procedure getDoc (This : in out TransformHttpRequestDocument) is
      Java_Result : constant Document_Access := TransformHttpRequestDocument'Class (This).getDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDoc;

   procedure log (This : in out TransformHttpRequestDocument) is
      Java_Result : constant Unbounded_String := TransformHttpRequestDocument'Class (This).log;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

begin
   null;
   language := To_Unbounded_String ("en");
   local := To_Unbounded_String ("US");

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;


