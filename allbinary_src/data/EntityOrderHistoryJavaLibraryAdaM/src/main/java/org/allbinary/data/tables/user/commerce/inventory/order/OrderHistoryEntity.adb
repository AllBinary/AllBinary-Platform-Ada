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
with java.util.Random_Package; use java.util.Random_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.address.BillingAddressData_Package; use org.allbinary.business.user.address.BillingAddressData_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.Basket_Package; use org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package; use org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethods_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.data.generator.OrderHistoryIdGenerator_Package; use org.allbinary.data.generator.OrderHistoryIdGenerator_Package;
with org.allbinary.data.tables.TableDataFactory_Package; use org.allbinary.data.tables.TableDataFactory_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

package body org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package Random_Package renames Standard.java.util.Random_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package HistoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package BillingAddressData_Package renames Standard.org.allbinary.business.user.address.BillingAddressData_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Basket_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
   package TaxFactory_Package renames Standard.org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package ShippingMethods_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package OrderHistoryIdGenerator_Package renames Standard.org.allbinary.data.generator.OrderHistoryIdGenerator_Package;
   package TableDataFactory_Package renames Standard.org.allbinary.data.tables.TableDataFactory_Package;
   package BillingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
   package ShippingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   package PaymentEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   procedure Initialize_Fields (This : in out OrderHistoryEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("orderhistory");
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, HistoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        OrderHistoryEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return OrderHistoryEntity_Access is
      This : constant OrderHistoryEntity_Access := new OrderHistoryEntity;
   begin
      OrderHistoryEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out OrderHistoryEntity; userName : Unbounded_String; order_Param : access Order_Package.Order'Class) is
      order : constant Order_Access := Order_Access (order_Param);
      vector : BasicArrayList_Access;
      paymentInterface : PaymentInterface_Access;
      billingAddress : StreetAddress_Access;
      shippingAddress : StreetAddress_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      shippingInterface : ShippingInterface_Access;
      shippingCost : Money_Access;
      basketInterface : BasketInterface_Access;
      subTotal : Money_Access;
      taxRate : Float;
      tax : Money_Access;
      total : Money_Access;
      empty : Unbounded_String;
      ZERO : Unbounded_String;
      calendar : Calendar_Access;
      time : Unbounded_String;
      random : Integer;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        begin
            paymentInterface := PaymentEntity_Package.Create.getDefault (userName);
            billingAddress := BillingAddressesEntity_Package.Create (userName).getDefault;
            shippingAddress := ShippingAddressesEntity_Package.Create (userName).getDefault;
            abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (order.getStoreName);
            shippingInterface := ShippingMethods_Package.Create (abeClientInformation, storeFrontInterface).getShippingInterface (order.getShippingMethod);
            shippingCost := shippingInterface.getCost (order);
            basketInterface := order.getBasket;
            subTotal := basketInterface.getSubTotal;
            taxRate := TaxFactory_Package.getInstance.getInstance (abeClientInformation, storeFrontInterface).getTaxRate (shippingAddress, storeFrontInterface);
            tax := Money_Package.Create;
            total := Money_Package.Create;
            total.add (shippingCost.toString);
            total.add (subTotal.toString);
            tax.add (total.toString);
            tax.multiply (taxRate);
            total.add (tax.toString);
            empty := StringUtil_Package.getInstance.EMPTY_STRING;
            vector.add (OrderHistoryIdGenerator_Package.Create.getNext);
            ZERO := TableDataFactory_Package.getInstance.ZERO_STRING;
            vector.add (order.getId);
            vector.add (userName);
            vector.add (order.getStoreName);
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            vector.add (ZERO);
            vector.add (time);
            vector.add (ZERO);
            vector.add (ZERO);
            vector.add (OrderHistoryData_Package.PREPROCESSING);
            vector.add (order.getPaymentMethod);
            if (paymentInterface) /= (null) then
                vector.add (paymentInterface.getName);
                vector.add (paymentInterface.getType);
                vector.add (paymentInterface.getExpiration);
                random := Random_Package.Create.nextInt (SuperCrypt_Package.KEYMAX);
                vector.add (SuperCrypt_Package.Create (random).encrypt (paymentInterface.getNumber));
                vector.add (random.toString);
            else
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (ZERO);
            end if;
            if (billingAddress) /= (null) then
                vector.add (billingAddress.getName);
                vector.add (billingAddress.getStreet);
                vector.add (billingAddress.getCity);
                vector.add (billingAddress.getState);
                vector.add (billingAddress.getCode);
                vector.add (billingAddress.getCountry);
            else
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
            end if;
            if (shippingAddress) /= (null) then
                vector.add (shippingAddress.getName);
                vector.add (shippingAddress.getStreet);
                vector.add (shippingAddress.getCity);
                vector.add (shippingAddress.getState);
                vector.add (shippingAddress.getCode);
                vector.add (shippingAddress.getCountry);
            else
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
                vector.add (empty);
            end if;
            vector.add (order.getShippingMethod);
            vector.add (subTotal.toString);
            vector.add (shippingCost.toString);
            vector.add (tax.toString);
            vector.add (total.toString);
            vector.add (order.getSpecial);
            vector.add (order.getUserComments);
            vector.add (order.getUserCancelComments);
            vector.add (order.getStoreComments);
            vector.add (order.getStoreCancelComments);
            OrderHistoryEntity'Class (This).insert (vector);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, OrderHistoryEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (To_Unbounded_String ("Command Failed: ") & Java_Image (vector), OrderHistoryEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure insert (This : in out OrderHistoryEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, OrderHistoryEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderHistoryEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure setStatus (This : in out OrderHistoryEntity; orderId : Unbounded_String; status : Unbounded_String) is
      calendar : Calendar_Access;
      time : Unbounded_String;
      updateHashMap : HashMap_Access;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            updateHashMap := StdUtil_Package.getInstance.createHashMap;
            updateHashMap.put (OrderHistoryData_Package.STATUS, Java_Box (status));
            if (Java_Compare_To (status, OrderHistoryData_Package.CANCELLED)) = (0) then
                updateHashMap.put (OrderHistoryData_Package.CANCELDATE, Java_Box (time));
            elsif (Java_Compare_To (status, OrderHistoryData_Package.SHIPPED)) = (0) then
                updateHashMap.put (OrderHistoryData_Package.SHIPPEDDATE, Java_Box (time));
            end if;
            AbSqlBean (This).updateWhere (OrderData_Package.ID, orderId, updateHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderHistoryEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setStatus"), e);
            end if;
                end;
        end;
   end setStatus;

   procedure setPaymentMethod (This : in out OrderHistoryEntity; orderId : Unbounded_String; paymentMethod : Unbounded_String) is
      calendar : Calendar_Access;
      time : Unbounded_String;
      updateHashMap : HashMap_Access;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            time := Java_New_String (calendar.getTimeInMillis.toString);
            updateHashMap := StdUtil_Package.getInstance.createHashMap;
            updateHashMap.put (PaymentData_Package.METHOD, Java_Box (paymentMethod));
            updateHashMap.put (OrderHistoryData_Package.TRANSDATE, Java_Box (time));
            AbSqlBean (This).updateWhere (OrderData_Package.ID, orderId, updateHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderHistoryEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setPaymentMethod"), e);
            end if;
                end;
        end;
   end setPaymentMethod;

   --  throws Exception
   function getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      orderReviewVector : BasicArrayList_Access;
      whereHashMap : HashMap_Access;
      orderHashMapVector : BasicArrayList_Access;
      size : Integer;
      orderReviewHashMap : HashMap_Access;
      orderReview : OrderHistory_Access;
      i : Integer;
   begin
        orderReviewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeFrontInterface.getName));
        orderHashMapVector := AbSqlBean (This).getRows (whereHashMap);
        size := orderHashMapVector.size;
        for i in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (i));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (Java_Object_Access (orderReview));
        end loop;
        return orderReviewVector;
   end getStoreOrders;

   --  throws Exception
   function getOrders (This : in out OrderHistoryEntity; userName : Unbounded_String) return BasicArrayList_Access is
      orderReviewVector : BasicArrayList_Access;
      whereHashMap : HashMap_Access;
      orderHashMapVector : BasicArrayList_Access;
      size : Integer;
      orderReviewHashMap : HashMap_Access;
      orderReview : OrderHistory_Access;
      index : Integer;
   begin
        orderReviewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (UserData_Package.USERNAME, Java_Box (userName));
        orderHashMapVector := AbSqlBean (This).getRows (whereHashMap);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (Java_Object_Access (orderReview));
        end loop;
        return orderReviewVector;
   end getOrders;

   --  throws Exception
   function getOrders (This : in out OrderHistoryEntity; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access is
      orderReviewVector : BasicArrayList_Access;
      whereHashMap : HashMap_Access;
      orderHashMapVector : BasicArrayList_Access;
      size : Integer;
      orderReviewHashMap : HashMap_Access;
      orderReview : OrderHistory_Access;
      index : Integer;
   begin
        orderReviewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (OrderHistoryData_Package.STATUS, Java_Box (status));
        orderHashMapVector := AbSqlBean (This).getRowsWhereBetween (whereHashMap, OrderHistoryData_Package.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (Java_Object_Access (orderReview));
        end loop;
        return orderReviewVector;
   end getOrders;

   --  throws Exception
   function getOrders (This : in out OrderHistoryEntity; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access is
      orderReviewVector : BasicArrayList_Access;
      orderHashMapVector : BasicArrayList_Access;
      size : Integer;
      orderReviewHashMap : HashMap_Access;
      orderReview : OrderHistory_Access;
      index : Integer;
   begin
        orderReviewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        orderHashMapVector := AbSqlBean (This).getRowsWhereBetween (OrderHistoryData_Package.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (Java_Object_Access (orderReview));
        end loop;
        return orderReviewVector;
   end getOrders;

   --  throws Exception
   function getOrder (This : in out OrderHistoryEntity; id : Unbounded_String) return OrderHistory_Access is
      whereHashMap : HashMap_Access;
      orderReviewHashMap : HashMap_Access;
      orderHistory : OrderHistory_Access;
   begin
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (OrderData_Package.ID, Java_Box (id));
        orderReviewHashMap := AbSqlBean (This).getRow (whereHashMap);
        if (orderReviewHashMap) /= (null) then
            orderHistory := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            return orderHistory;
        else
            return null;
        end if;
   end getOrder;

   function createTableStatement (This : in out OrderHistoryEntity) return Unbounded_String is
      entryData : EntryData_Access;
      stringBuffer : StringMaker_Access;
   begin
        entryData := EntryData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("CREATE TABLE "));
        stringBuffer.append (This.tableName);
        stringBuffer.append (To_Unbounded_String (" ("));
        stringBuffer.append (entryData.ID);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (OrderData_Package.ID);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (UserData_Package.USERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (StoreFrontData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.SHIPPEDDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (OrderHistoryData_Package.ORDERDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.TRANSDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (OrderHistoryData_Package.CANCELDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (OrderHistoryData_Package.STATUS);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentData_Package.METHOD);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PaymentData_Package.NAME);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (PaymentData_Package.TYPE_Id);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (PaymentData_Package.EXPIRATION);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (PaymentData_Package.NUMBER);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (entryData.ENCRYPTION);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (BillingAddressData_Package.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BillingAddressData_Package.STREET);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BillingAddressData_Package.CITY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BillingAddressData_Package.STATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BillingAddressData_Package.CODE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BillingAddressData_Package.COUNTRY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.STREET);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.CITY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.STATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.CODE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingAddressData_Package.COUNTRY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (ShippingMethodData_Package.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.SUBTOTAL);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.SHIPPINGCOST);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.TAX);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.TOTAL);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (entryData.SPECIAL);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (OrderData_Package.CUSTOMERCOMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (OrderData_Package.CUSTOMERCANCELCOMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (OrderData_Package.STORECOMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (OrderData_Package.STORECANCELCOMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (To_Unbounded_String ("PRIMARY KEY("));
        stringBuffer.append (entryData.ID);
        stringBuffer.append (To_Unbounded_String (") )"));
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out OrderHistoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (OrderHistoryEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out OrderHistoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   --  throws Exception
   procedure update (This : in out OrderHistoryEntity; whereHashMap_Param : access HashMap_Package.HashMap'Class; orderHashMap_Param : access HashMap_Package.HashMap'Class) is
      whereHashMap : constant HashMap_Access := HashMap_Access (whereHashMap_Param);
      orderHashMap : constant HashMap_Access := HashMap_Access (orderHashMap_Param);
   begin
        begin
            OrderHistoryEntity'Class (This).updateWhere (whereHashMap, orderHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end update;

   procedure getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getStoreOrders (storeFrontInterface_Param => storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreOrders;

   procedure getOrders (This : in out OrderHistoryEntity; userName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrders (This : in out OrderHistoryEntity; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (status => status, fromDate => fromDate, toDate => toDate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrders (This : in out OrderHistoryEntity; fromDate : Unbounded_String; toDate : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (fromDate => fromDate, toDate => toDate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrder (This : in out OrderHistoryEntity; id : Unbounded_String) is
      Java_Result : constant OrderHistory_Access := OrderHistoryEntity'Class (This).getOrder (id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrder;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;


