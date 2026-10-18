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


with org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUser_Package; use org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUser_Package;

package body org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package is

   procedure Initialize_Fields (This : in out CustomerStoreAdminUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomerStoreAdminUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomerStoreAdminUserFactory_Access is
      This : constant CustomerStoreAdminUserFactory_Access := new CustomerStoreAdminUserFactory;
   begin
      CustomerStoreAdminUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CustomerStoreAdminUserFactory) return UserInterface_Access is
   begin
        return UserInterface_Access (CustomerStoreAdminUser_Package.Create);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out CustomerStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return UserInterface_Access (CustomerStoreAdminUser_Package.Create (hashMap));
   end getInstance;

   procedure getInstance (This : in out CustomerStoreAdminUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant UserInterface_Access := CustomerStoreAdminUserFactory'Class (This).getInstance (hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package;


