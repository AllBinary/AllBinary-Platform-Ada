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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;

package body org.allbinary.business.user.commerce.money.payment.Payment_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out Payment'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      This.isDefault_Field := False;
   end Initialize_Fields;


   procedure Initialize (This : in out Payment'Class; payment_Param : access HashMap_Package.HashMap'Class) is
      payment : constant HashMap_Access := HashMap_Access (payment_Param);
      def : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.name := Java_Unbox (payment.get (PaymentData_Package.NAME));
        This.type_Id := Java_Unbox (payment.get (PaymentData_Package.TYPE_Id));
        This.expiration := Java_Unbox (payment.get (PaymentData_Package.EXPIRATION));
        This.encryption := Java_Unbox (payment.get (EntryData_Package.getInstance.ENCRYPTION));
        This.number := Java_Unbox (SuperCrypt_Package.Create (This.encryption.intValue).decrypt (Java_Unbox (payment.get (PaymentData_Package.NUMBER))));
        This.id := Java_Unbox (payment.get (PaymentData_Package.ID));
        def := Java_Unbox (payment.get (EntryData_Package.getInstance.DEFAULT));
        if ((def) /= (Null_Unbounded_String)) and then ((Java_Compare_To (def, EntryData_Package.getInstance.DEFAULT)) = (0)) then
            This.isDefault_Field := True;
        else
            This.isDefault_Field := False;
        end if;
        This.tenderType := Java_Unbox (payment.get (PaymentData_Package.TENDERTYPE));
        This.transactionType := Java_Unbox (payment.get (PaymentData_Package.TRANSACTIONTYPE));
        This.aba := Java_Unbox (payment.get (PaymentData_Package.ABA));
        This.account := Java_Unbox (payment.get (PaymentData_Package.ACCOUNT));
        This.accountType := Java_Unbox (payment.get (PaymentData_Package.ACCOUNTTYPE));
        This.authorizationCode := Java_Unbox (payment.get (PaymentData_Package.AUTHORIZATIONCODE));
        This.checkNumber := Java_Unbox (payment.get (PaymentData_Package.CHECKNUMBER));
        This.checkType := Java_Unbox (payment.get (PaymentData_Package.CHECKTYPE));
        This.driversLicense := Java_Unbox (payment.get (PaymentData_Package.DRIVERSLICENSE));
        This.magneticInkCheckReader := Java_Unbox (payment.get (PaymentData_Package.MAGNETICINKCHECKREADER));
   end Initialize;

   function Create (payment_Param : access HashMap_Package.HashMap'Class) return Payment_Access is
      This : constant Payment_Access := new Payment;
   begin
      Payment_Package.Initialize (This.all, payment_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Payment'Class; request_Param : access ServletRequest_Package.ServletRequest'Class) is
      request : constant ServletRequest_Access := ServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        This.name := request.getParameter (PaymentData_Package.NAME);
        This.type_Id := request.getParameter (PaymentData_Package.TYPE_Id);
        This.expiration := request.getParameter (PaymentData_Package.EXPIRATION);
        This.number := request.getParameter (PaymentData_Package.NUMBER);
        This.tenderType := request.getParameter (PaymentData_Package.TENDERTYPE);
        This.transactionType := request.getParameter (PaymentData_Package.TRANSACTIONTYPE);
        This.aba := request.getParameter (PaymentData_Package.ABA);
        This.account := request.getParameter (PaymentData_Package.ACCOUNT);
        This.accountType := request.getParameter (PaymentData_Package.ACCOUNTTYPE);
        This.authorizationCode := request.getParameter (PaymentData_Package.AUTHORIZATIONCODE);
        This.checkNumber := request.getParameter (PaymentData_Package.CHECKNUMBER);
        This.checkType := request.getParameter (PaymentData_Package.CHECKTYPE);
        This.driversLicense := request.getParameter (PaymentData_Package.DRIVERSLICENSE);
        This.magneticInkCheckReader := request.getParameter (PaymentData_Package.MAGNETICINKCHECKREADER);
   end Initialize;

   function Create (request_Param : access ServletRequest_Package.ServletRequest'Class) return Payment_Access is
      This : constant Payment_Access := new Payment;
   begin
      Payment_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Payment'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Payment_Access is
      This : constant Payment_Access := new Payment;
   begin
      Payment_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out Payment) return Boolean is
      stringUtil : StringUtil_Access;
      aFalse : Boolean;
   begin
        stringUtil := StringUtil_Package.getInstance;
        aFalse := False;
        if ((This.name) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.name, stringUtil.EMPTY_STRING)) = (0)) then
            return aFalse;
        end if;
        if ((This.type_Id) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.type_Id, stringUtil.EMPTY_STRING)) = (0)) then
            return aFalse;
        end if;
        if ((This.expiration) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.expiration, stringUtil.EMPTY_STRING)) = (0)) then
            return aFalse;
        end if;
        if ((This.number) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.number, stringUtil.EMPTY_STRING)) = (0)) then
            return aFalse;
        end if;
        if (Length (This.number)) > (org_Package.allbinary.business.user.commerce.money.payment.types.CreditCardType.MAXLEN) then
            return aFalse;
        end if;
        return True;
   end isValid;

   procedure setTenderType (This : in out Payment; value : Unbounded_String) is
   begin
        This.tenderType := value;
   end setTenderType;

   procedure setTransactionType (This : in out Payment; value : Unbounded_String) is
   begin
        This.transactionType := value;
   end setTransactionType;

   procedure setAuthorizationCode (This : in out Payment; value : Unbounded_String) is
   begin
        This.authorizationCode := value;
   end setAuthorizationCode;

   procedure setCheckType (This : in out Payment; value : Unbounded_String) is
   begin
        This.checkType := value;
   end setCheckType;

   procedure setCheckNumber (This : in out Payment; value : Unbounded_String) is
   begin
        This.checkNumber := value;
   end setCheckNumber;

   procedure setDriversLicense (This : in out Payment; value : Unbounded_String) is
   begin
        This.driversLicense := value;
   end setDriversLicense;

   procedure setMagneticInkCheckReader (This : in out Payment; value : Unbounded_String) is
   begin
        This.magneticInkCheckReader := value;
   end setMagneticInkCheckReader;

   procedure setAba (This : in out Payment; value : Unbounded_String) is
   begin
        This.aba := value;
   end setAba;

   procedure setAccountType (This : in out Payment; value : Unbounded_String) is
   begin
        This.accountType := value;
   end setAccountType;

   procedure setName (This : in out Payment; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setType (This : in out Payment; value : Unbounded_String) is
   begin
        This.type_Id := value;
   end setType;

   procedure setExpiration (This : in out Payment; value : Unbounded_String) is
   begin
        This.expiration := value;
   end setExpiration;

   procedure setNumber (This : in out Payment; value : Unbounded_String) is
   begin
        This.number := value;
   end setNumber;

   function getId (This : in out Payment) return Unbounded_String is
   begin
        return This.id;
   end getId;

   function getName (This : in out Payment) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getType (This : in out Payment) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function getExpiration (This : in out Payment) return Unbounded_String is
   begin
        return This.expiration;
   end getExpiration;

   function getEncryption (This : in out Payment) return Unbounded_String is
   begin
        return This.encryption;
   end getEncryption;

   function getNumber (This : in out Payment) return Unbounded_String is
   begin
        return This.number;
   end getNumber;

   function getTenderType (This : in out Payment) return Unbounded_String is
   begin
        return This.tenderType;
   end getTenderType;

   function getTransactionType (This : in out Payment) return Unbounded_String is
   begin
        return This.transactionType;
   end getTransactionType;

   function getAba (This : in out Payment) return Unbounded_String is
   begin
        return This.aba;
   end getAba;

   function getAccount (This : in out Payment) return Unbounded_String is
   begin
        return This.account;
   end getAccount;

   function getAccountType (This : in out Payment) return Unbounded_String is
   begin
        return This.accountType;
   end getAccountType;

   function getAuthorizationCode (This : in out Payment) return Unbounded_String is
   begin
        return This.authorizationCode;
   end getAuthorizationCode;

   function getCheckNumber (This : in out Payment) return Unbounded_String is
   begin
        return This.checkNumber;
   end getCheckNumber;

   function getCheckType (This : in out Payment) return Unbounded_String is
   begin
        return This.checkType;
   end getCheckType;

   function getDriversLicense (This : in out Payment) return Unbounded_String is
   begin
        return This.driversLicense;
   end getDriversLicense;

   function getMagneticInkCheckReader (This : in out Payment) return Unbounded_String is
   begin
        return This.magneticInkCheckReader;
   end getMagneticInkCheckReader;

   function getLastFour (This : in out Payment) return Unbounded_String is
   begin
        if ((Length (This.number)) > (PaymentData_Package.MIN)) and then ((Length (This.number)) <= (PaymentData_Package.MAX)) then
            return Unbounded_Slice (This.number, ((Length (This.number)) - (4)) + 1, Length (This.number));
        else
            return To_Unbounded_String ("Invalid #");
        end if;
   end getLastFour;

   function isDefault (This : in out Payment) return Boolean is
   begin
        return This.isDefault_Field;
   end isDefault;

   function toHashMap (This : in out Payment) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (PaymentData_Package.NAME, Java_Box (This.name));
        hashMap.put (PaymentData_Package.TYPE_Id, Java_Box (This.type_Id));
        hashMap.put (PaymentData_Package.EXPIRATION, Java_Box (This.expiration));
        hashMap.put (PaymentData_Package.NUMBER, Payment'Class (This).getLastFour);
        hashMap.put (PaymentData_Package.TENDERTYPE, Java_Box (This.tenderType));
        hashMap.put (PaymentData_Package.TRANSACTIONTYPE, Java_Box (This.transactionType));
        hashMap.put (PaymentData_Package.ABA, Java_Box (This.aba));
        hashMap.put (PaymentData_Package.ACCOUNT, Java_Box (This.account));
        hashMap.put (PaymentData_Package.ACCOUNTTYPE, Java_Box (This.accountType));
        hashMap.put (PaymentData_Package.AUTHORIZATIONCODE, Java_Box (This.authorizationCode));
        hashMap.put (PaymentData_Package.CHECKNUMBER, Java_Box (This.checkNumber));
        hashMap.put (PaymentData_Package.DRIVERSLICENSE, Java_Box (This.driversLicense));
        hashMap.put (PaymentData_Package.MAGNETICINKCHECKREADER, Java_Box (This.magneticInkCheckReader));
        if This.isDefault_Field then
            hashMap.put (EntryData_Package.getInstance.DEFAULT, EntryData_Package.getInstance.DEFAULT);
        else
            hashMap.put (EntryData_Package.getInstance.DEFAULT, StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out Payment; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := Payment'Class (This).toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, PaymentData_Package.PAYMENT, hashMap);
        return node;
   end toXmlNode;

   function toXmlDoc (This : in out Payment) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function view (This : in out Payment) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

   function toValidationInfoDoc (This : in out Payment) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out Payment; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out Payment) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure toXmlNode (This : in out Payment; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := Payment'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out Payment; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := Payment'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.user.commerce.money.payment.Payment_Package;


