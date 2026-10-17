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


package body org.allbinary.business.installer.DynamicInitDb_Package is

   procedure Initialize_Fields (This : in out DynamicInitDb'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation : AbeClientInformationInterface_Access) is
   begin
      InitDb_Package.Initialize (This);
      Initialize_Fields (This);
        This.setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access) return DynamicInitDb_Access is
      This : constant DynamicInitDb_Access := new DynamicInitDb;
   begin
      DynamicInitDb_Package.Initialize (This.all, abeClientInformation);
      return This;
   end Create;

   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) is
   begin
      InitDb_Package.Initialize (This);
      Initialize_Fields (This);
        This.setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation, databaseConnectionInfoInterface));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return DynamicInitDb_Access is
      This : constant DynamicInitDb_Access := new DynamicInitDb;
   begin
      DynamicInitDb_Package.Initialize (This.all, abeClientInformation, databaseConnectionInfoInterface);
      return This;
   end Create;

end org.allbinary.business.installer.DynamicInitDb_Package;


