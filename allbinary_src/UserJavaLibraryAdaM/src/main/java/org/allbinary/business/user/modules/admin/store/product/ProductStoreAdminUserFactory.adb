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


package body org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package is

   procedure Initialize_Fields (This : in out ProductStoreAdminUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProductStoreAdminUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProductStoreAdminUserFactory_Access is
      This : constant ProductStoreAdminUserFactory_Access := new ProductStoreAdminUserFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ProductStoreAdminUserFactory) return UserInterface_Access is
   begin
        return ProductStoreAdminUser_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out ProductStoreAdminUserFactory; hashMap : HashMap_Access) return UserInterface_Access is
   begin
        return ProductStoreAdminUser_Package.Create (hashMap);
   end getInstance;

   procedure getInstance (This : in out ProductStoreAdminUserFactory) is
      Java_Result : constant UserInterface_Access := ProductStoreAdminUserFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out ProductStoreAdminUserFactory; hashMap : HashMap_Access) is
      Java_Result : constant UserInterface_Access := ProductStoreAdminUserFactory'Class (This).getInstance (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package;


