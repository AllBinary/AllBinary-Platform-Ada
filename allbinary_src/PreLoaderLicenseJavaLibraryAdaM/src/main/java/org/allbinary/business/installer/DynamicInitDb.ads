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

limited with org.allbinary.business.installer.DynamicInitDb_Package;
package org.allbinary.business.installer.DynamicInitDb_Package_References is
   type DynamicInitDb_Access is access all org.allbinary.business.installer.DynamicInitDb_Package.DynamicInitDb'Class;
   type DynamicInitDb_Access_Array is array (Natural range <>) of DynamicInitDb_Access;
   type DynamicInitDb_Access_Array_Access is access all DynamicInitDb_Access_Array;
   type DynamicInitDb_Access_Array_Access_Array is array (Natural range <>) of DynamicInitDb_Access_Array_Access;
   type DynamicInitDb_Access_Array_Access_Array_Access is access all DynamicInitDb_Access_Array_Access_Array;
end org.allbinary.business.installer.DynamicInitDb_Package_References;

with org.allbinary.business.installer.DynamicInitDb_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.business.installer.InitDb_Package; use org.allbinary.business.installer.InitDb_Package;

package org.allbinary.business.installer.DynamicInitDb_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   use type DatabaseConnectionInfoInterface_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DynamicInitDb_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access;
   function "=" (Left, Right : DynamicInitDb_Access) return Boolean renames org.allbinary.business.installer.DynamicInitDb_Package_References."=";
   subtype DynamicInitDb_Access_Array is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array;
   function "=" (Left, Right : DynamicInitDb_Access_Array) return Boolean renames org.allbinary.business.installer.DynamicInitDb_Package_References."=";
   subtype DynamicInitDb_Access_Array_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access;
   function "=" (Left, Right : DynamicInitDb_Access_Array_Access) return Boolean renames org.allbinary.business.installer.DynamicInitDb_Package_References."=";
   subtype DynamicInitDb_Access_Array_Access_Array is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access_Array;
   function "=" (Left, Right : DynamicInitDb_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.DynamicInitDb_Package_References."=";
   subtype DynamicInitDb_Access_Array_Access_Array_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DynamicInitDb_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.DynamicInitDb_Package_References."=";

   type DynamicInitDb is new InitDb with null record;

   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return DynamicInitDb_Access;
   procedure Initialize (This : in out DynamicInitDb'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return DynamicInitDb_Access;

end org.allbinary.business.installer.DynamicInitDb_Package;


