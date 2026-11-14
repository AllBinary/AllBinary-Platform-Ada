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



package body org.allbinary.business.context.modules.storefront.StoreFrontsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontsData'Class) is
   begin
      null;
      This.TYPE_Id := To_Unbounded_String ("STOREFRONTS_TYPE");
      This.RETAIL := To_Unbounded_String ("STOREFRONTS_RETAIL");
      This.SUBSCRIPTION := To_Unbounded_String ("STOREFRONTS_SUBSCRIPTION");
      This.AUCTION := To_Unbounded_String ("STOREFRONTS_AUCTION");
      This.NEWS := To_Unbounded_String ("STOREFRONTS_NEWS");
      This.BLOG := To_Unbounded_String ("STOREFRONTS_BLOG");
      This.FORUM := To_Unbounded_String ("STOREFRONTS_FORUM");
   end Initialize_Fields;

   procedure Initialize (This : in out StoreFrontsData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StoreFrontsData_Access is
      This : constant StoreFrontsData_Access := new StoreFrontsData;
   begin
      StoreFrontsData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StoreFrontsData_Access is
   begin
        return StoreFrontsData_Package.instance;
   end getInstance;

begin
   null;
   instance := StoreFrontsData_Package.Create;

end org.allbinary.business.context.modules.storefront.StoreFrontsData_Package;


