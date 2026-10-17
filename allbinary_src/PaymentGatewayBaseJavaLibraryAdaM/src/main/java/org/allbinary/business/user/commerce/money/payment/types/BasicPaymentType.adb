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


package body org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package is

   procedure Initialize_Fields (This : in out BasicPaymentType'Class) is
   begin
      null;
      This.name := Null_Unbounded_String;
      This.value := Null_Unbounded_String;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.init (paymentMethod);
   end Initialize;

   function Create (paymentMethod : Unbounded_String) return BasicPaymentType_Access is
      This : constant BasicPaymentType_Access := new BasicPaymentType;
   begin
      BasicPaymentType_Package.Initialize (This.all, paymentMethod);
      return This;
   end Create;

   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface'Class) is
      paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface_Access := PaymentGatewayInterfaceFactoryInterface_Access (paymentGatewayInterfaceFactoryInterface_Param);
      paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface_Access := PaymentGatewayDomNodeFactoryInterface_Access (paymentGatewayDomNodeFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.init (paymentMethod);
        This.paymentGatewayInterfaceFactoryInterface := paymentGatewayInterfaceFactoryInterface;
        This.paymentGatewayDomNodeFactoryInterface := paymentGatewayDomNodeFactoryInterface;
   end Initialize;

   function Create (paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface'Class) return BasicPaymentType_Access is
      This : constant BasicPaymentType_Access := new BasicPaymentType;
   begin
      BasicPaymentType_Package.Initialize (This.all, paymentMethod, paymentGatewayInterfaceFactoryInterface_Param, paymentGatewayDomNodeFactoryInterface_Param);
      return This;
   end Create;

   procedure init (This : in out BasicPaymentType; paymentMethod : Unbounded_String) is
      hashMap : HashMap_Access;
      UNDERSCORE : Unbounded_String;
      replace : Replace_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        UNDERSCORE := To_Unbounded_String ("_");
        hashMap.put (CommonSeps_Package.getInstance.SPACE, UNDERSCORE);
        hashMap.put (AbPathData_Package.getInstance.EXTENSION_SEP, UNDERSCORE);
        hashMap.put (To_Unbounded_String ("-"), UNDERSCORE);
        replace := Replace_Package.Create (hashMap);
        This.name := replace.all_Id (paymentMethod);
        This.value := paymentMethod;
        BasicPaymentTypeUtil_Package.getInstance.add (BasicPaymentType_Access'(This'Unchecked_Access));
   end init;

   function getName (This : in out BasicPaymentType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getValue (This : in out BasicPaymentType) return Unbounded_String is
   begin
        return This.value;
   end getValue;

   --  throws Exception
   function getPaymentGatewayInterfaceFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayInterfaceFactoryInterface_Access is
   begin
        if (This.paymentGatewayInterfaceFactoryInterface) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PaymentGatewayInterfaceFactoryInterface is Null")));
        end if;
        return This.paymentGatewayInterfaceFactoryInterface;
   end getPaymentGatewayInterfaceFactoryInterface;

   --  throws Exception
   function getPaymentGatewayDomNodeFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayDomNodeFactoryInterface_Access is
   begin
        if (This.paymentGatewayDomNodeFactoryInterface) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PaymentGatewayDomNodeFactoryInterface is Null")));
        end if;
        return This.paymentGatewayDomNodeFactoryInterface;
   end getPaymentGatewayDomNodeFactoryInterface;

   function getKey (This : in out BasicPaymentType) return Java_Object_Access is
   begin
        return This.getName;
   end getKey;

   function toVector (This : in out BasicPaymentType) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.name);
        vector.add (This.value);
        return vector;
   end toVector;

   function toHashMap (This : in out BasicPaymentType) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (PaymentGatewayData_Package.NAME.toString, This.name);
        hashMap.put (PaymentGatewayData_Package.VALUE.toString, This.value);
        return hashMap;
   end toHashMap;

   function toString (This : in out BasicPaymentType) return Unbounded_String is
   begin
        return This.name;
   end toString;

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;


