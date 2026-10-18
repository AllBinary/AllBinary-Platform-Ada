--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 leIIgal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package is

   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package BodyData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out TitleBodyValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TitleBodyValidation'Class) is
      stringUtil : StringUtil_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.START, TitleBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        stringUtil := StringUtil_Package.getInstance;
        This.body_Id := stringUtil.EMPTY_STRING;
        This.titleValidation := TitleNotRequiredValidation_Package.Create;
   end Initialize;

   function Create return TitleBodyValidation_Access is
      This : constant TitleBodyValidation_Access := new TitleBodyValidation;
   begin
      TitleBodyValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TitleBodyValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      nodeList : NodeList_Access;
      aBodyNode : Node_Access;
      aBodyValueNode : Node_Access;
      titleNode : Node_Access;
      index : Integer;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, TitleBodyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(document)"));
        end if;
        nodeList := document.getElementsByTagName (BodyData_Package.getInstance.NAME);
        for index in 0 .. (nodeList.getLength) - 1 loop
            aBodyNode := nodeList.item (index);
            aBodyValueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, aBodyNode.getChildNodes);
            This.body_Id := DomNodeHelper_Package.getTextNodeValue (aBodyValueNode);
            titleNode := DomSearchHelper_Package.getNode (TitleData_Package.getInstance.NAME, aBodyNode.getChildNodes);
            This.titleValidation := TitleNotRequiredValidation_Package.Create (titleNode);
            if (index) > (1) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("To Many Body Nodes"), TitleBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end if;
            end if;
        end loop;
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return TitleBodyValidation_Access is
      This : constant TitleBodyValidation_Access := new TitleBodyValidation;
   begin
      TitleBodyValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TitleBodyValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.START, TitleBodyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(hashmap)"));
        end if;
        TitleBodyValidation'Class (This).getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleBodyValidation_Access is
      This : constant TitleBodyValidation_Access := new TitleBodyValidation;
   begin
      TitleBodyValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out TitleBodyValidation; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.body_Id := Java_Unbox (hashMap.get (BodyData_Package.getInstance.NAME));
        This.titleValidation := TitleNotRequiredValidation_Package.Create (hashMap);
   end getFormData;

   function isValid (This : in out TitleBodyValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TitleBodyValidation"), TitleBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidNotRequired (This.body_Id, BodyData_Package.getInstance.MIN, AbSqlData_Package.MAXBLOB)) then
                isValid := False;
            end if;
            if not (This.titleValidation.isValid.booleanValue) then
                isValid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TitleBodyValidation: ") & Java_Image (isValid), TitleBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), TitleBodyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out TitleBodyValidation) return Unbounded_String is
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), TitleBodyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out TitleBodyValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Title Body: ") & This.body_Id, TitleBodyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode(document)"));
        end if;
        node := ModDomHelper_Package.createNameValueNodes (document, BodyData_Package.getInstance.NAME, This.body_Id);
        node.appendChild (This.titleValidation.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TitleBodyValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TitleBodyValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;


