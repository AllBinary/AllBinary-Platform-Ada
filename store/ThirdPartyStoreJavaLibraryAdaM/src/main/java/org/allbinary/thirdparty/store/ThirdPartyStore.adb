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


package body org.allbinary.thirdparty.store.ThirdPartyStore_Package is

   procedure Initialize_Fields (This : in out ThirdPartyStore'Class) is
   begin
      null;
      This.authorized := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ThirdPartyStore'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return ThirdPartyStore_Access is
      This : constant ThirdPartyStore_Access := new ThirdPartyStore;
   begin
      ThirdPartyStore_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure authorize (This : in out ThirdPartyStore; clientInformationInterface : AbeClientInformationInterface_Access) is
   begin
        null;
   end authorize;

   function isAuthorized (This : in out ThirdPartyStore) return Boolean is
   begin
        return This.authorized;
   end isAuthorized;

   procedure setAuthorized (This : in out ThirdPartyStore; authorized : Boolean) is
   begin
        This.authorized := authorized;
   end setAuthorized;

   function getName (This : in out ThirdPartyStore) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.thirdparty.store.ThirdPartyStore_Package;


