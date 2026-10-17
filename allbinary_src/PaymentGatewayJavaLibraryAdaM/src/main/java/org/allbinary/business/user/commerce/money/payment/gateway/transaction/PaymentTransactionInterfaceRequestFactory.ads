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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.Basket_Package; use org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package; use org.allbinary.business.user.commerce.money.payment.Payment_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package; use org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package; use org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;
with org.allbinary.data.generator.OrderIdGenerator_Package; use org.allbinary.data.generator.OrderIdGenerator_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Basket_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package TenderTypeFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;
   package TransactionTypeFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;
   package OrderIdGenerator_Package renames Standard.org.allbinary.data.generator.OrderIdGenerator_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderHistoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentTransactionInterfaceRequestFactory is tagged;
   type PaymentTransactionInterfaceRequestFactory_Access is access all PaymentTransactionInterfaceRequestFactory'Class;
   type PaymentTransactionInterfaceRequestFactory_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceRequestFactory_Access;
   type PaymentTransactionInterfaceRequestFactory_Access_Array_Access is access all PaymentTransactionInterfaceRequestFactory_Access_Array;

   type PaymentTransactionInterfaceRequestFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : PaymentTransactionInterfaceRequestFactory_Access;

   procedure Initialize (This : in out PaymentTransactionInterfaceRequestFactory'Class);
   function Create return PaymentTransactionInterfaceRequestFactory_Access;
   function getInstance return PaymentTransactionInterfaceRequestFactory_Access;
   function getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface : TransformInfoInterface_Access) return PaymentTransactionInterface_Access;
   procedure getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface : TransformInfoInterface_Access);
   function generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface : TransformInfoInterface_Access) return PaymentTransactionInterface_Access;
   procedure generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface : TransformInfoInterface_Access);

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;


