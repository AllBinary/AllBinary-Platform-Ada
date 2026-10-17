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


package body org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package is

   procedure Initialize_Fields (This : in out TransactionTypeFactory'Class) is
   begin
      null;
      This.SALE := TransactionType_Package.Create (To_Unbounded_String ("Sale"));
      This.CREDIT := TransactionType_Package.Create (To_Unbounded_String ("Credit"));
      This.AUTHORIZATION := TransactionType_Package.Create (To_Unbounded_String ("Authorization"));
      This.DELAYEDCAPTURE := TransactionType_Package.Create (To_Unbounded_String ("Delayed Capture"));
      This.VOID := TransactionType_Package.Create (To_Unbounded_String ("Void"));
      This.INQUIRY := TransactionType_Package.Create (To_Unbounded_String ("Inquiry"));
   end Initialize_Fields;

   procedure Initialize (This : in out TransactionTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TransactionTypeFactory_Access is
      This : constant TransactionTypeFactory_Access := new TransactionTypeFactory;
   begin
      TransactionTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TransactionTypeFactory_Access is
   begin
        return TransactionTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := TransactionTypeFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;


