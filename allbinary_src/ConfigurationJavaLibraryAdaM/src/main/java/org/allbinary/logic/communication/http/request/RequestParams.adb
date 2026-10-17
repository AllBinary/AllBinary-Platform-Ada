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


package body org.allbinary.logic.communication.http.request.RequestParams_Package is

   procedure Initialize_Fields (This : in out RequestParams'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.KEY := To_Unbounded_String ("Key: ");
      This.VALUE := To_Unbounded_String (" Value: ");
   end Initialize_Fields;


   procedure Initialize (This : in out RequestParams'Class) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (To_Unbounded_String ("New RequestParams Size: 0"), RequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      RequestParams_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out RequestParams'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        This.map := request.getParameterMap;
        This.logUtil.putF (To_Unbounded_String ("RequestParams Size: ") & Java_Image (This.getMap.keySet.size), RequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      RequestParams_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RequestParams'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Initialize_Fields (This);
        This.map := pageContext.getRequest.getParameterMap;
        This.logUtil.putF (To_Unbounded_String ("Request Params Size: ") & Java_Image (This.getMap.keySet.size), RequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      RequestParams_Package.Initialize (This.all, pageContext_Param);
      return This;
   end Create;

   procedure setMap (This : in out RequestParams; map_Param : access Map_Package.Map'Class) is
      map : constant Map_Access := Map_Access (map_Param);
   begin
        This.map := map;
   end setMap;

   function getMap (This : in out RequestParams) return Map_Access is
   begin
        return This.map;
   end getMap;

   function toXmlNode (This : in out RequestParams; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      stringBuffer : StringMaker_Access;
      keys : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key_Case : Unbounded_String;
      values : Unbounded_String_Array_Access;
      i : Integer;
   begin
        begin
            node := document.createElement (RequestData_Package.REQUEST);
            stringBuffer := StringMaker_Package.Create;
            keys := This.map.keySet;
            keyArray := keys.toArray;
            size := keyArray'Length;
            for i in 0 .. (size) - 1 loop
                key_Case := Unbounded_String (keyArray (i));
                values := Unbounded_String_Array_Access (This.map.get (key_Case));
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.KEY);
                stringBuffer.append (key_Case);
                stringBuffer.append (This.VALUE);
                stringBuffer.append (values (0));
                This.logUtil.putF (stringBuffer.toString, RequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode(document)"));
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, RequestData_Package.PARAMETER, Java_New_String (key_Case), Java_New_String (values (0))));
            end loop;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, RequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode(document)"), e);
            return null;
                end;
        end;
   end toXmlNode;

   --  throws Exception
   function toHashMap (This : in out RequestParams) return HashMap_Access is
      hashMap : HashMap_Access;
      keys : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      stringBuffer : StringMaker_Access;
      key_Case : Unbounded_String;
      values : Unbounded_String_Array_Access;
      i : Integer;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        keys := This.map.keySet;
        keyArray := keys.toArray;
        size := keyArray'Length;
        stringBuffer := StringMaker_Package.Create;
        for i in 0 .. (size) - 1 loop
            key_Case := Unbounded_String (keyArray (i));
            values := Unbounded_String_Array_Access (This.map.get (key_Case));
            hashMap.put (Java_New_String (key_Case), Java_New_String (values (0)));
        end loop;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (To_Unbounded_String ("RequestParams: "));
        stringBuffer.append (This.map.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "toHashMap: "));
        stringBuffer.append (hashMap.toString);
        This.logUtil.putF (stringBuffer.toString, RequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   procedure toXmlNode (This : in out RequestParams; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := RequestParams'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.http.request.RequestParams_Package;


