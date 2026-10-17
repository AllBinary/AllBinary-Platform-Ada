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


package body org.allbinary.business.installer.InitDbCrypted_Package is

   procedure Initialize_Fields (This : in out InitDbCrypted'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.userDbInitInfo := null;
      This.inventoryDbInitInfo := null;
      This.historyDbInitInfo := null;
      This.staticpagesDbInitInfo := null;
      This.logDbInitInfo := null;
      This.SQL_FILE := To_Unbounded_String ("initWeblisket.sql");
   end Initialize_Fields;


   procedure Initialize (This : in out InitDbCrypted'Class; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) is
   begin
        AbDatabaseManagement_Package.Initialize (This, DbConnectionInfo_Access (databaseConnectionInfoInterface));
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return InitDbCrypted_Access is
      This : constant InitDbCrypted_Access := new InitDbCrypted;
   begin
      InitDbCrypted_Package.Initialize (This.all, databaseConnectionInfoInterface);
      return This;
   end Create;

   function addUsers (This : in out InitDbCrypted) return Boolean is
      CUSTOMERDB : Unbounded_String;
      CUSTOMERDBUSER : Unbounded_String;
      CUSTOMERDBPASSWORD : Unbounded_String;
      INVENTORYDB : Unbounded_String;
      INVENTORYDBUSER : Unbounded_String;
      INVENTORYDBPASSWORD : Unbounded_String;
      HISTORYDB : Unbounded_String;
      HISTORYDBUSER : Unbounded_String;
      HISTORYDBPASSWORD : Unbounded_String;
      STATICPAGESDB : Unbounded_String;
      STATICPAGESDBUSER : Unbounded_String;
      STATICPAGESDBPASSWORD : Unbounded_String;
      LOGDB : Unbounded_String;
      LOGDBUSER : Unbounded_String;
      LOGDBPASSWORD : Unbounded_String;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.METHOD_ADD_USERS);
            This.userDbInitInfo := UserDbInitInfo_Package.Create;
            This.inventoryDbInitInfo := InventoryDbInitInfo_Package.Create;
            This.historyDbInitInfo := HistoryDbInitInfo_Package.Create;
            This.staticpagesDbInitInfo := StaticPagesDbInitInfo_Package.Create;
            This.logDbInitInfo := LogDbInitInfo_Package.Create;
            CUSTOMERDB := This.userDbInitInfo.getName;
            CUSTOMERDBUSER := This.userDbInitInfo.getUserName;
            CUSTOMERDBPASSWORD := This.userDbInitInfo.getPassword;
            if not (This.addDbUser (CUSTOMERDB, CUSTOMERDBUSER, CUSTOMERDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & CUSTOMERDBUSER, This'Unchecked_Access, This.METHOD_ADD_USERS);
                return False;
            end if;
            INVENTORYDB := This.inventoryDbInitInfo.getName;
            INVENTORYDBUSER := This.inventoryDbInitInfo.getUserName;
            INVENTORYDBPASSWORD := This.inventoryDbInitInfo.getPassword;
            if not (This.addDbUser (INVENTORYDB, INVENTORYDBUSER, INVENTORYDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & INVENTORYDBUSER, This'Unchecked_Access, This.METHOD_ADD_USERS);
                return False;
            end if;
            HISTORYDB := This.historyDbInitInfo.getName;
            HISTORYDBUSER := This.historyDbInitInfo.getUserName;
            HISTORYDBPASSWORD := This.historyDbInitInfo.getPassword;
            if not (This.addDbUser (HISTORYDB, HISTORYDBUSER, HISTORYDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & HISTORYDBUSER, This'Unchecked_Access, This.METHOD_ADD_USERS);
                return False;
            end if;
            STATICPAGESDB := This.staticpagesDbInitInfo.getName;
            STATICPAGESDBUSER := This.staticpagesDbInitInfo.getUserName;
            STATICPAGESDBPASSWORD := This.staticpagesDbInitInfo.getPassword;
            if not (This.addDbUser (STATICPAGESDB, STATICPAGESDBUSER, STATICPAGESDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & STATICPAGESDBUSER, This'Unchecked_Access, This.METHOD_ADD_USERS);
                return False;
            end if;
            LOGDB := This.logDbInitInfo.getName;
            LOGDBUSER := This.logDbInitInfo.getUserName;
            LOGDBPASSWORD := This.logDbInitInfo.getPassword;
            if not (This.addDbUser (LOGDB, LOGDBUSER, LOGDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & LOGDBUSER, This'Unchecked_Access, This.METHOD_ADD_USERS);
                return False;
            end if;
            This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, This.METHOD_ADD_USERS);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.METHOD_ADD_USERS, e);
            return True;
                end;
        end;
   end addUsers;

   function addDatabases (This : in out InitDbCrypted) return Boolean is
      CUSTOMERDB : Unbounded_String;
      INVENTORYDB : Unbounded_String;
      HISTORYDB : Unbounded_String;
      STATICPAGESDB : Unbounded_String;
      LOGDB : Unbounded_String;
      file : AbFile_Access;
      idOutData : AbDataOutputStream_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
            This.userDbInitInfo := UserDbInitInfo_Package.Create;
            This.inventoryDbInitInfo := InventoryDbInitInfo_Package.Create;
            This.historyDbInitInfo := HistoryDbInitInfo_Package.Create;
            This.staticpagesDbInitInfo := StaticPagesDbInitInfo_Package.Create;
            This.logDbInitInfo := LogDbInitInfo_Package.Create;
            CUSTOMERDB := This.userDbInitInfo.getName;
            if not (This.addDb (CUSTOMERDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & CUSTOMERDB, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
                return False;
            end if;
            INVENTORYDB := This.inventoryDbInitInfo.getName;
            if not (This.addDb (INVENTORYDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & INVENTORYDB, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
                return False;
            end if;
            HISTORYDB := This.historyDbInitInfo.getName;
            if not (This.addDb (HISTORYDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & HISTORYDB, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
                return False;
            end if;
            STATICPAGESDB := This.staticpagesDbInitInfo.getName;
            if not (This.addDb (STATICPAGESDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & STATICPAGESDB, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
                return False;
            end if;
            LOGDB := This.logDbInitInfo.getName;
            if not (This.addDb (LOGDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & LOGDB, This'Unchecked_Access, This.METHOD_ADD_DATABASES);
                return False;
            end if;
            file := FileFactory_Package.getInstance.getInstance (This.SQL_FILE);
            file.createNewFile;
            idOutData := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (file);
            idOutData.writeBytes (This.sqlCommandLog.toString);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.METHOD_ADD_DATABASES, e);
            return True;
                end;
        end;
   end addDatabases;

   function addTables (This : in out InitDbCrypted) return Boolean is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.METHOD_ADD_TABLES);
            stringBuffer.append (UserEntityFactory_Package.getInstance.createTable);
            stringBuffer.append (StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.createTable);
            stringBuffer.append (BillingAddressesEntityFactory_Package.getInstance.getInstance (This.stringUtil.EMPTY_STRING).createTable);
            stringBuffer.append (ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.stringUtil.EMPTY_STRING).createTable);
            stringBuffer.append (PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance.createTable);
            stringBuffer.append (QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance.createTable);
            stringBuffer.append (OrderHistoryEntityFactory_Package.getInstance.createTable);
            stringBuffer.append (OrderItemsEntityFactory_Package.getInstance.createTable);
            stringBuffer.append (TransactionEntityFactory_Package.getInstance.getTransactionEntityInstance.createTable);
            stringBuffer.append (TransactionResultEntityFactory_Package.getInstance.getTransactionResultEntityInstance.createTable);
            stringBuffer.append (PaymentGatewayEntityFactory_Package.getInstance.createTable);
            stringBuffer.append (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.createTable);
            stringBuffer.append (InitInfoEntity_Package.Create.createTable);
            stringBuffer.append (LogTableEntityFactory_Package.getInstance.getLogTableEntityInstance.createTable);
            stringBuffer.append (StaticPagesEntityFactory_Package.getInstance.getStaticPagesEntityInstance.createTable);
            stringBuffer.append (TransformInfoEntityBuilder_Package.getInstance.createTable);
            This.logUtil.putF (Java_Image (ADD_TABLES_RESULTS_LABEL) & stringBuffer.toString, This'Unchecked_Access, This.METHOD_ADD_TABLES);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.METHOD_ADD_TABLES, e);
            return False;
                end;
        end;
   end addTables;

end org.allbinary.business.installer.InitDbCrypted_Package;


