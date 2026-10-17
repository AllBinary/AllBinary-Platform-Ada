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


   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
      InitDb_Package.Initialize (This);
      Initialize_Fields (This);
        This.setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return DynamicInitDb_Access is
      This : constant DynamicInitDb_Access := new DynamicInitDb;
   begin
      DynamicInitDb_Package.Initialize (This.all, abeClientInformation_Param);
      return This;
   end Create;

   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      databaseConnectionInfoInterface : constant DatabaseConnectionInfoInterface_Access := DatabaseConnectionInfoInterface_Access (databaseConnectionInfoInterface_Param);
   begin
      InitDb_Package.Initialize (This);
      Initialize_Fields (This);
        This.setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation, databaseConnectionInfoInterface));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return DynamicInitDb_Access is
      This : constant DynamicInitDb_Access := new DynamicInitDb;
   begin
      DynamicInitDb_Package.Initialize (This.all, abeClientInformation_Param, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

end org.allbinary.business.installer.DynamicInitDb_Package;


