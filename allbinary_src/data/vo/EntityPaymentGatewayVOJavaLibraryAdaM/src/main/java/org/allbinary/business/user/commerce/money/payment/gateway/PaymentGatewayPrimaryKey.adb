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


package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayPrimaryKey'Class) is
   begin
      null;
      This.storeName := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayPrimaryKey'Class; storeName : Unbounded_String; gatewayName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setStoreName (storeName);
        This.setName (gatewayName);
   end Initialize;

   function Create (storeName : Unbounded_String; gatewayName : Unbounded_String) return PaymentGatewayPrimaryKey_Access is
      This : constant PaymentGatewayPrimaryKey_Access := new PaymentGatewayPrimaryKey;
   begin
      PaymentGatewayPrimaryKey_Package.Initialize (This.all, storeName, gatewayName);
      return This;
   end Create;

   function getStoreName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   procedure setStoreName (This : in out PaymentGatewayPrimaryKey; storeName : Unbounded_String) is
   begin
        This.storeName := storeName;
   end setStoreName;

   function getName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out PaymentGatewayPrimaryKey; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function toString (This : in out PaymentGatewayPrimaryKey) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (PaymentGatewayPrimaryKey_Package.PaymentGatewayPrimaryKey'Tag.getName);
        stringBuffer.append (StoreFront_Package.StoreFront'Tag.getName);
        stringBuffer.append (To_Unbounded_String (" ="));
        stringBuffer.append (This.getStoreName);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (PaymentGateway_Package.PaymentGateway'Tag.getName);
        stringBuffer.append (To_Unbounded_String ("="));
        stringBuffer.append (This.getName);
        return stringBuffer.toString;
   end toString;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;


