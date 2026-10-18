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



package body org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package is

   procedure Initialize_Fields (This : in out ThirdPartyStoreFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThirdPartyStore_Access is
   begin
        return ThirdPartyStoreFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ThirdPartyStoreFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ThirdPartyStoreFactory_Access is
      This : constant ThirdPartyStoreFactory_Access := new ThirdPartyStoreFactory;
   begin
      ThirdPartyStoreFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NoThirdPartyStore_Package.Create;

end org.allbinary.thirdparty.store.ThirdPartyStoreFactory_Package;


