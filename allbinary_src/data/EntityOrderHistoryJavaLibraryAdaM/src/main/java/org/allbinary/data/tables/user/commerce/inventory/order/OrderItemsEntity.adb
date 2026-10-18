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


package body org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package is

   procedure Initialize_Fields (This : in out OrderItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("orderitems");
   end Initialize_Fields;


   procedure Initialize (This : in out OrderItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, HistoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        OrderItemsEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return OrderItemsEntity_Access is
      This : constant OrderItemsEntity_Access := new OrderItemsEntity;
   begin
      OrderItemsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out OrderItemsEntity; userName : Unbounded_String; order_Param : access OrderInterface_Package.OrderInterface'Class) is
      order : constant OrderInterface_Access := OrderInterface_Access (order_Param);
      vector : BasicArrayList_Access;
      basket : BasketInterface_Access;
      items : Set_Access;
      ZERO_STRING : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
      inventoryEntity : InventoryEntity_Access;
      itemsArray : Java_Object_Access_Array_Access;
      itemsSize : Integer;
      item : Unbounded_String;
      itemInterface : ItemInterface_Access;
      i : Integer;
   begin
        vector := BasicArrayListD_Package.Create;
        begin
            basket := order.getBasket;
            items := basket.getIds;
            ZERO_STRING := TableDataFactory_Package.getInstance.ZERO_STRING;
            EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
            inventoryEntity := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            itemsArray := items.toArray;
            itemsSize := itemsArray'Length;
            for i in 0 .. (itemsSize) - 1 loop
                item := Java_Unbox (itemsArray (i));
                itemInterface := inventoryEntity.getItem (item);
                vector := BasicArrayListD_Package.Create;
                vector.add (OrderItemIdGenerator_Package.Create.getNext);
                vector.add (order.getId);
                vector.add (TableDataFactory_Package.getInstance.INTEGER_MAX_VALUE_STRING);
                vector.add (userName);
                vector.add (order.getStoreName);
                vector.add (itemInterface.getId);
                vector.add (basket.getNumberOf (item).toString);
                vector.add (itemInterface.getNewOrUsed);
                vector.add (itemInterface.getSummary);
                vector.add (itemInterface.getDistributor);
                vector.add (itemInterface.getIdUsedByDistributor);
                vector.add (itemInterface.getProducedBy);
                vector.add (itemInterface.getProductionDate);
                vector.add (itemInterface.getStartProductionDate);
                vector.add (itemInterface.getDescription);
                vector.add (itemInterface.getKeywords);
                vector.add (itemInterface.getCategory);
                vector.add (itemInterface.getType);
                vector.add (itemInterface.getSmallImage);
                vector.add (itemInterface.getMediumImage);
                vector.add (itemInterface.getLargeImage);
                vector.add (itemInterface.getWeight);
                vector.add (itemInterface.getPrice.toString);
                vector.add (itemInterface.getComment);
                vector.add (itemInterface.getCustoms);
                vector.add (itemInterface.getDownloads);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (EMPTY_STRING);
                vector.add (ZERO_STRING);
                vector.add (ZERO_STRING);
                vector.add (ZERO_STRING);
                vector.add (ZERO_STRING);
                OrderItemsEntity'Class (This).insert (vector);
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Command Success Added: ") & Java_Image (items.size), OrderItemsEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (To_Unbounded_String ("Command Failed: ") & vector.toString, OrderItemsEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure setStatus (This : in out OrderItemsEntity; orderId : Unbounded_String; groupId : Unbounded_String; status : Unbounded_String) is
      whereHashMap : HashMap_Access;
      updateHashMap : HashMap_Access;
   begin
        begin
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            updateHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap.put (OrderData_Package.ID, Java_Box (orderId));
            whereHashMap.put (ShippingMethodData_Package.GROUP, Java_Box (groupId));
            updateHashMap.put (OrderHistoryData_Package.STATUS, Java_Box (status));
            AbSqlBean (This).updateWhere (whereHashMap, updateHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderItemsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("setStatus"), e);
            end if;
                end;
        end;
   end setStatus;

   function isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String) return Boolean is
      itemStatusVector : BasicArrayList_Access;
      size : Integer;
      status : Unbounded_String;
      index : Integer;
   begin
        begin
            itemStatusVector := AbSqlBean (This).getColumnWhere (OrderHistoryData_Package.STATUS, OrderData_Package.ID, orderId);
            size := itemStatusVector.size;
            for index in 0 .. (size) - 1 loop
                status := Java_Unbox (itemStatusVector.get (index));
                if (Java_Compare_To (status, OrderHistoryData_Package.SHIPPED)) /= (0) then
                    return False;
                end if;
            end loop;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderItemsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("isEverythingShipped"), e);
            end if;
            return False;
                end;
        end;
   end isEverythingShipped;

   function getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String) return BasketReview_Access is
      basketReview : BasketReview_Access;
      keyValues : HashMap_Access;
      items : BasicArrayList_Access;
      entryData : EntryData_Access;
      EMPTY_STRING : Unbounded_String;
      itemsArray : Java_Object_Access_Array_Access;
      itemsSize : Integer;
      itemHashMap : HashMap_Access;
      item : Item_Access;
      i : Integer;
   begin
        begin
            basketReview := BasketReview_Package.Create;
            keyValues := StdUtil_Package.getInstance.createHashMap;
            keyValues.put (OrderData_Package.ID, Java_Box (orderId));
            items := AbSqlBean (This).getRows (keyValues);
            entryData := EntryData_Package.getInstance;
            if ((items) /= (null)) and then ((items.size) > (0)) then
                EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
                itemsArray := items.toArray;
                itemsSize := itemsArray'Length;
                for i in 0 .. (itemsSize) - 1 loop
                    itemHashMap := HashMap_Access (itemsArray (i));
                    itemHashMap.put (This.basicItemData.INBASKETS, Java_Box (EMPTY_STRING));
                    itemHashMap.put (entryData.ENABLE, Java_Box (EMPTY_STRING));
                    itemHashMap.put (entryData.TIMECREATED, Java_Box (EMPTY_STRING));
                    itemHashMap.put (entryData.LASTMODIFIED, Java_Box (EMPTY_STRING));
                    itemHashMap.put (This.basicItemData.GROUPS, Java_Box (EMPTY_STRING));
                    itemHashMap.put (This.basicItemData.OPTIONS, Java_Box (EMPTY_STRING));
                    itemHashMap.put (This.basicItemData.PERMISSIONS, Java_Box (EMPTY_STRING));
                    itemHashMap.put (This.basicItemData.SPECIALS, Java_Box (EMPTY_STRING));
                    item := Item_Package.Create (itemHashMap);
                    basketReview.addItem (item);
                end loop;
                return basketReview;
            else
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, OrderItemsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getBasketReview"), e);
            end if;
            return null;
                end;
        end;
   end getBasketReview;

   function createTableStatement (This : in out OrderItemsEntity) return Unbounded_String is
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
        stringBuffer.append (ShippingMethodData_Package.GROUP);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (UserData_Package.USERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (StoreFrontData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.ID);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.NUMBER);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.NEWORUSED);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.SUMMARY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.DISTRIBUTOR);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.IDUSEDBYDISTRIBUTOR);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRODUCEDBY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRODUCTIONDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.STARTPRODUCTIONDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.DESCRIPTION);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (This.basicItemData.KEYWORDS);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.CATEGORY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.TYPE_Id);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.SMALLIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.MEDIUMIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.LARGEIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.WEIGHT);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRICE);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(20) NOT NULL,"));
        stringBuffer.append (This.basicItemData.COMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (This.basicItemData.CUSTOMS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.DOWNLOADS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (ShippingMethodData_Package.COST);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.TAX);
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
        stringBuffer.append (entryData.SPECIAL);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(255) ,"));
        stringBuffer.append (OrderHistoryData_Package.STATUS);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.CANCELINFO);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.CANCELTYPE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.SHIPPEDDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (OrderHistoryData_Package.ORDERDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (OrderHistoryData_Package.TRANSDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (OrderHistoryData_Package.CANCELDATE);
        stringBuffer.append (To_Unbounded_String (" BIGINT(19) UNSIGNED ,"));
        stringBuffer.append (To_Unbounded_String ("PRIMARY KEY("));
        stringBuffer.append (entryData.ID);
        stringBuffer.append (To_Unbounded_String (") )"));
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out OrderItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (OrderItemsEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out OrderItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String) is
      Java_Result : constant Boolean := OrderItemsEntity'Class (This).isEverythingShipped (orderId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEverythingShipped;

   procedure getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String) is
      Java_Result : constant BasketReview_Access := OrderItemsEntity'Class (This).getBasketReview (orderId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasketReview;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;


