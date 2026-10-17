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


package body org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package is

   procedure Initialize_Fields (This : in out LicenseLoadingTypeFactory'Class) is
   begin
      null;
      This.INITIAL_LOADING := LicenseLoadingType_Package.Create (To_Unbounded_String ("Initial Loading"));
      This.GAME_START := LicenseLoadingType_Package.Create (To_Unbounded_String ("Game Start"));
      This.LOGIN := LicenseLoadingType_Package.Create (To_Unbounded_String ("Login"));
      This.OTHER := LicenseLoadingType_Package.Create (To_Unbounded_String ("Other/Usually The First Non Demo Level"));
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseLoadingTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseLoadingTypeFactory_Access is
      This : constant LicenseLoadingTypeFactory_Access := new LicenseLoadingTypeFactory;
   begin
      LicenseLoadingTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getIntance return LicenseLoadingTypeFactory_Access is
   begin
        return LicenseLoadingTypeFactory_Package.instance;
   end getIntance;

begin
   null;
   instance := LicenseLoadingTypeFactory_Package.Create;

end org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package;


