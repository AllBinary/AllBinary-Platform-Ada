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


package body org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package is

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
        This.setTableName (This.tableName);
   end Initialize;

   function Create return OrderHistoryEntity_Access is
      This : constant OrderHistoryEntity_Access := new OrderHistoryEntity;
   begin
      OrderHistoryEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out OrderHistoryEntity; userName : Unbounded_String; order : Order_Access) is
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
        vector := BasicArrayListD_Package.Create;
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
            This.insert (vector);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (To_Unbounded_String ("Command Failed: ") & Java_Image (vector), This'Unchecked_Access, INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure insert (This : in out OrderHistoryEntity; values : BasicArrayList_Access) is
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, INSERT, e);
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
            updateHashMap.put (OrderHistoryData_Package.STATUS, status);
            if (status.compareTo (OrderHistoryData_Package.CANCELLED)) = (0) then
                updateHashMap.put (OrderHistoryData_Package.CANCELDATE, time);
            elsif (status.compareTo (OrderHistoryData_Package.SHIPPED)) = (0) then
                updateHashMap.put (OrderHistoryData_Package.SHIPPEDDATE, time);
            end if;
            AbSqlBean (This).updateWhere (OrderData_Package.ID, orderId, updateHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("setStatus"), e);
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
            updateHashMap.put (PaymentData_Package.METHOD, paymentMethod);
            updateHashMap.put (OrderHistoryData_Package.TRANSDATE, time);
            AbSqlBean (This).updateWhere (OrderData_Package.ID, orderId, updateHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("setPaymentMethod"), e);
            end if;
                end;
        end;
   end setPaymentMethod;

   --  throws Exception
   function getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface : StoreFrontInterface_Access) return BasicArrayList_Access is
      orderReviewVector : BasicArrayList_Access;
      whereHashMap : HashMap_Access;
      orderHashMapVector : BasicArrayList_Access;
      size : Integer;
      orderReviewHashMap : HashMap_Access;
      orderReview : OrderHistory_Access;
      i : Integer;
   begin
        orderReviewVector := BasicArrayListD_Package.Create;
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (StoreFrontData_Package.getInstance.NAME, storeFrontInterface.getName);
        orderHashMapVector := AbSqlBean (This).getRows (whereHashMap);
        size := orderHashMapVector.size;
        for i in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (i));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (orderReview);
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
        orderReviewVector := BasicArrayListD_Package.Create;
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (UserData_Package.USERNAME, userName);
        orderHashMapVector := AbSqlBean (This).getRows (whereHashMap);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (orderReview);
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
        orderReviewVector := BasicArrayListD_Package.Create;
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (OrderHistoryData_Package.STATUS, status);
        orderHashMapVector := AbSqlBean (This).getRowsWhereBetween (whereHashMap, OrderHistoryData_Package.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (orderReview);
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
        orderReviewVector := BasicArrayListD_Package.Create;
        orderHashMapVector := AbSqlBean (This).getRowsWhereBetween (OrderHistoryData_Package.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            orderReviewHashMap := HashMap_Access (orderHashMapVector.get (index));
            orderReview := OrderHistory_Package.Create (Basket_Package.Create, orderReviewHashMap);
            orderReviewVector.add (orderReview);
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
        whereHashMap.put (OrderData_Package.ID, id);
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
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   function dropTable (This : in out OrderHistoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   --  throws Exception
   procedure update (This : in out OrderHistoryEntity; whereHashMap : HashMap_Access; orderHashMap : HashMap_Access) is
   begin
        begin
            This.updateWhere (whereHashMap, orderHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end update;

   procedure getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface : StoreFrontInterface_Access) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getStoreOrders (storeFrontInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreOrders;

   procedure getOrders (This : in out OrderHistoryEntity; userName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrders (This : in out OrderHistoryEntity; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (status, fromDate, toDate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrders (This : in out OrderHistoryEntity; fromDate : Unbounded_String; toDate : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := OrderHistoryEntity'Class (This).getOrders (fromDate, toDate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

   procedure getOrder (This : in out OrderHistoryEntity; id : Unbounded_String) is
      Java_Result : constant OrderHistory_Access := OrderHistoryEntity'Class (This).getOrder (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrder;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;


