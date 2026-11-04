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

limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;
package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References is
   type FtpConfigurationData_Access is access all org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package.FtpConfigurationData'Class;
   type FtpConfigurationData_Access_Array is array (Natural range <>) of FtpConfigurationData_Access;
   type FtpConfigurationData_Access_Array_Access is access all FtpConfigurationData_Access_Array;
   type FtpConfigurationData_Access_Array_Access_Array is array (Natural range <>) of FtpConfigurationData_Access_Array_Access;
   type FtpConfigurationData_Access_Array_Access_Array_Access is access all FtpConfigurationData_Access_Array_Access_Array;
end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References;

with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FtpConfigurationData_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References.FtpConfigurationData_Access;
   function "=" (Left, Right : FtpConfigurationData_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References."=";
   subtype FtpConfigurationData_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References.FtpConfigurationData_Access_Array;
   function "=" (Left, Right : FtpConfigurationData_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References."=";
   subtype FtpConfigurationData_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References.FtpConfigurationData_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References."=";
   subtype FtpConfigurationData_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References.FtpConfigurationData_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfigurationData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References."=";
   subtype FtpConfigurationData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References.FtpConfigurationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package_References."=";

   type FtpConfigurationData is new Java_Object with null record;
   NAME : Unbounded_String;
   SERVER : Unbounded_String;
   PATH : Unbounded_String;
   USERNAME : Unbounded_String;
   PASSWORD : Unbounded_String;

   procedure Initialize (This : in out FtpConfigurationData'Class);
   function Create return FtpConfigurationData_Access;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;


