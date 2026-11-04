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


with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
with org.allbinary.business.init.db.InitDbHelperFactory_Package; use org.allbinary.business.init.db.InitDbHelperFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body org.allbinary.business.installer.DynamicInitDb_Package is

   package InitDbHelperFactory_Package renames Standard.org.allbinary.business.init.db.InitDbHelperFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out DynamicInitDb'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
      InitDb_Package.Initialize (This);
      Initialize_Fields (This);
        DynamicInitDb'Class (This).setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation));
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
        DynamicInitDb'Class (This).setHelper (InitDbHelperFactory_Package.getInstance (abeClientInformation, databaseConnectionInfoInterface));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return DynamicInitDb_Access is
      This : constant DynamicInitDb_Access := new DynamicInitDb;
   begin
      DynamicInitDb_Package.Initialize (This.all, abeClientInformation_Param, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

end org.allbinary.business.installer.DynamicInitDb_Package;


