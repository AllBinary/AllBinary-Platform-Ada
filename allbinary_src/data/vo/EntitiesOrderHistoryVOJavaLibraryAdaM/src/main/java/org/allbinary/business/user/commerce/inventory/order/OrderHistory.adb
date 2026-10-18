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


package body org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package is

   procedure Initialize_Fields (This : in out OrderHistory'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class) is
      basketInterface : constant BasketInterface_Access := BasketInterface_Access (basketInterface_Param);
   begin
        Order_Package.Initialize (This, basketInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class) return OrderHistory_Access is
      This : constant OrderHistory_Access := new OrderHistory;
   begin
      OrderHistory_Package.Initialize (This.all, basketInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) is
      basketInterface : constant BasketInterface_Access := BasketInterface_Access (basketInterface_Param);
      orderHistory : constant OrderHistory_Access := OrderHistory_Access (orderHistory_Param);
   begin
        Order_Package.Initialize (This, orderHistory.getStoreName, basketInterface, orderHistory.getId, orderHistory.getShippingMethod, orderHistory.getSpecial, orderHistory.getPaymentMethod);
        Initialize_Fields (This);
        This.userName := orderHistory.getUserName;
        This.shippingAddress := orderHistory.getShippingAddress;
        This.billingAddress := orderHistory.getBillingAddress;
        This.payment := orderHistory.getPaymentInfo;
        This.shipDate := orderHistory.getShipDate;
        This.orderDate := orderHistory.getOrderDate;
        This.transDate := orderHistory.getTransDate;
        This.cancelDate := orderHistory.getCancelDate;
        This.status := orderHistory.getStatus;
        This.subTotal := orderHistory.getSubTotal;
        This.shippingCost := orderHistory.getShippingCost;
        This.taxes := orderHistory.getTaxes;
        This.total := orderHistory.getTotal;
        Order (This).setUserComments (Java_Unbox (orderHistory.getUserComments));
        Order (This).setUserCancelComments (Java_Unbox (orderHistory.getUserCancelComments));
        Order (This).setStoreComments (Java_Unbox (orderHistory.getStoreComments));
        Order (This).setStoreCancelComments (Java_Unbox (orderHistory.getStoreCancelComments));
   end Initialize;

   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) return OrderHistory_Access is
      This : constant OrderHistory_Access := new OrderHistory;
   begin
      OrderHistory_Package.Initialize (This.all, basketInterface_Param, orderHistory_Param);
      return This;
   end Create;

   procedure Initialize (This : in out OrderHistory'Class; basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistoryHashMap_Param : access HashMap_Package.HashMap'Class) is
      basketInterface : constant BasketInterface_Access := BasketInterface_Access (basketInterface_Param);
      orderHistoryHashMap : constant HashMap_Access := HashMap_Access (orderHistoryHashMap_Param);
   begin
        Order_Package.Initialize (This, Java_Unbox (orderHistoryHashMap.get (StoreFrontData_Package.getInstance.NAME)), basketInterface, Java_Unbox (orderHistoryHashMap.get (OrderData_Package.ID)), Java_Unbox (orderHistoryHashMap.get (ShippingMethodData_Package.NAME)), Java_Unbox (orderHistoryHashMap.get (EntryData_Package.getInstance.SPECIAL)), Java_Unbox (orderHistoryHashMap.get (PaymentData_Package.METHOD)));
        Initialize_Fields (This);
        This.shippingAddress := StreetAddress_Package.Create (Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.NAME)), Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.STREET)), Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.CITY)), Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.STATE)), Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.CODE)), Java_Unbox (orderHistoryHashMap.get (ShippingAddressData_Package.COUNTRY)));
        This.billingAddress := StreetAddress_Package.Create (Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.NAME)), Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.STREET)), Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.CITY)), Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.STATE)), Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.CODE)), Java_Unbox (orderHistoryHashMap.get (BillingAddressData_Package.COUNTRY)));
        This.payment := Payment_Package.Create (orderHistoryHashMap);
        This.userName := Java_Unbox (orderHistoryHashMap.get (UserData_Package.USERNAME));
        This.orderDate := Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.ORDERDATE));
        This.shipDate := Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.SHIPPEDDATE));
        This.transDate := Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.TRANSDATE));
        This.cancelDate := Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.CANCELDATE));
        This.status := Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.STATUS));
        This.subTotal := Money_Package.Create (Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.SUBTOTAL)));
        This.total := Money_Package.Create (Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.TOTAL)));
        This.shippingCost := Money_Package.Create (Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.SHIPPINGCOST)));
        This.taxes := Money_Package.Create (Java_Unbox (orderHistoryHashMap.get (OrderHistoryData_Package.TAX)));
        Order (This).setUserComments (Java_Unbox (orderHistoryHashMap.get (OrderData_Package.CUSTOMERCOMMENT)));
        Order (This).setUserCancelComments (Java_Unbox (orderHistoryHashMap.get (OrderData_Package.CUSTOMERCANCELCOMMENT)));
        Order (This).setStoreComments (Java_Unbox (orderHistoryHashMap.get (OrderData_Package.STORECOMMENT)));
        Order (This).setStoreCancelComments (Java_Unbox (orderHistoryHashMap.get (OrderData_Package.STORECANCELCOMMENT)));
   end Initialize;

   function Create (basketInterface_Param : access BasketInterface_Package.BasketInterface'Class; orderHistoryHashMap_Param : access HashMap_Package.HashMap'Class) return OrderHistory_Access is
      This : constant OrderHistory_Access := new OrderHistory;
   begin
      OrderHistory_Package.Initialize (This.all, basketInterface_Param, orderHistoryHashMap_Param);
      return This;
   end Create;

   procedure setUserName (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.userName := value;
   end setUserName;

   procedure setDefaultShippingAddress (This : in out OrderHistory; shippingAddress_Param : access StreetAddress_Package.StreetAddress'Class) is
      shippingAddress : constant StreetAddress_Access := StreetAddress_Access (shippingAddress_Param);
   begin
        This.shippingAddress := shippingAddress;
   end setDefaultShippingAddress;

   procedure setBillingAddress (This : in out OrderHistory; billingAddress_Param : access StreetAddress_Package.StreetAddress'Class) is
      billingAddress : constant StreetAddress_Access := StreetAddress_Access (billingAddress_Param);
   begin
        This.billingAddress := billingAddress;
   end setBillingAddress;

   procedure setPaymentInfo (This : in out OrderHistory; payment_Param : access Payment_Package.Payment'Class) is
      payment : constant Payment_Access := Payment_Access (payment_Param);
   begin
        This.payment := payment;
   end setPaymentInfo;

   procedure setShipDate (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.shipDate := value;
   end setShipDate;

   procedure setOrderDate (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.orderDate := value;
   end setOrderDate;

   procedure setTransDate (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.transDate := value;
   end setTransDate;

   procedure setCancelDate (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.cancelDate := value;
   end setCancelDate;

   procedure setStatus (This : in out OrderHistory; value : Unbounded_String) is
   begin
        This.status := value;
   end setStatus;

   procedure setSubTotal (This : in out OrderHistory; value_Param : access Money_Package.Money'Class) is
      value : constant Money_Access := Money_Access (value_Param);
   begin
        This.subTotal := value;
   end setSubTotal;

   procedure setShippingCost (This : in out OrderHistory; value_Param : access Money_Package.Money'Class) is
      value : constant Money_Access := Money_Access (value_Param);
   begin
        This.shippingCost := value;
   end setShippingCost;

   procedure setTaxes (This : in out OrderHistory; value_Param : access Money_Package.Money'Class) is
      value : constant Money_Access := Money_Access (value_Param);
   begin
        This.taxes := value;
   end setTaxes;

   procedure setTotal (This : in out OrderHistory; value_Param : access Money_Package.Money'Class) is
      value : constant Money_Access := Money_Access (value_Param);
   begin
        This.total := value;
   end setTotal;

   function getUserName (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getShippingAddress (This : in out OrderHistory) return StreetAddress_Access is
   begin
        return This.shippingAddress;
   end getShippingAddress;

   function getBillingAddress (This : in out OrderHistory) return StreetAddress_Access is
   begin
        return This.billingAddress;
   end getBillingAddress;

   function getPaymentInfo (This : in out OrderHistory) return Payment_Access is
   begin
        return This.payment;
   end getPaymentInfo;

   function getShipDate (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.shipDate;
   end getShipDate;

   function getOrderDate (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.orderDate;
   end getOrderDate;

   function getTransDate (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.transDate;
   end getTransDate;

   function getCancelDate (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.cancelDate;
   end getCancelDate;

   function getStatus (This : in out OrderHistory) return Unbounded_String is
   begin
        return This.status;
   end getStatus;

   function getSubTotal (This : in out OrderHistory) return Money_Access is
   begin
        return This.subTotal;
   end getSubTotal;

   function getShippingCost (This : in out OrderHistory) return Money_Access is
   begin
        return This.shippingCost;
   end getShippingCost;

   function getTaxes (This : in out OrderHistory) return Money_Access is
   begin
        return This.taxes;
   end getTaxes;

   function getTotal (This : in out OrderHistory) return Money_Access is
   begin
        return This.total;
   end getTotal;

   function toHashMap (This : in out OrderHistory) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (UserData_Package.USERNAME, Java_Box (This.userName));
        hashMap.put (OrderHistoryData_Package.ORDERDATE, Java_Box (This.orderDate));
        hashMap.put (OrderHistoryData_Package.SHIPPEDDATE, Java_Box (This.shipDate));
        hashMap.put (OrderHistoryData_Package.TRANSDATE, Java_Box (This.transDate));
        hashMap.put (OrderHistoryData_Package.CANCELDATE, Java_Box (This.cancelDate));
        hashMap.put (OrderHistoryData_Package.ORDERDATEFORMATTED, Java_Box (Date_Package.Create (This.orderDate.longValue).toString));
        hashMap.put (OrderHistoryData_Package.SHIPPEDDATEFORMATTED, Java_Box (Date_Package.Create (This.shipDate.longValue).toString));
        hashMap.put (OrderHistoryData_Package.TRANSDATEFORMATTED, Java_Box (Date_Package.Create (This.transDate.longValue).toString));
        hashMap.put (OrderHistoryData_Package.CANCELDATEFORMATTED, Java_Box (Date_Package.Create (This.cancelDate.longValue).toString));
        hashMap.put (OrderHistoryData_Package.STATUS, Java_Box (This.status));
        hashMap.put (OrderHistoryData_Package.SUBTOTAL, Java_Box (This.subTotal.toString));
        hashMap.put (OrderHistoryData_Package.TOTAL, Java_Box (This.total.toString));
        hashMap.put (OrderHistoryData_Package.SHIPPINGCOST, Java_Box (This.shippingCost.toString));
        hashMap.put (OrderHistoryData_Package.TAX, Java_Box (This.taxes.toString));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out OrderHistory; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      node : Node_Access;
      billingAddressNode : Node_Access;
      shippingAddressNode : Node_Access;
      name : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        hashMap := OrderHistory'Class (This).toHashMap;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        node := document.createElement (OrderHistoryData_Package.ORDERHISTORY);
        node.appendChild (Order (This).toXmlNode (document));
        billingAddressNode := document.createElement (BillingAddressData_Package.BILLINGADDRESS);
        billingAddressNode.appendChild (This.billingAddress.toXmlNode (document));
        shippingAddressNode := document.createElement (ShippingAddressData_Package.SHIPPINGADDRESS);
        shippingAddressNode.appendChild (This.shippingAddress.toXmlNode (document));
        node.appendChild (billingAddressNode);
        node.appendChild (shippingAddressNode);
        node.appendChild (This.payment.toXmlNode (document));
        for i in 0 .. (size) - 1 loop
            name := Java_Unbox (keyArray (i));
            value := Java_Unbox (hashMap.get (Java_Box (name)));
            value := StringUtil_Package.getInstance.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out OrderHistory; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := OrderHistory'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;


