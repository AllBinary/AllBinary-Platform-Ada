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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
with org.allbinary.data.generator.PaymentGatewayIdGenerator_Package; use org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewayEncryptedMapping_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package;
   package PaymentGatewayInterfaceFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;
   package BasicPaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
   package PaymentGatewayIdGenerator_Package renames Standard.org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out PaymentGatewayEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("paymentgateways");
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        PaymentGatewayEntity'Class (This).setTableName (This.tableName);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, PaymentGatewayEntity_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return PaymentGatewayEntity_Access is
      This : constant PaymentGatewayEntity_Access := new PaymentGatewayEntity;
   begin
      PaymentGatewayEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out PaymentGatewayEntity; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
      vector : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.START, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
            vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            vector.add (PaymentGatewayIdGenerator_Package.Create.getNext);
            vector.addAllList (PaymentGatewayEncryptedMapping_Package.Create (paymentGatewayInterface).toVector);
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            vector.add (time);
            vector.add (time);
            AbSqlBean (This).insert (vector);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.END_Id, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end add;

   procedure update (This : in out PaymentGatewayEntity; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
      calendar : Calendar_Access;
      time : Unbounded_String;
      whereKeyValuePairs : HashMap_Access;
      updateHashMap : HashMap_Access;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            paymentGatewayInterface.setLastModified (time);
            whereKeyValuePairs := StdUtil_Package.getInstance.createHashMap;
            whereKeyValuePairs.put (Java_Box (StoreFrontData_Package.getInstance.NAME.toString), paymentGatewayInterface.getStoreName);
            whereKeyValuePairs.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (paymentGatewayInterface.getName));
            if (whereKeyValuePairs.get (EntryData_Package.getInstance.TIMECREATED)) /= (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Don't update TimeCreated for update")));
            end if;
            updateHashMap := PaymentGatewayEncryptedMapping_Package.Create (paymentGatewayInterface).toHashMap;
            AbSqlBean (This).updateWhere (whereKeyValuePairs, updateHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("update"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("update"), e);
            end if;
                end;
        end;
   end update;

   function getPaymentGatewayInterface (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access is
      paymentType : constant BasicPaymentType_Access := BasicPaymentType_Access (paymentType_Param);
      paymentGatewayHashMap : HashMap_Access;
      whereKeyAndValue : HashMap_Access;
      userName : Unbounded_String;
      password : Unbounded_String;
      special1 : Unbounded_String;
      special2 : Unbounded_String;
      special3 : Unbounded_String;
      special4 : Unbounded_String;
      special5 : Unbounded_String;
      special6 : Unbounded_String;
      special7 : Unbounded_String;
      special8 : Unbounded_String;
      special9 : Unbounded_String;
      superCrypt : SuperCrypt_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   begin
        begin
            paymentGatewayHashMap := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue.put (Java_Box (StoreFrontData_Package.getInstance.NAME.toString), Java_Box (storeName));
            whereKeyAndValue.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (paymentType.getName));
            paymentGatewayHashMap := AbSqlBean (This).getRow (whereKeyAndValue);
            if (paymentGatewayHashMap) /= (null) then
                userName := Java_Unbox (paymentGatewayHashMap.get (Java_Box (UserData_Package.USERNAME.toString)));
                password := Java_Unbox (paymentGatewayHashMap.get (Java_Box (UserData_Package.PASSWORD.toString)));
                special1 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL1.toString)));
                special2 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL2.toString)));
                special3 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL3.toString)));
                special4 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL4.toString)));
                special5 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL5.toString)));
                special6 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL6.toString)));
                special7 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL7.toString)));
                special8 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL8.toString)));
                special9 := Java_Unbox (paymentGatewayHashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL9.toString)));
                superCrypt := SuperCrypt_Package.Create (PaymentGatewayData_Package.CRYPTNUM);
                paymentGatewayHashMap.put (Java_Box (UserData_Package.USERNAME.toString), superCrypt.decrypt (userName));
                paymentGatewayHashMap.put (Java_Box (UserData_Package.PASSWORD.toString), superCrypt.decrypt (password));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL1.toString), superCrypt.decrypt (special1));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL2.toString), superCrypt.decrypt (special2));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL3.toString), superCrypt.decrypt (special3));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL4.toString), superCrypt.decrypt (special4));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL5.toString), superCrypt.decrypt (special5));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL6.toString), superCrypt.decrypt (special6));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL7.toString), superCrypt.decrypt (special7));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL8.toString), superCrypt.decrypt (special8));
                paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL9.toString), superCrypt.decrypt (special9));
                paymentGatewayInterface := PaymentGatewayInterfaceFactory_Package.Create.getInstance (paymentGatewayHashMap);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.commonStrings.SUCCESS, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getPaymentGatewayInterface()"));
                end if;
                return paymentGatewayInterface;
            else
                return PaymentGatewayInterfaceFactory_Package.Create.getInstance (paymentType);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (To_Unbounded_String ("Command Failed for paymentType: ") & paymentType.getName, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getPaymentGatewayInterface"), e);
            end if;
            return null;
                end;
        end;
   end getPaymentGatewayInterface;

   function findPaymentTypeVectorByStore (This : in out PaymentGatewayEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      paymentGatewayNameVector : BasicArrayList_Access;
      paymentGatewayVector : BasicArrayList_Access;
      size : Integer;
      paymentTypeString : Unbounded_String;
      paymentType : BasicPaymentType_Access;
      i : Integer;
   begin
        begin
            paymentGatewayNameVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            paymentGatewayNameVector := AbSqlBean (This).getColumnWhere (PaymentGatewayData_Package.NAME.toString, StoreFrontData_Package.getInstance.NAME.toString, storeName);
            if (paymentGatewayNameVector) /= (null) then
                paymentGatewayVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
                size := paymentGatewayNameVector.size;
                for i in 0 .. (size) - 1 loop
                    paymentTypeString := Java_Unbox (paymentGatewayNameVector.get (i));
                    paymentType := BasicPaymentTypeUtil_Package.getInstance.get (paymentTypeString);
                    paymentGatewayVector.add (Java_Object_Access (paymentType));
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.commonStrings.SUCCESS, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("findPaymentTypeVectorByStore()"));
                end if;
                return paymentGatewayVector;
            else
                return BasicArrayList_Access (BasicArrayListD_Package.Create);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("findPaymentTypeVectorByStore"), e);
            end if;
            return null;
                end;
        end;
   end findPaymentTypeVectorByStore;

   procedure remove (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is
      paymentType : constant BasicPaymentType_Access := BasicPaymentType_Access (paymentType_Param);
      whereHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap.put (Java_Box (StoreFrontData_Package.getInstance.NAME.toString), Java_Box (storeName));
            whereHashMap.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (paymentType.getName));
            AbSqlBean (This).deleteWhere (whereHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentGatewayEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"), e);
            end if;
                end;
        end;
   end remove;

   function createTableStatement (This : in out PaymentGatewayEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (PaymentGatewayData_Package.ID.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.ENABLE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (StoreFrontData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.NAME.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentData_Package.METHOD);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.MODE.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.TESTPROTOCOL.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.TESTSERVER.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.TESTPORT.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.TESTPATH.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SERVERPROTOCOL.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SERVER.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SERVERPORT.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SERVERPATH.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (UserData_Package.USERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (UserData_Package.PASSWORD);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.TIMEOUT.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYPROTOCOL.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYSERVER.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYPORT.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYPATH.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYUSERNAME.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYPASSWORD.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.PROXYTIMEOUT.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL1.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL2.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL3.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL4.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL5.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL6.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL7.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL8.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentGatewayData_Package.SPECIAL9.toString);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.LASTMODIFIED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.TIMECREATED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (PaymentGatewayData_Package.ID.toString);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out PaymentGatewayEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (PaymentGatewayEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out PaymentGatewayEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure getPaymentGatewayInterface (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is
      Java_Result : constant PaymentGatewayInterface_Access := PaymentGatewayEntity'Class (This).getPaymentGatewayInterface (storeName => storeName, paymentType_Param => paymentType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentGatewayInterface;

   procedure findPaymentTypeVectorByStore (This : in out PaymentGatewayEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := PaymentGatewayEntity'Class (This).findPaymentTypeVectorByStore (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findPaymentTypeVectorByStore;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;


