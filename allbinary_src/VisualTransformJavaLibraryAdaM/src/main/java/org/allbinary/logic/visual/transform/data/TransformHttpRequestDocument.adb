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


with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package; use org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package body org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package AcceptableResponseGenerator_Package renames Standard.org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   function "=" (Left, Right : WeblisketSession_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   function "=" (Left, Right : WeblisketSession_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketSession_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   function "=" (Left, Right : SearchRequest_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SearchRequest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.search.SearchRequest_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out TransformHttpRequestDocument'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.baseNode := null;
      This.document := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformHttpRequestDocument'Class; pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      weblisketSession : constant WeblisketSession_Access := WeblisketSession_Access (weblisketSession_Param);
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
                This.logUtil.putF (TransformHttpRequestDocument'Class (This).log, TransformHttpRequestDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformHttpRequestDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformHttpRequestDocument_Access is
      This : constant TransformHttpRequestDocument_Access := new TransformHttpRequestDocument;
   begin
      TransformHttpRequestDocument_Package.Initialize (This.all, pageContext_Param, weblisketSession_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformHttpRequestDocument'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformHttpRequestDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformHttpRequestDocument_Access is
      This : constant TransformHttpRequestDocument_Access := new TransformHttpRequestDocument;
   begin
      TransformHttpRequestDocument_Package.Initialize (This.all, searchRequest_Param);
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

begin
   null;
   language := To_Unbounded_String ("en");
   local := To_Unbounded_String ("US");

end org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;


