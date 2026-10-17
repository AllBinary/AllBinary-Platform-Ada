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


package body org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package is

   procedure Initialize_Fields (This : in out CreditCardType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CreditCardType'Class; cardType : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := cardType;
   end Initialize;

   function Create (cardType : Unbounded_String) return CreditCardType_Access is
      This : constant CreditCardType_Access := new CreditCardType;
   begin
      CreditCardType_Package.Initialize (This.all, cardType);
      return This;
   end Create;

   function toString (This : in out CreditCardType) return Unbounded_String is
   begin
        return This.name;
   end toString;

begin
   null;
   MAXLEN := 19;

end org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package;


