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


with java.util.Calendar_Package; use java.util.Calendar_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package PaymentTransactionKeysFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
   package TransactionResult_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype TransactionResultInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access;
   function "=" (Left, Right : TransactionResultInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array;
   function "=" (Left, Right : TransactionResultInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
   subtype TransactionResultInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionResultInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out TransactionResultEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("vresults");
   end Initialize_Fields;


   procedure Initialize (This : in out TransactionResultEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        TransactionResultEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return TransactionResultEntity_Access is
      This : constant TransactionResultEntity_Access := new TransactionResultEntity;
   begin
      TransactionResultEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure remove (This : in out TransactionResultEntity; userName : Unbounded_String; orderNumber : Unbounded_String) is
      whereHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
            whereHashMap.put (OrderData_Package.ID, orderNumber);
            whereHashMap.put (UserData_Package.USERNAME, Java_Box (userName));
            AbSqlBean_Package.AbSqlBean (This).deleteWhere (whereHashMap);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"), e);
            end if;
                end;
        end;
   end remove;

   procedure add (This : in out TransactionResultEntity; userName : Unbounded_String; orderNumber : Unbounded_String; transactionResultInterface_Param : access TransactionResultInterface_Package.TransactionResultInterface'Class) is
      transactionResultInterface : constant TransactionResultInterface_Access := TransactionResultInterface_Access (transactionResultInterface_Param);
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        begin
            values := BasicArrayList_Access (BasicArrayListD_Package.Create);
            values.add (Java_Box (orderNumber));
            values.add (Java_Box (userName));
            values.addAllList (transactionResultInterface.getValues);
            calendar := Calendar_Package.getInstance;
            time := To_Unbounded_String (Java_Image (calendar.getTimeInMillis));
            values.add (Java_Box (time));
            values.add (Java_Box (time));
            AbSqlBean_Package.AbSqlBean (This).insert (values);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end add;

   function getTransactionResultInterface (This : in out TransactionResultEntity; orderNumber : Unbounded_String) return TransactionResultInterface_Access is
      resultHashMap : HashMap_Access;
      updateKeyAndValue : HashMap_Access;
      transactionResult : TransactionResult_Access;
   begin
        begin
            resultHashMap := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
            updateKeyAndValue := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
            updateKeyAndValue.put (OrderData_Package.ID, Java_Box (orderNumber));
            resultHashMap := AbSqlBean_Package.AbSqlBean (This).getRow (updateKeyAndValue);
            if (resultHashMap) /= (null) then
                transactionResult := TransactionResult_Package.Create (resultHashMap);
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.commonStrings.SUCCESS, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransactionResultInterface"));
                end if;
                return TransactionResultInterface_Access (transactionResult);
            else
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, TransactionResultEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransactionResultInterface"), e);
            end if;
            return null;
                end;
        end;
   end getTransactionResultInterface;

   function createTableStatement (This : in out TransactionResultEntity) return Unbounded_String is
      paymentTransactionKeysFactory : PaymentTransactionKeysFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        paymentTransactionKeysFactory := PaymentTransactionKeysFactory_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (OrderData_Package.ID).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (UserData_Package.USERNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.RESULT.toString).append (This.sqlTypeStrings.MAX_INT_NOT_NULL).append (paymentTransactionKeysFactory.PNREF.toString).append (This.sqlTypeStrings.TWELVE_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.RESPMSG.toString).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (paymentTransactionKeysFactory.AUTHCODE.toString).append (This.sqlTypeStrings.SIX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.AVSADDR.toString).append (This.sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.AVSZIP.toString).append (This.sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.ORIGRESULT.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (paymentTransactionKeysFactory.STATUS.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.FRAUDCODE.toString).append (This.sqlTypeStrings.TWO_INT_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.FRAUDMSG.toString).append (This.sqlTypeStrings.MAX_INT_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.ERRCODE.toString).append (This.sqlTypeStrings.MAX_INT_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.SCORE.toString).append (This.sqlTypeStrings.THREE_INT_NOT_NULL);
        stringBuffer.append (paymentTransactionKeysFactory.REASON1.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.REASON2.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.REASON3.toString);
        stringBuffer.append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION1.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION2.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION3.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION4.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION5.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION6.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (paymentTransactionKeysFactory.EXCEPTION7.toString).append (This.sqlTypeStrings.FOUR_INT_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (OrderData_Package.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out TransactionResultEntity) return Unbounded_String is
   begin
        return AbSqlBean_Package.AbSqlBean (This).createTable (TransactionResultEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out TransactionResultEntity) return Unbounded_String is
   begin
        return AbSqlBean_Package.AbSqlBean (This).dropTable;
   end dropTable;

   procedure getTransactionResultInterface (This : in out TransactionResultEntity; orderNumber : Unbounded_String) is
      Java_Result : constant TransactionResultInterface_Access := TransactionResultEntity'Class (This).getTransactionResultInterface (orderNumber => orderNumber);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransactionResultInterface;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package;


