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


with org.allbinary.business.init.InitInfoEntity_Package; use org.allbinary.business.init.InitInfoEntity_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
with org.allbinary.data.tables.log.LogTableEntityFactory_Package; use org.allbinary.data.tables.log.LogTableEntityFactory_Package;
with org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package; use org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.business.installer.InitDbCrypted_Package is

   package InitInfoEntity_Package renames Standard.org.allbinary.business.init.InitInfoEntity_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StoreFrontsEntityFactory_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
   package LogTableEntityFactory_Package renames Standard.org.allbinary.data.tables.log.LogTableEntityFactory_Package;
   package StaticPagesEntityFactory_Package renames Standard.org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package BillingAddressesEntityFactory_Package renames Standard.org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
   package ShippingAddressesEntityFactory_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
   package PaymentEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
   package PaymentGatewayEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
   package TransactionEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package;
   package TransactionResultEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory_Package;
   package QuoteRequestEntityFactory_Package renames Standard.org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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


   procedure Initialize (This : in out InitDbCrypted'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) is
      databaseConnectionInfoInterface : constant DatabaseConnectionInfoInterface_Access := DatabaseConnectionInfoInterface_Access (databaseConnectionInfoInterface_Param);
   begin
        AbDatabaseManagement_Package.Initialize (This, DbConnectionInfo_Access (databaseConnectionInfoInterface));
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return InitDbCrypted_Access is
      This : constant InitDbCrypted_Access := new InitDbCrypted;
   begin
      InitDbCrypted_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
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
            This.logUtil.putF (This.commonStrings.START, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
            This.userDbInitInfo := UserDbInitInfo_Package.Create;
            This.inventoryDbInitInfo := InventoryDbInitInfo_Package.Create;
            This.historyDbInitInfo := HistoryDbInitInfo_Package.Create;
            This.staticpagesDbInitInfo := StaticPagesDbInitInfo_Package.Create;
            This.logDbInitInfo := LogDbInitInfo_Package.Create;
            CUSTOMERDB := This.userDbInitInfo.getName;
            CUSTOMERDBUSER := This.userDbInitInfo.getUserName;
            CUSTOMERDBPASSWORD := This.userDbInitInfo.getPassword;
            if not (InitDbCrypted'Class (This).addDbUser (CUSTOMERDB, CUSTOMERDBUSER, CUSTOMERDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & CUSTOMERDBUSER, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
                return False;
            end if;
            INVENTORYDB := This.inventoryDbInitInfo.getName;
            INVENTORYDBUSER := This.inventoryDbInitInfo.getUserName;
            INVENTORYDBPASSWORD := This.inventoryDbInitInfo.getPassword;
            if not (InitDbCrypted'Class (This).addDbUser (INVENTORYDB, INVENTORYDBUSER, INVENTORYDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & INVENTORYDBUSER, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
                return False;
            end if;
            HISTORYDB := This.historyDbInitInfo.getName;
            HISTORYDBUSER := This.historyDbInitInfo.getUserName;
            HISTORYDBPASSWORD := This.historyDbInitInfo.getPassword;
            if not (InitDbCrypted'Class (This).addDbUser (HISTORYDB, HISTORYDBUSER, HISTORYDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & HISTORYDBUSER, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
                return False;
            end if;
            STATICPAGESDB := This.staticpagesDbInitInfo.getName;
            STATICPAGESDBUSER := This.staticpagesDbInitInfo.getUserName;
            STATICPAGESDBPASSWORD := This.staticpagesDbInitInfo.getPassword;
            if not (InitDbCrypted'Class (This).addDbUser (STATICPAGESDB, STATICPAGESDBUSER, STATICPAGESDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & STATICPAGESDBUSER, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
                return False;
            end if;
            LOGDB := This.logDbInitInfo.getName;
            LOGDBUSER := This.logDbInitInfo.getUserName;
            LOGDBPASSWORD := This.logDbInitInfo.getPassword;
            if not (InitDbCrypted'Class (This).addDbUser (LOGDB, LOGDBUSER, LOGDBPASSWORD)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_USER) & LOGDBUSER, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
                return False;
            end if;
            This.logUtil.putF (This.commonStrings.END_Id, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_USERS, e);
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
            This.logUtil.putF (This.commonStrings.START, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
            This.userDbInitInfo := UserDbInitInfo_Package.Create;
            This.inventoryDbInitInfo := InventoryDbInitInfo_Package.Create;
            This.historyDbInitInfo := HistoryDbInitInfo_Package.Create;
            This.staticpagesDbInitInfo := StaticPagesDbInitInfo_Package.Create;
            This.logDbInitInfo := LogDbInitInfo_Package.Create;
            CUSTOMERDB := This.userDbInitInfo.getName;
            if not (InitDbCrypted'Class (This).addDb (CUSTOMERDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & CUSTOMERDB, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
                return False;
            end if;
            INVENTORYDB := This.inventoryDbInitInfo.getName;
            if not (InitDbCrypted'Class (This).addDb (INVENTORYDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & INVENTORYDB, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
                return False;
            end if;
            HISTORYDB := This.historyDbInitInfo.getName;
            if not (InitDbCrypted'Class (This).addDb (HISTORYDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & HISTORYDB, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
                return False;
            end if;
            STATICPAGESDB := This.staticpagesDbInitInfo.getName;
            if not (InitDbCrypted'Class (This).addDb (STATICPAGESDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & STATICPAGESDB, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
                return False;
            end if;
            LOGDB := This.logDbInitInfo.getName;
            if not (InitDbCrypted'Class (This).addDb (LOGDB)) then
                This.logUtil.putF (Java_Image (This.UNABLE_TO_CREATE_DATABASE) & LOGDB, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_DATABASES, e);
            return True;
                end;
        end;
   end addDatabases;

   function addTables (This : in out InitDbCrypted) return Boolean is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            This.logUtil.putF (This.commonStrings.START, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_TABLES);
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
            This.logUtil.putF (Java_Image (ADD_TABLES_RESULTS_LABEL) & stringBuffer.toString, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_TABLES);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InitDbCrypted_Access'(This'Unchecked_Access), This.METHOD_ADD_TABLES, e);
            return False;
                end;
        end;
   end addTables;

end org.allbinary.business.installer.InitDbCrypted_Package;


