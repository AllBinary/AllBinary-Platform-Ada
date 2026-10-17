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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.InitDbHelperFactory_Package; use org.allbinary.business.init.db.InitDbHelperFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.business.installer.InitDb_Package; use org.allbinary.business.installer.InitDb_Package;

package org.allbinary.business.installer.DynamicInitDb_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package InitDbHelperFactory_Package renames Standard.org.allbinary.business.init.db.InitDbHelperFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type DynamicInitDb is tagged;
   type DynamicInitDb_Access is access all DynamicInitDb'Class;
   type DynamicInitDb_Access_Array is array (Natural range <>) of DynamicInitDb_Access;
   type DynamicInitDb_Access_Array_Access is access all DynamicInitDb_Access_Array;

   type DynamicInitDb is new InitDb with null record;

   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class) return DynamicInitDb_Access;
   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface'Class) return DynamicInitDb_Access;

end org.allbinary.business.installer.DynamicInitDb_Package;


