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


package body org.allbinary.data.tables.user.address.StreetAddressesEntity_Package is

   procedure Initialize_Fields (This : in out StreetAddressesEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StreetAddressesEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
   end Initialize;

   function Create return StreetAddressesEntity_Access is
      This : constant StreetAddressesEntity_Access := new StreetAddressesEntity;
   begin
      StreetAddressesEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddressesEntity'Class; userName : Unbounded_String) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.userName := userName;
   end Initialize;

   function Create (userName : Unbounded_String) return StreetAddressesEntity_Access is
      This : constant StreetAddressesEntity_Access := new StreetAddressesEntity;
   begin
      StreetAddressesEntity_Package.Initialize (This.all, userName);
      return This;
   end Create;

   procedure remove (This : in out StreetAddressesEntity; index : Integer) is
      whereHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap.put (UserData_Package.USERNAME, Java_Box (This.userName));
            whereHashMap.put (StreetAddressData_Package.ID, To_Unbounded_String (Java_Image (index)));
            AbSqlBean (This).deleteWhere (whereHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("remove"), e);
            end if;
                end;
        end;
   end remove;

   procedure add (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class) is
      address : constant StreetAddress_Access := StreetAddress_Access (address_Param);
   begin
        StreetAddressesEntity'Class (This).add (address, TableDataFactory_Package.getInstance.INTEGER_MAX_VALUE_STRING);
   end add;

   procedure add (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class; index : Unbounded_String) is
      address : constant StreetAddress_Access := StreetAddress_Access (address_Param);
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        begin
            values := BasicArrayListD_Package.Create;
            values.add (index);
            values.add (This.userName);
            values.add (StringUtil_Package.getInstance.EMPTY_STRING);
            values.add (address.getName);
            values.add (address.getStreet);
            values.add (address.getCity);
            values.add (address.getState);
            values.add (address.getCode);
            values.add (address.getCountry);
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            values.add (time);
            AbSqlBean (This).insert (values);
            StreetAddressesEntity'Class (This).setDefault (StreetAddressesEntity'Class (This).getLastId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end add;

   procedure update (This : in out StreetAddressesEntity; address_Param : access StreetAddress_Package.StreetAddress'Class) is
      address : constant StreetAddress_Access := StreetAddress_Access (address_Param);
      addressHashMap : HashMap_Access;
      whereKeyValuePairs : HashMap_Access;
   begin
        begin
            addressHashMap := address.toHashMap;
            whereKeyValuePairs := StdUtil_Package.getInstance.createHashMap;
            whereKeyValuePairs.put (StreetAddressData_Package.ID, address.getId);
            whereKeyValuePairs.put (UserData_Package.USERNAME, Java_Box (This.userName));
            AbSqlBean (This).updateWhere (whereKeyValuePairs, addressHashMap);
            StreetAddressesEntity'Class (This).setDefault (address.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("update"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("add"), e);
            end if;
                end;
        end;
   end update;

   function getLastId (This : in out StreetAddressesEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).getLargestIntegerInColumnWhere (StreetAddressData_Package.ID, UserData_Package.USERNAME, This.userName);
   end getLastId;

   function get (This : in out StreetAddressesEntity) return BasicArrayList_Access is
      streetAddressVector : BasicArrayList_Access;
      keyAndValue : HashMap_Access;
      addressList : BasicArrayList_Access;
      size : Integer;
      addressHashMap : HashMap_Access;
      streetAddress : StreetAddress_Access;
      index : Integer;
   begin
        begin
            streetAddressVector := BasicArrayListD_Package.Create;
            keyAndValue := StdUtil_Package.getInstance.createHashMap;
            keyAndValue.put (UserData_Package.USERNAME, Java_Box (This.userName));
            addressList := AbSqlBean (This).getRows (keyAndValue);
            size := addressList.size;
            for index in 0 .. (size) - 1 loop
                addressHashMap := HashMap_Access (addressList.get (index));
                streetAddress := StreetAddress_Package.Create (addressHashMap);
                if (streetAddress) /= (null) then
                    streetAddressVector.add (streetAddress);
                end if;
            end loop;
            return streetAddressVector;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function get (This : in out StreetAddressesEntity; index : Integer) return StreetAddress_Access is
      keyAndValue : HashMap_Access;
      addressHashMap : HashMap_Access;
   begin
        begin
            keyAndValue := StdUtil_Package.getInstance.createHashMap;
            keyAndValue.put (UserData_Package.USERNAME, Java_Box (This.userName));
            keyAndValue.put (StreetAddressData_Package.ID, Java_Box (To_Unbounded_String (Java_Image (index))));
            addressHashMap := AbSqlBean (This).getRow (keyAndValue);
            if (addressHashMap) /= (null) then
                return StreetAddress_Package.Create (addressHashMap);
            else
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function getDefault (This : in out StreetAddressesEntity) return StreetAddress_Access is
      addressHashMap : HashMap_Access;
      updateKeyAndValue : HashMap_Access;
      streetAddress : StreetAddress_Access;
   begin
        begin
            addressHashMap := StdUtil_Package.getInstance.createHashMap;
            updateKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            updateKeyAndValue.put (StreetAddressData_Package.DEFAULT, StreetAddressData_Package.DEFAULT);
            updateKeyAndValue.put (UserData_Package.USERNAME, Java_Box (This.userName));
            addressHashMap := AbSqlBean (This).getRow (updateKeyAndValue);
            if (addressHashMap) /= (null) then
                streetAddress := StreetAddress_Package.Create (addressHashMap);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.commonStrings.SUCCESS, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"));
                end if;
                return streetAddress;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (To_Unbounded_String ("No Default Address Found"), StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"));
                end if;
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getDefault"), e);
            end if;
            return null;
                end;
        end;
   end getDefault;

   procedure setDefault (This : in out StreetAddressesEntity; value : Unbounded_String) is
      updateKeyAndValue : HashMap_Access;
      whereKeyAndValue : HashMap_Access;
      streetAddress : StreetAddress_Access;
   begin
        begin
            updateKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue := StdUtil_Package.getInstance.createHashMap;
            whereKeyAndValue.put (UserData_Package.USERNAME, Java_Box (This.userName));
            streetAddress := StreetAddressesEntity'Class (This).getDefault;
            if (streetAddress) /= (null) then
                updateKeyAndValue.put (StreetAddressData_Package.DEFAULT, StringUtil_Package.getInstance.EMPTY_STRING);
                whereKeyAndValue.put (StreetAddressData_Package.ID, streetAddress.getId);
                AbSqlBean (This).updateWhere (whereKeyAndValue, updateKeyAndValue);
            end if;
            whereKeyAndValue.put (StreetAddressData_Package.ID, Java_Box (value));
            updateKeyAndValue.put (StreetAddressData_Package.DEFAULT, StreetAddressData_Package.DEFAULT);
            AbSqlBean (This).updateWhere (whereKeyAndValue, updateKeyAndValue);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setDefault"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StreetAddressesEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setShippingAddress"), e);
            end if;
                end;
        end;
   end setDefault;

   function getUserName (This : in out StreetAddressesEntity) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function createTableStatement (This : in out StreetAddressesEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (StreetAddressesEntity'Class (This).getTableName).append (This.sqlStrings.START).append (StreetAddressData_Package.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append (UserData_Package.USERNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StreetAddressData_Package.DEFAULT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StreetAddressData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StreetAddressData_Package.STREET).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (StreetAddressData_Package.CITY).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (StreetAddressData_Package.STATE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (StreetAddressData_Package.CODE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (StreetAddressData_Package.COUNTRY).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (StreetAddressData_Package.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out StreetAddressesEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (StreetAddressesEntity'Class (This).createTableStatement);
   end createTable;

   function drop (This : in out StreetAddressesEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end drop;

   procedure get (This : in out StreetAddressesEntity; index : Integer) is
      Java_Result : constant StreetAddress_Access := StreetAddressesEntity'Class (This).get (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;


