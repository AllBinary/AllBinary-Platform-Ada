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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;

package body org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out BasicPaymentType'Class) is
   begin
      null;
      This.name := Null_Unbounded_String;
      This.value := Null_Unbounded_String;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String) is
   begin
      Initialize_Fields (This);
        BasicPaymentType'Class (This).init (paymentMethod);
   end Initialize;

   function Create (paymentMethod : Unbounded_String) return BasicPaymentType_Access is
      This : constant BasicPaymentType_Access := new BasicPaymentType;
   begin
      BasicPaymentType_Package.Initialize (This.all, paymentMethod);
      return This;
   end Create;

   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class) is
      paymentGatewayInterfaceFactoryInterface : constant PaymentGatewayInterfaceFactoryInterface_Access := PaymentGatewayInterfaceFactoryInterface_Access (paymentGatewayInterfaceFactoryInterface_Param);
      paymentGatewayDomNodeFactoryInterface : constant PaymentGatewayDomNodeFactoryInterface_Access := PaymentGatewayDomNodeFactoryInterface_Access (paymentGatewayDomNodeFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        BasicPaymentType'Class (This).init (paymentMethod);
        This.paymentGatewayInterfaceFactoryInterface := paymentGatewayInterfaceFactoryInterface;
        This.paymentGatewayDomNodeFactoryInterface := paymentGatewayDomNodeFactoryInterface;
   end Initialize;

   function Create (paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class) return BasicPaymentType_Access is
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
        hashMap.put (CommonSeps_Package.getInstance.SPACE, Java_Box (UNDERSCORE));
        hashMap.put (AbPathData_Package.getInstance.EXTENSION_SEP, Java_Box (UNDERSCORE));
        hashMap.put (Java_Box (To_Unbounded_String ("-")), Java_Box (UNDERSCORE));
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
        return Java_Box (BasicPaymentType'Class (This).getName);
   end getKey;

   function toVector (This : in out BasicPaymentType) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (This.name);
        vector.add (This.value);
        return vector;
   end toVector;

   function toHashMap (This : in out BasicPaymentType) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (This.name));
        hashMap.put (Java_Box (PaymentGatewayData_Package.VALUE.toString), Java_Box (This.value));
        return hashMap;
   end toHashMap;

   function toString (This : in out BasicPaymentType) return Unbounded_String is
   begin
        return This.name;
   end toString;

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;


