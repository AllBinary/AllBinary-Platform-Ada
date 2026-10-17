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


package body org.allbinary.thirdparty.store.NoThirdPartyStore_Package is

   procedure Initialize_Fields (This : in out NoThirdPartyStore'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoThirdPartyStore'Class) is
   begin
        ThirdPartyStore_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize;

   function Create return NoThirdPartyStore_Access is
      This : constant NoThirdPartyStore_Access := new NoThirdPartyStore;
   begin
      NoThirdPartyStore_Package.Initialize (This.all);
      return This;
   end Create;

   procedure authorize (This : in out NoThirdPartyStore; clientInformationInterface : AbeClientInformationInterface_Access) is
   begin
        This.setAuthorized (True);
   end authorize;

end org.allbinary.thirdparty.store.NoThirdPartyStore_Package;


