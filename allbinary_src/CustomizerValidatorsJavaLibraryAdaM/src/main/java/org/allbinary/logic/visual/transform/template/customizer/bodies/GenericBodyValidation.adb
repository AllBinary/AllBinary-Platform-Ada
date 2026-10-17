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


package body org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package is

   procedure Initialize_Fields (This : in out GenericBodyValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GenericBodyValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.body_Id := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize;

   function Create return GenericBodyValidation_Access is
      This : constant GenericBodyValidation_Access := new GenericBodyValidation;
   begin
      GenericBodyValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out GenericBodyValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      nodeList : NodeList_Access;
      aBodyNode : Node_Access;
      aBodyValueNode : Node_Access;
      index : Integer;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        nodeList := document.getElementsByTagName (BodyData_Package.getInstance.NAME);
        for index in 0 .. (nodeList.getLength) - 1 loop
            aBodyNode := nodeList.item (index);
            aBodyValueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, aBodyNode.getChildNodes);
            This.body_Id := DomNodeHelper_Package.getTextNodeValue (aBodyValueNode);
        end loop;
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return GenericBodyValidation_Access is
      This : constant GenericBodyValidation_Access := new GenericBodyValidation;
   begin
      GenericBodyValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericBodyValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return GenericBodyValidation_Access is
      This : constant GenericBodyValidation_Access := new GenericBodyValidation;
   begin
      GenericBodyValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out GenericBodyValidation; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.body_Id := Unbounded_String (hashMap.get (BodyData_Package.getInstance.NAME));
   end getFormData;

   function isValid (This : in out GenericBodyValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, GenericBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidNotRequired (This.body_Id, BodyData_Package.getInstance.MIN, AbSqlData_Package.MAXBLOB)) then
                isValid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("BodyValidation: ") & Java_Image (isValid), GenericBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), GenericBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out GenericBodyValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            begin
                stringBuffer.append (To_Unbounded_String ("Error: Data submitted is < "));
                stringBuffer.appendint (Integer (BodyData_Package.getInstance.MIN));
                stringBuffer.append (To_Unbounded_String (" or > "));
                stringBuffer.appendint (Integer (AbSqlData_Package.MAXBLOB));
            end;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), GenericBodyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out GenericBodyValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, BodyData_Package.getInstance.NAME, This.body_Id);
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericBodyValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericBodyValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;


