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


with admin.taghelpers.PaymentTransactionHelperFactory_Package; use admin.taghelpers.PaymentTransactionHelperFactory_Package;

package body admin.tags.PaymentTransactionTag_Package is

   package PaymentTransactionHelperFactory_Package renames Standard.admin.taghelpers.PaymentTransactionHelperFactory_Package;
   procedure Initialize_Fields (This : in out PaymentTransactionTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentTransactionTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        PaymentTransactionTag'Class (This).setTagHelperFactory (PaymentTransactionHelperFactory_Package.Create);
        PaymentTransactionTag'Class (This).setTagRequestHelperFactory (PaymentTransactionHelperFactory_Package.Create);
   end Initialize;

   function Create return PaymentTransactionTag_Access is
      This : constant PaymentTransactionTag_Access := new PaymentTransactionTag;
   begin
      PaymentTransactionTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.PaymentTransactionTag_Package;


