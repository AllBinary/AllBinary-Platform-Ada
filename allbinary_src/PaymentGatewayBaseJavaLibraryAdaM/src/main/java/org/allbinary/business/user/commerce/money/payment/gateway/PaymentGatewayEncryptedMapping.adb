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


package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayEncryptedMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayEncryptedMapping'Class; paymentGatewayInterface : PaymentGatewayInterface_Access) is
   begin
      Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (paymentGatewayInterface : PaymentGatewayInterface_Access) return PaymentGatewayEncryptedMapping_Access is
      This : constant PaymentGatewayEncryptedMapping_Access := new PaymentGatewayEncryptedMapping;
   begin
      Initialize (This.all, paymentGatewayInterface);
      return This;
   end Create;

   --  throws Exception
   function toHashMap (This : in out PaymentGatewayEncryptedMapping) return HashMap_Access is
   begin
        return This.paymentGatewayInterface.toHashMap (True);
   end toHashMap;

   function toVector (This : in out PaymentGatewayEncryptedMapping) return BasicArrayList_Access is
   begin
        return This.paymentGatewayInterface.toVector (True);
   end toVector;

   --  throws Exception
   function getKey (This : in out PaymentGatewayEncryptedMapping) return Java_Object_Access is
   begin
        return Java_Object_Access (This.paymentGatewayInterface.getKey);
   end getKey;

   procedure toHashMap (This : in out PaymentGatewayEncryptedMapping) is
      Java_Result : constant HashMap_Access := PaymentGatewayEncryptedMapping'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out PaymentGatewayEncryptedMapping) is
      Java_Result : constant BasicArrayList_Access := PaymentGatewayEncryptedMapping'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure getKey (This : in out PaymentGatewayEncryptedMapping) is
      Java_Result : constant Java_Object_Access := PaymentGatewayEncryptedMapping'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package;


