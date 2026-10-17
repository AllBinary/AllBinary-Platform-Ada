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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.InitInfoEntity_Package; use org.allbinary.business.init.InitInfoEntity_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package; use org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbDatabaseManagement_Package; use org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.business.installer.InitDbCrypted_Package is

   package InitInfoEntity_Package renames org.allbinary.business.init.InitInfoEntity_Package;
   package DatabaseConnectionInfoInterface_Package renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames org.allbinary.business.init.db.DbConnectionInfo_Package;
   package HistoryDbInitInfo_Package renames org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package InventoryDbInitInfo_Package renames org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package LogDbInitInfo_Package renames org.allbinary.business.init.db.LogDbInitInfo_Package;
   package StaticPagesDbInitInfo_Package renames org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package UserDbInitInfo_Package renames org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StoreFrontsEntityFactory_Package renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
   package LogTableEntityFactory_Package renames org.allbinary.data.tables.log.LogTableEntityFactory_Package;
   package StaticPagesEntityFactory_Package renames org.allbinary.data.tables.staticpages.StaticPagesEntityFactory_Package;
   package TransformInfoEntityBuilder_Package renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package UserEntityFactory_Package renames org.allbinary.data.tables.user.UserEntityFactory_Package;
   package BillingAddressesEntityFactory_Package renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;
   package ShippingAddressesEntityFactory_Package renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
   package InventoryEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package OrderHistoryEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderItemsEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
   package PaymentEntityFactory_Package renames org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;
   package PaymentGatewayEntityFactory_Package renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
   package TransactionEntityFactory_Package renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory_Package;
   package TransactionResultEntityFactory_Package renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory_Package;
   package QuoteRequestEntityFactory_Package renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDatabaseManagement_Package renames org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;
   package AbDataOutputStream_Package renames org.allbinary.logic.io.AbDataOutputStream_Package;
   package DataOutputStreamFactory_Package renames org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package FileFactory_Package renames org.allbinary.logic.io.file.FileFactory_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type InitDbCrypted is tagged;
   type InitDbCrypted_Access is access all InitDbCrypted'Class;
   type InitDbCrypted_Access_Array is array (Natural range <>) of InitDbCrypted_Access;
   type InitDbCrypted_Access_Array_Access is access all InitDbCrypted_Access_Array;

   type InitDbCrypted is new AbDatabaseManagement with record
      logUtil : LogUtil_Access;
      userDbInitInfo : UserDbInitInfo_Access;
      inventoryDbInitInfo : InventoryDbInitInfo_Access;
      historyDbInitInfo : HistoryDbInitInfo_Access;
      staticpagesDbInitInfo : StaticPagesDbInitInfo_Access;
      logDbInitInfo : LogDbInitInfo_Access;
      SQL_FILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitDbCrypted'Class; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access);
   function Create (databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return InitDbCrypted_Access;
   function addUsers (This : in out InitDbCrypted) return Boolean;
   procedure addUsers (This : in out InitDbCrypted);
   function addDatabases (This : in out InitDbCrypted) return Boolean;
   procedure addDatabases (This : in out InitDbCrypted);
   function addTables (This : in out InitDbCrypted) return Boolean;
   procedure addTables (This : in out InitDbCrypted);

end org.allbinary.business.installer.InitDbCrypted_Package;


