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


package body org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory_Package is

   procedure Initialize_Fields (This : in out WholesaleUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WholesaleUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WholesaleUserFactory_Access is
      This : constant WholesaleUserFactory_Access := new WholesaleUserFactory;
   begin
      WholesaleUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out WholesaleUserFactory) return UserInterface_Access is
   begin
        return WholesaleUser_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out WholesaleUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return WholesaleUser_Package.Create (hashMap);
   end getInstance;

   procedure getInstance (This : in out WholesaleUserFactory; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant UserInterface_Access := WholesaleUserFactory'Class (This).getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory_Package;


