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


package body org.allbinary.business.user.commerce.money.payment.PaymentException_Package is

   procedure Initialize_Fields (This : in out PaymentException'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentException'Class; error : Unbounded_String) is
   begin
        Exception_Package.Initialize (This, error);
   end Initialize;

   function Create (error : Unbounded_String) return PaymentException_Access is
      This : constant PaymentException_Access := new PaymentException;
   begin
      PaymentException_Package.Initialize (This.all, error);
      return This;
   end Create;

end org.allbinary.business.user.commerce.money.payment.PaymentException_Package;


