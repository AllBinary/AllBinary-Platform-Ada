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

limited with org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package;
package org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References is
   type FtpConfiguration_Access is access all org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package.FtpConfiguration'Class;
   type FtpConfiguration_Access_Array is array (Natural range <>) of FtpConfiguration_Access;
   type FtpConfiguration_Access_Array_Access is access all FtpConfiguration_Access_Array;
   type FtpConfiguration_Access_Array_Access_Array is array (Natural range <>) of FtpConfiguration_Access_Array_Access;
   type FtpConfiguration_Access_Array_Access_Array_Access is access all FtpConfiguration_Access_Array_Access_Array;
end org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References;

with org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;

package org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FtpConfiguration_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References.FtpConfiguration_Access;
   function "=" (Left, Right : FtpConfiguration_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References."=";
   subtype FtpConfiguration_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References.FtpConfiguration_Access_Array;
   function "=" (Left, Right : FtpConfiguration_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References."=";
   subtype FtpConfiguration_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References.FtpConfiguration_Access_Array_Access;
   function "=" (Left, Right : FtpConfiguration_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References."=";
   subtype FtpConfiguration_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References.FtpConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References."=";
   subtype FtpConfiguration_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References.FtpConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package_References."=";

   type FtpConfiguration is new Java_Object and FtpConfigurationInterface with record
      ftpServer : Unbounded_String;
      ftpPath : Unbounded_String;
      ftpUserName : Unbounded_String;
      ftpPassword : Unbounded_String;
   end record;

   procedure Initialize (This : in out FtpConfiguration'Class);
   function Create return FtpConfiguration_Access;
   procedure Initialize (This : in out FtpConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return FtpConfiguration_Access;
   function getServer (This : in out FtpConfiguration) return Unbounded_String;
   function getPath (This : in out FtpConfiguration) return Unbounded_String;
   function getUserName (This : in out FtpConfiguration) return Unbounded_String;
   function getPassword (This : in out FtpConfiguration) return Unbounded_String;
   procedure setServer (This : in out FtpConfiguration; value : Unbounded_String);
   procedure setPath (This : in out FtpConfiguration; value : Unbounded_String);
   procedure setUserName (This : in out FtpConfiguration; value : Unbounded_String);
   procedure setPassword (This : in out FtpConfiguration; value : Unbounded_String);

end org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package;


