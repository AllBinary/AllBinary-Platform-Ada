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


package body org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package is

   procedure Initialize_Fields (This : in out TransactionEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("vtrans");
   end Initialize_Fields;


   procedure Initialize (This : in out TransactionEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        TransactionEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return TransactionEntity_Access is
      This : constant TransactionEntity_Access := new TransactionEntity;
   begin
      TransactionEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure remove (This : in out TransactionEntity; userName : Unbounded_String; orderNumber : Unbounded_String) is
      whereHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap.put (OrderData_Package.ID, orderNumber);
            whereHashMap.put (UserData_Package.USERNAME, Java_Box (userName));
            AbSqlBean (This).deleteWhere (whereHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransactionEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransactionEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"), e);
            end if;
                end;
        end;
   end remove;

   procedure add (This : in out TransactionEntity; userName : Unbounded_String; orderNumber : Unbounded_String; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) is
      paymentTransactionInterface : constant PaymentTransactionInterface_Access := PaymentTransactionInterface_Access (paymentTransactionInterface_Param);
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        begin
            values := BasicArrayListD_Package.Create;
            values.add (orderNumber);
            values.add (userName);
            values.addAllList (paymentTransactionInterface.toVector);
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            values.add (time);
            values.add (time);
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransactionEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransactionEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end add;

   function createTableStatement (This : in out TransactionEntity) return Unbounded_String is
      paymentTransactionKeysFactory : PaymentTransactionKeysFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        paymentTransactionKeysFactory := PaymentTransactionKeysFactory_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (OrderData_Package.ID).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (UserData_Package.USERNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.TRXTYPE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.TENDER.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ACCT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.EXPDATE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.AMT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.AUTHCODE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.MICR.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.CHECKNUM.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.NAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.STREET.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.CITY.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.STATE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ZIP.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DL.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.EMAIL.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.COMMENT1.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.COMMENT2.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ORIGID.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.PONUM.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DESC.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DESC1TO4.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.INVNUM.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOZIP.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SWIPE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.TAXAMT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.COMMCARD.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DUTYAMT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.FREIGHTAMT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ORDERDATE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.TAXEXEMPT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.COUNTRYCODE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.CUSTCODE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.CVV2.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ABA.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ACCTTYPE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DISCOUNT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.FIRSTNAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.LASTNAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPFROMZIP.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.PRENOTE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.CHKTYPE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.DOB.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.PHONENUM.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SS.toString).append (To_Unbounded_String (" VARCHAR(30) NOT NULL,")).append (paymentTransactionKeysFactory.COMPANYNAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.COUNTRY.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOCITY.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOFIRSTNAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOLASTNAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOSTATE.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SHIPTOSTREET.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SPECIAL1.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SPECIAL2.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.SPECIAL3.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (OrderData_Package.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out TransactionEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (TransactionEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out TransactionEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package;


