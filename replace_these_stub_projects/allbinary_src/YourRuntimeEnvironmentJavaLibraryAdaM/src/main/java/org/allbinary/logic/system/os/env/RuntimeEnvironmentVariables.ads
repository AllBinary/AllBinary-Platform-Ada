--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.BufferedReader_Package; use java.io.BufferedReader_Package;
--  with java.io.InputStreamReader_Package; use java.io.InputStreamReader_Package;
--  with java.util.Properties_Package; use java.util.Properties_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.os.env.RuntimeEnvironmentVariables_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package OperatingSystems_Package renames Standard.org.allbinary.logic.system.os.OperatingSystems_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type RuntimeEnvironmentVariables is tagged;
   type RuntimeEnvironmentVariables_Access is access all RuntimeEnvironmentVariables'Class;
   type RuntimeEnvironmentVariables_Access_Array is array (Natural range <>) of RuntimeEnvironmentVariables_Access;
   type RuntimeEnvironmentVariables_Access_Array_Access is access all RuntimeEnvironmentVariables_Access_Array;

   type RuntimeEnvironmentVariables is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out RuntimeEnvironmentVariables'Class);
   function Create return RuntimeEnvironmentVariables_Access;
   function getTest1 (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getTest1 (This : in out RuntimeEnvironmentVariables);
   function getVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String) return Unbounded_String;
   procedure getVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String);
   function get (This : in out RuntimeEnvironmentVariables) return Properties_Access;
   procedure get (This : in out RuntimeEnvironmentVariables);
   function getTempDir (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getTempDir (This : in out RuntimeEnvironmentVariables);
   function getLibraryPath (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getLibraryPath (This : in out RuntimeEnvironmentVariables);
   function getClassPath (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getClassPath (This : in out RuntimeEnvironmentVariables);
   procedure updateLibraryPath (This : in out RuntimeEnvironmentVariables; libPath : Unbounded_String);
   function getUserHome (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getUserHome (This : in out RuntimeEnvironmentVariables);
   function getUserDir (This : in out RuntimeEnvironmentVariables) return Unbounded_String;
   procedure getUserDir (This : in out RuntimeEnvironmentVariables);
   procedure set (This : in out RuntimeEnvironmentVariables);
   procedure setVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String; val : Unbounded_String);

end org.allbinary.logic.system.os.env.RuntimeEnvironmentVariables_Package;


