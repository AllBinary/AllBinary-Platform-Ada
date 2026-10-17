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


package body org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package is

   procedure Initialize_Fields (This : in out CreditCardTypeFactory'Class) is
   begin
      null;
      This.VISA := CreditCardType_Package.Create (To_Unbounded_String ("Visa"));
      This.MASTERCARD := CreditCardType_Package.Create (To_Unbounded_String ("MasterCard"));
      This.DISCOVER := CreditCardType_Package.Create (To_Unbounded_String ("Discover"));
      This.AMERICANEXPRESS := CreditCardType_Package.Create (To_Unbounded_String ("AMX"));
   end Initialize_Fields;

   procedure Initialize (This : in out CreditCardTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CreditCardTypeFactory_Access is
      This : constant CreditCardTypeFactory_Access := new CreditCardTypeFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CreditCardTypeFactory_Access is
   begin
        return CreditCardTypeFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant CreditCardTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CreditCardTypeFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package;


