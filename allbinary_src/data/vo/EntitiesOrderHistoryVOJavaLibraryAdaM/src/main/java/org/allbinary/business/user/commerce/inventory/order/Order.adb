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


   procedure Initialize (This : in out Order'Class; basket : BasketInterface_Access) is
   begin
      Initialize_Fields (This);
        This.basket := basket;
        This.id := Null_Unbounded_String;
        This.shippingType := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize;

   function Create (basket : BasketInterface_Access) return Order_Access is
      This : constant Order_Access := new Order;
   begin
      Initialize (This.all, basket);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Order'Class; storeName : Unbounded_String; basket : BasketInterface_Access; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.storeName := storeName;
        This.basket := basket;
        This.id := id;
        This.shippingType := shippingType;
        This.special := special;
        This.paymentMethod := paymentMethod;
   end Initialize;

   function Create (storeName : Unbounded_String; basket : BasketInterface_Access; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String) return Order_Access is
      This : constant Order_Access := new Order;
   begin
      Initialize (This.all, storeName, basket, id, shippingType, special, paymentMethod);
      return This;
   end Create;

   function isIdValid (This : in out Order) return Boolean is
   begin
        if ((((This.getId) = (null)) or else ((This.getId.compareTo (StringUtil_Package.getInstance.EMPTY_STRING)) = (0))) or else ((This.getId.length) > (OrderHistoryData_Package.MAXIDLEN))) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.getId))) then
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
        if ((((This.getId) = (null)) or else ((This.getId.compareTo (EMPTY_STRING)) = (0))) or else ((This.getId.length) > (OrderHistoryData_Package.MAXIDLEN))) or else (not (StringValidationUtil_Package.getInstance.isNumber (This.getId))) then
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

   function emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface : StoreFrontInterface_Access) return Unbounded_String is
   begin
        return To_Unbounded_String ("Create your own Order.emailOrder");
   end emailOrder;

   function toHashMapOrder (This : in out Order) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (PaymentData_Package.METHOD, This.paymentMethod);
        hashMap.put (ShippingMethodData_Package.NAME, This.shippingType);
        hashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
        hashMap.put (EntryData_Package.getInstance.SPECIAL, This.special);
        hashMap.put (OrderData_Package.ID, This.id);
        hashMap.put (OrderData_Package.CUSTOMERCOMMENT, This.userComment);
        hashMap.put (OrderData_Package.CUSTOMERCANCELCOMMENT, This.userCancelComment);
        hashMap.put (OrderData_Package.STORECOMMENT, This.storeComment);
        hashMap.put (OrderData_Package.STORECANCELCOMMENT, This.storeCancelComment);
        return hashMap;
   end toHashMapOrder;

   --  throws Exception
   function toXmlNode (This : in out Order; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      node : Node_Access;
      name : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        hashMap := This.toHashMapOrder;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        node := document.createElement (OrderData_Package.ORDER);
        for i in 0 .. (size) - 1 loop
            name := Unbounded_String (keyArray (i));
            value := Unbounded_String (hashMap.get (name));
            value := StringUtil_Package.getInstance.getNonNull (value);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   procedure isIdValid (This : in out Order) is
      Java_Result : constant Boolean := Order'Class (This).isIdValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isIdValid;

   procedure isValid (This : in out Order) is
      Java_Result : constant Boolean := Order'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getIdValidationInfo (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getIdValidationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIdValidationInfo;

   procedure getBasket (This : in out Order) is
      Java_Result : constant BasketInterface_Access := Order'Class (This).getBasket;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasket;

   procedure getShippingMethod (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getShippingMethod;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getShippingMethod;

   procedure getPaymentMethod (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getPaymentMethod;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentMethod;

   procedure getSpecial (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getSpecial;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpecial;

   procedure getId (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getStoreName (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getStoreName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreName;

   procedure getUserComments (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getUserComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserComments;

   procedure getUserCancelComments (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getUserCancelComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserCancelComments;

   procedure getStoreComments (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getStoreComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreComments;

   procedure getStoreCancelComments (This : in out Order) is
      Java_Result : constant Unbounded_String := Order'Class (This).getStoreCancelComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreCancelComments;

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

   procedure emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface : StoreFrontInterface_Access) is
      Java_Result : constant Unbounded_String := Order'Class (This).emailOrder (userName, paymentMethod, storeFrontInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end emailOrder;

   procedure toHashMapOrder (This : in out Order) is
      Java_Result : constant HashMap_Access := Order'Class (This).toHashMapOrder;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMapOrder;

   procedure toXmlNode (This : in out Order; document : Document_Access) is
      Java_Result : constant Node_Access := Order'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.inventory.order.Order_Package;


