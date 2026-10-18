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


package body org.allbinary.business.user.commerce.inventory.order.Order_Package is

   procedure Initialize_Fields (This : in out Order'Class) is
   begin
      null;
      
      
      
      
      
      
      This.userComment := Null_Unbounded_String;
      This.userCancelComment := Null_Unbounded_String;
      This.storeComment := Null_Unbounded_String;
      This.storeCancelComment := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out Order'Class; basket_Param : access BasketInterface_Package.BasketInterface'Class) is
      basket : constant BasketInterface_Access := BasketInterface_Access (basket_Param);
   begin
      Initialize_Fields (This);
        This.basket := basket;
        This.id := Null_Unbounded_String;
        This.shippingType := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize;

   function Create (basket_Param : access BasketInterface_Package.BasketInterface'Class) return Order_Access is
      This : constant Order_Access := new Order;
   begin
      Order_Package.Initialize (This.all, basket_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Order'Class; storeName : Unbounded_String; basket_Param : access BasketInterface_Package.BasketInterface'Class; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String) is
      basket : constant BasketInterface_Access := BasketInterface_Access (basket_Param);
   begin
      Initialize_Fields (This);
        This.storeName := storeName;
        This.basket := basket;
        This.id := id;
        This.shippingType := shippingType;
        This.special := special;
        This.paymentMethod := paymentMethod;
   end Initialize;

   function Create (storeName : Unbounded_String; basket_Param : access BasketInterface_Package.BasketInterface'Class; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String) return Order_Access is
      This : constant Order_Access := new Order;
   begin
      Order_Package.Initialize (This.all, storeName, basket_Param, id, shippingType, special, paymentMethod);
      return This;
   end Create;

   function isIdValid (This : in out Order) return Boolean is
   begin
        if ((((Order'Class (This).getId) = (null)) or else ((Order'Class (This).getId.compareTo (StringUtil_Package.getInstance.EMPTY_STRING)) = (0))) or else ((Order'Class (This).getId.length) > (OrderHistoryData_Package.MAXIDLEN))) or else (not (StringValidationUtil_Package.getInstance.isNumber (Order'Class (This).getId))) then
            return False;
        end if;
        return True;
   end isIdValid;

   function isValid (This : in out Order) return Boolean is
   begin
        return True;
   end isValid;

   function getIdValidationInfo (This : in out Order) return Unbounded_String is
      EMPTY_STRING : Unbounded_String;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if ((((Order'Class (This).getId) = (null)) or else ((Order'Class (This).getId.compareTo (EMPTY_STRING)) = (0))) or else ((Order'Class (This).getId.length) > (OrderHistoryData_Package.MAXIDLEN))) or else (not (StringValidationUtil_Package.getInstance.isNumber (Order'Class (This).getId))) then
            return To_Unbounded_String ("Please enter a valid order Id < ") & Java_Image (OrderHistoryData_Package.MAXIDLEN) & To_Unbounded_String (" digits in length.<br>");
        end if;
        return EMPTY_STRING;
   end getIdValidationInfo;

   procedure setShippingMethod (This : in out Order; shippingType : Unbounded_String) is
   begin
        This.shippingType := shippingType;
   end setShippingMethod;

   procedure setPaymentMethod (This : in out Order; value : Unbounded_String) is
   begin
        This.paymentMethod := value;
   end setPaymentMethod;

   procedure setSpecial (This : in out Order; special : Unbounded_String) is
   begin
        This.special := special;
   end setSpecial;

   procedure setId (This : in out Order; value : Unbounded_String) is
   begin
        This.id := value;
   end setId;

   procedure setStoreName (This : in out Order; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   procedure setUserComments (This : in out Order; value : Unbounded_String) is
   begin
        This.userComment := value;
   end setUserComments;

   procedure setUserCancelComments (This : in out Order; value : Unbounded_String) is
   begin
        This.userCancelComment := value;
   end setUserCancelComments;

   procedure setStoreComments (This : in out Order; value : Unbounded_String) is
   begin
        This.storeComment := value;
   end setStoreComments;

   procedure setStoreCancelComments (This : in out Order; value : Unbounded_String) is
   begin
        This.storeCancelComment := value;
   end setStoreCancelComments;

   function getBasket (This : in out Order) return BasketInterface_Access is
   begin
        return This.basket;
   end getBasket;

   function getShippingMethod (This : in out Order) return Unbounded_String is
   begin
        return This.shippingType;
   end getShippingMethod;

   function getPaymentMethod (This : in out Order) return Unbounded_String is
   begin
        return This.paymentMethod;
   end getPaymentMethod;

   function getSpecial (This : in out Order) return Unbounded_String is
   begin
        return This.special;
   end getSpecial;

   function getId (This : in out Order) return Unbounded_String is
   begin
        return This.id;
   end getId;

   function getStoreName (This : in out Order) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   function getUserComments (This : in out Order) return Unbounded_String is
   begin
        return This.userComment;
   end getUserComments;

   function getUserCancelComments (This : in out Order) return Unbounded_String is
   begin
        return This.userCancelComment;
   end getUserCancelComments;

   function getStoreComments (This : in out Order) return Unbounded_String is
   begin
        return This.storeComment;
   end getStoreComments;

   function getStoreCancelComments (This : in out Order) return Unbounded_String is
   begin
        return This.storeCancelComment;
   end getStoreCancelComments;

   function reviewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String is
   begin
        return To_Unbounded_String ("Create your own Order.reviewOrder");
   end reviewOrder;

   function viewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String is
   begin
        return To_Unbounded_String ("Create your own Order.viewOrder");
   end viewOrder;

   function emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Unbounded_String is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
   begin
        return To_Unbounded_String ("Create your own Order.emailOrder");
   end emailOrder;

   function toHashMapOrder (This : in out Order) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (PaymentData_Package.METHOD, Java_Box (This.paymentMethod));
        hashMap.put (ShippingMethodData_Package.NAME, Java_Box (This.shippingType));
        hashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
        hashMap.put (EntryData_Package.getInstance.SPECIAL, Java_Box (This.special));
        hashMap.put (OrderData_Package.ID, Java_Box (This.id));
        hashMap.put (OrderData_Package.CUSTOMERCOMMENT, Java_Box (This.userComment));
        hashMap.put (OrderData_Package.CUSTOMERCANCELCOMMENT, Java_Box (This.userCancelComment));
        hashMap.put (OrderData_Package.STORECOMMENT, Java_Box (This.storeComment));
        hashMap.put (OrderData_Package.STORECANCELCOMMENT, Java_Box (This.storeCancelComment));
        return hashMap;
   end toHashMapOrder;

   --  throws Exception
   function toXmlNode (This : in out Order; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      node : Node_Access;
      name : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        hashMap := Order'Class (This).toHashMapOrder;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        node := document.createElement (OrderData_Package.ORDER);
        for i in 0 .. (size) - 1 loop
            name := Java_Unbox (keyArray (i));
            value := Java_Unbox (hashMap.get (Java_Box (name)));
            value := StringUtil_Package.getInstance.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   procedure reviewOrder (This : in out Order; paymentMethod : Unbounded_String) is
      Java_Result : constant Unbounded_String := Order'Class (This).reviewOrder (paymentMethod);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end reviewOrder;

   procedure viewOrder (This : in out Order; paymentMethod : Unbounded_String) is
      Java_Result : constant Unbounded_String := Order'Class (This).viewOrder (paymentMethod);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewOrder;

   procedure emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant Unbounded_String := Order'Class (This).emailOrder (userName, paymentMethod, storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end emailOrder;

   procedure toXmlNode (This : in out Order; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := Order'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.order.Order_Package;


