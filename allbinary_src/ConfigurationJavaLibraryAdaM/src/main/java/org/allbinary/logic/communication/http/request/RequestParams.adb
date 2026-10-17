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
        This.logUtil.putF (To_Unbounded_String ("New RequestParams Size: 0"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RequestParams'Class; request : HttpServletRequest_Access) is
   begin
      Initialize_Fields (This);
        This.map := request.getParameterMap;
        This.logUtil.putF (To_Unbounded_String ("RequestParams Size: ") & Java_Image (This.getMap.keySet.size), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (request : HttpServletRequest_Access) return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      Initialize (This.all, request);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RequestParams'Class; pageContext : PageContext_Access) is
   begin
      Initialize_Fields (This);
        This.map := pageContext.getRequest.getParameterMap;
        This.logUtil.putF (To_Unbounded_String ("Request Params Size: ") & Java_Image (This.getMap.keySet.size), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create (pageContext : PageContext_Access) return RequestParams_Access is
      This : constant RequestParams_Access := new RequestParams;
   begin
      Initialize (This.all, pageContext);
      return This;
   end Create;

   procedure setMap (This : in out RequestParams; map : Map_Access) is
   begin
        This.map := map;
   end setMap;

   function getMap (This : in out RequestParams) return Map_Access is
   begin
        return This.map;
   end getMap;

   function toXmlNode (This : in out RequestParams; document : Document_Access) return Node_Access is
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
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("toXmlNode(document)"));
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, RequestData_Package.PARAMETER, Java_New_String (key_Case), Java_New_String (values (0))));
            end loop;
            return node;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toXmlNode(document)"), e);
            return null;
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
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   procedure getMap (This : in out RequestParams) is
      Java_Result : constant Map_Access := RequestParams'Class (This).getMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMap;

   procedure toXmlNode (This : in out RequestParams; document : Document_Access) is
      Java_Result : constant Node_Access := RequestParams'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toHashMap (This : in out RequestParams) is
      Java_Result : constant HashMap_Access := RequestParams'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

end org.allbinary.logic.communication.http.request.RequestParams_Package;


