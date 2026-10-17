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


package body org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package is

   procedure Initialize_Fields (This : in out PaymentTypeUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.SHIPPINGMETHODSFILENAME := To_Unbounded_String ("paymentGatewayTypes.xml");
      This.defaultName := Null_Unbounded_String;
      This.paymentTypeVector := BasicArrayListD_Package.Create;
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

   procedure add (This : in out PaymentTypeUtil; paymentType : PaymentType_Access) is
   begin
        This.paymentTypeVector.add (paymentType);
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
            if (paymentType.getBasicPaymentType.getName.compareTo (paymentTypeString)) = (0) then
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
            This.logUtil.putF (To_Unbounded_String ("initDefault Payment: ") & This.defaultName, This'Unchecked_Access, To_Unbounded_String ("initDefault"));
        end if;
        if StringValidationUtil_Package.getInstance.isEmpty (This.defaultName) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
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
                    This.logUtil.putF (To_Unbounded_String ("DefaultPaymentGatewayNodeValue: ") & defaultPaymentGatewayNodeValue, This'Unchecked_Access, To_Unbounded_String ("initDefault"));
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getDefault"));
        end if;
        This.initDefault (storeName);
        if not (StringValidationUtil_Package.getInstance.isEmpty (This.defaultName)) then
            return This.get (This.defaultName);
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Default: ") & This.defaultName));
   end getDefault;

   function isContain (This : in out PaymentTypeUtil; paymentType : PaymentType_Access) return Boolean is
   begin
        return This.paymentTypeVector.contains (paymentType);
   end isContain;

   function difference (This : in out PaymentTypeUtil; a_PaymentTypeVector : BasicArrayList_Access) return BasicArrayList_Access is
      diff : BasicArrayList_Access;
      size : Integer;
      paymentType : PaymentType_Access;
      i : Integer;
   begin
        diff := BasicArrayListD_Package.Create;
        size := This.paymentTypeVector.size;
        for i in 0 .. (size) - 1 loop
            paymentType := PaymentType_Access (This.paymentTypeVector.get (i));
            if not (a_PaymentTypeVector.contains (paymentType)) then
                diff.add (paymentType);
            end if;
        end loop;
        return diff;
   end difference;

   procedure get (This : in out PaymentTypeUtil; paymentTypeString : Unbounded_String) is
      Java_Result : constant PaymentType_Access := PaymentTypeUtil'Class (This).get (paymentTypeString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getDefault (This : in out PaymentTypeUtil; storeName : Unbounded_String) is
      Java_Result : constant PaymentType_Access := PaymentTypeUtil'Class (This).getDefault (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefault;

   procedure isContain (This : in out PaymentTypeUtil; paymentType : PaymentType_Access) is
      Java_Result : constant Boolean := PaymentTypeUtil'Class (This).isContain (paymentType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isContain;

   procedure difference (This : in out PaymentTypeUtil; a_PaymentTypeVector : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := PaymentTypeUtil'Class (This).difference (a_PaymentTypeVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

begin
   null;
   instance := PaymentTypeUtil_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;


