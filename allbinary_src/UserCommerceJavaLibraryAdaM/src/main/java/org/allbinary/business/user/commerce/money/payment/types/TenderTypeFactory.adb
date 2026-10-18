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



package body org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package is

   procedure Initialize_Fields (This : in out TenderTypeFactory'Class) is
   begin
      null;
      This.CREDITCARD := TenderType_Package.Create (To_Unbounded_String ("Credit Card"));
      This.CHECK := TenderType_Package.Create (To_Unbounded_String ("Check"));
      This.ACH := TenderType_Package.Create (To_Unbounded_String ("Ach"));
   end Initialize_Fields;

   procedure Initialize (This : in out TenderTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TenderTypeFactory_Access is
      This : constant TenderTypeFactory_Access := new TenderTypeFactory;
   begin
      TenderTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TenderTypeFactory_Access is
   begin
        return TenderTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := TenderTypeFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;


