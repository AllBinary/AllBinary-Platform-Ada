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


package body org.allbinary.logic.control.workflow.request.BasicWorkFlow_Package is

   procedure Initialize_Fields (This : in out BasicWorkFlow'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWorkFlow'Class) is
      workFlowNode : Node_Access;
   begin
      Initialize_Fields (This);
        This.workFlowName := StringUtil_Package.getInstance.EMPTY_STRING;
        This.workFlowDoc := DomDocumentHelper_Package.create;
        workFlowNode := This.workFlowDoc.createElement (WorkFlowData_Package.getInstance.WORKFLOW);
        This.workFlowDoc.appendChild (workFlowNode);
   end Initialize;

   function Create return BasicWorkFlow_Access is
      This : constant BasicWorkFlow_Access := new BasicWorkFlow;
   begin
      BasicWorkFlow_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out BasicWorkFlow'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      weblisketSession : WeblisketSession_Access;
      requestHashMap : HashMap_Access;
   begin
      Initialize_Fields (This);
        weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.storeName := weblisketSession.getStoreName;
        requestHashMap := RequestParams_Package.Create (pageContext).toHashMap;
        This.workFlowName := Unbounded_String (requestHashMap.get (WorkFlowData_Package.getInstance.NAME));
        This.workFlowDoc := DomDocumentHelper_Package.create (Unbounded_String (requestHashMap.get (WorkFlowData_Package.getInstance.DATA)));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicWorkFlow_Access is
      This : constant BasicWorkFlow_Access := new BasicWorkFlow;
   begin
      BasicWorkFlow_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicWorkFlow'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.workFlowName := Unbounded_String (hashMap.get (WorkFlowData_Package.getInstance.NAME));
        This.storeName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        This.workFlowDoc := DomDocumentHelper_Package.create (Unbounded_String (hashMap.get (WorkFlowData_Package.getInstance.DATA)));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicWorkFlow_Access is
      This : constant BasicWorkFlow_Access := new BasicWorkFlow;
   begin
      BasicWorkFlow_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getName (This : in out BasicWorkFlow) return Unbounded_String is
   begin
        return This.workFlowName;
   end getName;

   function getStoreName (This : in out BasicWorkFlow) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   function getKey (This : in out BasicWorkFlow) return Java_Object_Access is
   begin
        return Java_Object_Access (This.getName);
   end getKey;

   --  throws Exception
   function toVector (This : in out BasicWorkFlow) return BasicArrayList_Access is
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := BasicArrayListD_Package.Create;
        values.add (This.workFlowName);
        values.add (This.storeName);
        values.add (XmlDocumentHelper_Package.toString (This.workFlowDoc));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.add (time);
        values.add (time);
        return values;
   end toVector;

   --  throws Exception
   function toHashMap (This : in out BasicWorkFlow) return HashMap_Access is
      hashMap : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (WorkFlowData_Package.getInstance.NAME, This.workFlowName);
        hashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
        hashMap.put (WorkFlowData_Package.getInstance.DATA, XmlDocumentHelper_Package.toString (This.workFlowDoc));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return hashMap;
   end toHashMap;

   function toXmlNode (This : in out BasicWorkFlow; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      keySet : Set_Access;
      node : Node_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      name : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
   begin
        begin
            hashMap := This.toHashMap;
            keySet := hashMap.keySet;
            node := document.createElement (WorkFlowData_Package.getInstance.WORKFLOW);
            nameArray := keySet.toArray;
            size := nameArray'Length;
            for index in 0 .. (size) - 1 loop
                name := Unbounded_String (nameArray (index));
                value := Unbounded_String (hashMap.get (name));
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
            end loop;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicWorkFlow_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   function toXmlDoc (This : in out BasicWorkFlow) return Document_Access is
   begin
        begin
            return This.workFlowDoc;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicWorkFlow_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlDoc()"), e);
            end if;
            return null;
                end;
        end;
   end toXmlDoc;

   function isValid (This : in out BasicWorkFlow) return Boolean is
      returnBoolean : Boolean;
   begin
        begin
            returnBoolean := True;
            if (This.workFlowName) = (Null_Unbounded_String) then
                returnBoolean := False;
            end if;
            return returnBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), BasicWorkFlow_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out BasicWorkFlow) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.workFlowName) = (Null_Unbounded_String) then
                stringBuffer.append (To_Unbounded_String ("No WorkFlow name specified."));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), BasicWorkFlow_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out BasicWorkFlow) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out BasicWorkFlow; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out BasicWorkFlow; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicWorkFlow'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out BasicWorkFlow; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicWorkFlow'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.control.workflow.request.BasicWorkFlow_Package;


