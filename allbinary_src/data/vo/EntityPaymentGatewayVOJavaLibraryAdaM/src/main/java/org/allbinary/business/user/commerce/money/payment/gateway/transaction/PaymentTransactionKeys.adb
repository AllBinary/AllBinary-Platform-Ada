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


package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package is

   procedure Initialize_Fields (This : in out PaymentTransactionKeys'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentTransactionKeys'Class; value : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.key := value;
   end Initialize;

   function Create (value : Unbounded_String) return PaymentTransactionKeys_Access is
      This : constant PaymentTransactionKeys_Access := new PaymentTransactionKeys;
   begin
      PaymentTransactionKeys_Package.Initialize (This.all, value);
      return This;
   end Create;

   function toString (This : in out PaymentTransactionKeys) return Unbounded_String is
   begin
        return This.key;
   end toString;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;


