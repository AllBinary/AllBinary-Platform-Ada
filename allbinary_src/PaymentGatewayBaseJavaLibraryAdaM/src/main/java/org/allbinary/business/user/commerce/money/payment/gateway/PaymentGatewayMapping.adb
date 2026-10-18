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

package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out PaymentGatewayMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayMapping'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
   begin
      Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayMapping_Access is
      This : constant PaymentGatewayMapping_Access := new PaymentGatewayMapping;
   begin
      PaymentGatewayMapping_Package.Initialize (This.all, paymentGatewayInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toHashMap (This : in out PaymentGatewayMapping) return HashMap_Access is
   begin
        return This.paymentGatewayInterface.toHashMap (False);
   end toHashMap;

   function toVector (This : in out PaymentGatewayMapping) return BasicArrayList_Access is
   begin
        return This.paymentGatewayInterface.toVector (False);
   end toVector;

   --  throws Exception
   function getKey (This : in out PaymentGatewayMapping) return Java_Object_Access is
   begin
        return Java_Object_Access (This.paymentGatewayInterface.getKey);
   end getKey;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;


