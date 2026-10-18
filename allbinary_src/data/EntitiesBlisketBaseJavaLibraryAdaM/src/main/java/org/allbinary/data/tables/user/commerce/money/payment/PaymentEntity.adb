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
with java.util.Random_Package; use java.util.Random_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package; use org.allbinary.business.user.commerce.money.payment.Payment_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.data.generator.PaymentIdGenerator_Package; use org.allbinary.data.generator.PaymentIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Random_Package renames Standard.java.util.Random_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package PaymentIdGenerator_Package renames Standard.org.allbinary.data.generator.PaymentIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out PaymentEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("payment");
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        PaymentEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return PaymentEntity_Access is
      This : constant PaymentEntity_Access := new PaymentEntity;
   begin
      PaymentEntity_Package.Initialize (This.all);
      return This;
   end Create;

   function getLastId (This : in out PaymentEntity; userName : Unbounded_String) return Unbounded_String is
   begin
        return AbSqlBean (This).getLargestIntegerInColumnWhere (PaymentData_Package.ID, UserData_Package.USERNAME, userName);
   end getLastId;

   procedure setDefault (This : in out PaymentEntity; userName : Unbounded_String; index : Integer) is
      updateKeyAndValue : HashMap_Access;
      whereKeyAndValue : HashMap_Access;
      paymentInterface : PaymentInterface_Access;
   begin
        begin
            updateKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue.put (UserData_Package.USERNAME, Java_Box (userName));
            paymentInterface := PaymentEntity'Class (This).getDefault (userName);
            if (paymentInterface) /= (null) then
                updateKeyAndValue.put (EntryData_Package.getInstance.DEFAULT, StringUtil_Package.getInstance.EMPTY_STRING);
                whereKeyAndValue.put (PaymentData_Package.ID, paymentInterface.getId);
                AbSqlBean (This).updateWhere (whereKeyAndValue, updateKeyAndValue);
            end if;
            updateKeyAndValue.put (EntryData_Package.getInstance.DEFAULT, EntryData_Package.getInstance.DEFAULT);
            whereKeyAndValue.put (PaymentData_Package.ID, Java_Box (To_Unbounded_String (Java_Image (index))));
            AbSqlBean (This).updateWhere (whereKeyAndValue, updateKeyAndValue);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setDefault"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setDefault"), e);
            end if;
                end;
        end;
   end setDefault;

   function get (This : in out PaymentEntity; userName : Unbounded_String) return BasicArrayList_Access is
      paymentVector : BasicArrayList_Access;
      keyAndValue : HashMap_Access;
      paymentList : BasicArrayList_Access;
      size : Integer;
      paymentHashMap : HashMap_Access;
      payment : Payment_Access;
      index : Integer;
   begin
        begin
            paymentVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            keyAndValue := StdUtil_Package.getInstance.createHashMap;
            keyAndValue.put (UserData_Package.USERNAME, Java_Box (userName));
            paymentList := AbSqlBean (This).getRows (keyAndValue);
            size := paymentList.size;
            for index in 0 .. (size) - 1 loop
                paymentHashMap := HashMap_Access (paymentList.get (index));
                payment := Payment_Package.Create (paymentHashMap);
                if (payment) /= (null) then
                    paymentVector.add (Java_Object_Access (payment));
                end if;
            end loop;
            return paymentVector;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentEntity_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function getDefault (This : in out PaymentEntity; userName : Unbounded_String) return PaymentInterface_Access is
      paymentHashMap : HashMap_Access;
      updateKeyAndValue : HashMap_Access;
      payment : Payment_Access;
   begin
        begin
            paymentHashMap := StdUtil_Package.getInstance.createHashMap;
            updateKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            updateKeyAndValue.put (EntryData_Package.getInstance.DEFAULT, EntryData_Package.getInstance.DEFAULT);
            updateKeyAndValue.put (UserData_Package.USERNAME, Java_Box (userName));
            paymentHashMap := AbSqlBean (This).getRow (updateKeyAndValue);
            if (paymentHashMap) /= (null) then
                payment := Payment_Package.Create (paymentHashMap);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.commonStrings.SUCCESS, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"));
                end if;
                return PaymentInterface_Access (payment);
            else
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"), e);
            end if;
            return null;
                end;
        end;
   end getDefault;

   procedure remove (This : in out PaymentEntity; userName : Unbounded_String; index : Integer) is
      whereHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap.put (UserData_Package.USERNAME, Java_Box (userName));
            whereHashMap.put (PaymentData_Package.ID, To_Unbounded_String (Java_Image (index)));
            AbSqlBean (This).deleteWhere (whereHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"), e);
            end if;
                end;
        end;
   end remove;

   procedure add (This : in out PaymentEntity; userName : Unbounded_String; paymentInterface_Param : access PaymentInterface_Package.PaymentInterface'Class) is
      paymentInterface : constant PaymentInterface_Access := PaymentInterface_Access (paymentInterface_Param);
      vector : BasicArrayList_Access;
      random : Integer;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        begin
            vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            vector.add (PaymentIdGenerator_Package.Create.getNext);
            vector.add (userName);
            vector.add (StringUtil_Package.getInstance.EMPTY_STRING);
            vector.add (paymentInterface.getName);
            vector.add (paymentInterface.getType);
            vector.add (paymentInterface.getExpiration);
            random := Random_Package.Create.nextInt (SuperCrypt_Package.KEYMAX);
            vector.add (SuperCrypt_Package.Create (random).encrypt (paymentInterface.getNumber));
            vector.add (random.toString);
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            vector.add (time);
            AbSqlBean (This).insert (vector);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end add;

   function createTableStatement (This : in out PaymentEntity) return Unbounded_String is
      entryData : EntryData_Access;
      stringBuffer : StringMaker_Access;
   begin
        entryData := EntryData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (PaymentData_Package.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append (UserData_Package.USERNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (entryData.DEFAULT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PaymentData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PaymentData_Package.TYPE_Id).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PaymentData_Package.EXPIRATION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PaymentData_Package.NUMBER).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (entryData.ENCRYPTION).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (PaymentData_Package.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out PaymentEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (PaymentEntity'Class (This).createTableStatement);
   end createTable;

   function drop (This : in out PaymentEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end drop;

   procedure getLastId (This : in out PaymentEntity; userName : Unbounded_String) is
      Java_Result : constant Unbounded_String := PaymentEntity'Class (This).getLastId (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastId;

   procedure get (This : in out PaymentEntity; userName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := PaymentEntity'Class (This).get (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getDefault (This : in out PaymentEntity; userName : Unbounded_String) is
      Java_Result : constant PaymentInterface_Access := PaymentEntity'Class (This).getDefault (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefault;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;


