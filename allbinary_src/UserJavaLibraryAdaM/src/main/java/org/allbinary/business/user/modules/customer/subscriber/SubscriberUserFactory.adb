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


package body org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory_Package is

   procedure Initialize_Fields (This : in out SubscriberUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SubscriberUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SubscriberUserFactory_Access is
      This : constant SubscriberUserFactory_Access := new SubscriberUserFactory;
   begin
      SubscriberUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out SubscriberUserFactory) return UserInterface_Access is
   begin
        return SubscriberUser_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out SubscriberUserFactory; hashMap : HashMap_Access) return UserInterface_Access is
   begin
        return SubscriberUser_Package.Create (hashMap);
   end getInstance;

   procedure getInstance (This : in out SubscriberUserFactory; hashMap : HashMap_Access) is
      Java_Result : constant UserInterface_Access := SubscriberUserFactory'Class (This).getInstance (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory_Package;


