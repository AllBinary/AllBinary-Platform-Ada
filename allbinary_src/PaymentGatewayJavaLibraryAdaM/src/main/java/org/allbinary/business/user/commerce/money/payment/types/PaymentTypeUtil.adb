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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package PaymentGatewaysData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out PaymentTypeUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.SHIPPINGMETHODSFILENAME := To_Unbounded_String ("paymentGatewayTypes.xml");
      This.defaultName := Null_Unbounded_String;
      This.paymentTypeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
   begin
        null;
   end Initializer;

   function getInstance return PaymentTypeUtil_Access is
   begin
        return PaymentTypeUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PaymentTypeUtil'Class) is
      stringBuffer : StringMaker_Access;
      sep : Unbounded_String;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        sep := AbPathData_Package.getInstance.SEPARATOR;
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("generic"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("user"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("commerce"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("money"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("payment"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("gateway"));
        stringBuffer.append (sep);
        This.PAYMENTGATEWAYFILEPATHSTRING := stringBuffer.toString;
   end Initialize;

   function Create return PaymentTypeUtil_Access is
      This : constant PaymentTypeUtil_Access := new PaymentTypeUtil;
   begin
      PaymentTypeUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class) is
      paymentType : constant PaymentType_Access := PaymentType_Access (paymentType_Param);
   begin
        This.paymentTypeVector.add (Java_Object_Access (paymentType));
   end add;

   --  throws Exception
   function get (This : in out PaymentTypeUtil; paymentTypeString : Unbounded_String) return PaymentType_Access is
      size : Integer;
      paymentType : PaymentType_Access;
      i : Integer;
   begin
        size := This.paymentTypeVector.size;
        for i in 0 .. (size) - 1 loop
            paymentType := PaymentType_Access (This.paymentTypeVector.get (i));
            if (Java_Compare_To (paymentType.getBasicPaymentType.getName, paymentTypeString)) = (0) then
                return paymentType;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unknown PaymentType: ") & paymentTypeString));
   end get;

   --  throws Exception
   procedure initDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String) is
      stringBuffer : StringMaker_Access;
      abPath : AbPath_Access;
      data : Unbounded_String;
      document : Document_Access;
      nodeList : NodeList_Access;
      node : Node_Access;
      defaultPaymentGatewayNode : Node_Access;
      defaultPaymentGatewayNodeValue : Unbounded_String;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
            This.logUtil.putF (To_Unbounded_String ("initDefault Payment: ") & This.defaultName, PaymentTypeUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("initDefault"));
        end if;
        if StringValidationUtil_Package.getInstance.isEmpty (This.defaultName) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS_Package.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
            stringBuffer.append (storeName);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (This.PAYMENTGATEWAYFILEPATHSTRING);
            abPath := AbPath_Access (AbPath_Package.Create (stringBuffer.toString, This.SHIPPINGMETHODSFILENAME));
            data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (abPath);
            document := DomDocumentHelper_Package.create (data);
            nodeList := document.getElementsByTagName (PaymentGatewaysData_Package.NAME);
            for index in 0 .. (nodeList.getLength) - 1 loop
                node := nodeList.item (index);
                defaultPaymentGatewayNode := DomSearchHelper_Package.getNode (EntryData_Package.getInstance.DEFAULT, node.getChildNodes);
                defaultPaymentGatewayNodeValue := DomNodeHelper_Package.getTextNodeValue (defaultPaymentGatewayNode);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                    This.logUtil.putF (To_Unbounded_String ("DefaultPaymentGatewayNodeValue: ") & defaultPaymentGatewayNodeValue, PaymentTypeUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("initDefault"));
                end if;
                if not (StringValidationUtil_Package.getInstance.isEmpty (defaultPaymentGatewayNodeValue)) then
                    This.defaultName := defaultPaymentGatewayNodeValue;
                end if;
            end loop;
        end if;
   end initDefault;

   --  throws Exception
   function getDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String) return PaymentType_Access is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
            This.logUtil.putF (This.commonStrings.START, PaymentTypeUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"));
        end if;
        PaymentTypeUtil'Class (This).initDefault (storeName);
        if not (StringValidationUtil_Package.getInstance.isEmpty (This.defaultName)) then
            return PaymentTypeUtil'Class (This).get (This.defaultName);
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Default: ") & This.defaultName));
   end getDefault;

   function isContain (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class) return Boolean is
      paymentType : constant PaymentType_Access := PaymentType_Access (paymentType_Param);
   begin
        return This.paymentTypeVector.contains (Java_Object_Access (paymentType));
   end isContain;

   function difference (This : in out PaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      a_PaymentTypeVector : constant BasicArrayList_Access := BasicArrayList_Access (a_PaymentTypeVector_Param);
      diff : BasicArrayList_Access;
      size : Integer;
      paymentType : PaymentType_Access;
      i : Integer;
   begin
        diff := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := This.paymentTypeVector.size;
        for i in 0 .. (size) - 1 loop
            paymentType := PaymentType_Access (This.paymentTypeVector.get (i));
            if not (a_PaymentTypeVector.contains (Java_Object_Access (paymentType))) then
                diff.add (Java_Object_Access (paymentType));
            end if;
        end loop;
        return diff;
   end difference;

   procedure get (This : in out PaymentTypeUtil; paymentTypeString : Unbounded_String) is
      Java_Result : constant PaymentType_Access := PaymentTypeUtil'Class (This).get (paymentTypeString => paymentTypeString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String) is
      Java_Result : constant PaymentType_Access := PaymentTypeUtil'Class (This).getDefault (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefault;

   procedure isContain (This : in out PaymentTypeUtil; paymentType_Param : access PaymentType_Package.PaymentType'Class) is
      Java_Result : constant Boolean := PaymentTypeUtil'Class (This).isContain (paymentType_Param => paymentType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isContain;

   procedure difference (This : in out PaymentTypeUtil; a_PaymentTypeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := PaymentTypeUtil'Class (This).difference (a_PaymentTypeVector_Param => a_PaymentTypeVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

begin
   null;
   instance := PaymentTypeUtil_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;


