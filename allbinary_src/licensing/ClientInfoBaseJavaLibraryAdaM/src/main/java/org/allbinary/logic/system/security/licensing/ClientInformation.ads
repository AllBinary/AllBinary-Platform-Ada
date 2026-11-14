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

with AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
package org.allbinary.logic.system.security.licensing.ClientInformation_Package_References is
   type ClientInformation_Access is access all org.allbinary.logic.system.security.licensing.ClientInformation_Package.ClientInformation'Class;
   type ClientInformation_Access_Array is array (Natural range <>) of ClientInformation_Access;
   type ClientInformation_Access_Array_Access is access all ClientInformation_Access_Array;
   type ClientInformation_Access_Array_Access_Array is array (Natural range <>) of ClientInformation_Access_Array_Access;
   type ClientInformation_Access_Array_Access_Array_Access is access all ClientInformation_Access_Array_Access_Array;
   type ClientInformation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ClientInformation_Access_Array_Access;
   end record;
   function Java_Box (Value : ClientInformation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ClientInformation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ClientInformation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ClientInformation_Access_Array_Access is (if Value /= null and then Value.all in ClientInformation_Access_Array_Object'Class then ClientInformation_Access_Array_Object'Class (Value.all).Value else null);
   type ClientInformation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ClientInformation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ClientInformation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ClientInformation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ClientInformation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ClientInformation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ClientInformation_Access_Array_Access_Array_Object'Class then ClientInformation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.ClientInformation_Package_References;

with org.allbinary.logic.system.security.licensing.ClientInformation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
limited with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.security.licensing.ClientInformation_Package is

   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GenericOperatingSystem_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access;
   use type GenericOperatingSystem_Access;
   subtype GenericOperatingSystem_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array;
   use type GenericOperatingSystem_Access_Array;
   subtype GenericOperatingSystem_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access;
   use type GenericOperatingSystem_Access_Array_Access;
   subtype GenericOperatingSystem_Access_Array_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array;
   use type GenericOperatingSystem_Access_Array_Access_Array;
   subtype GenericOperatingSystem_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array_Access;
   use type GenericOperatingSystem_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ClientInformation_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access;
   function "=" (Left, Right : ClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array;
   function "=" (Left, Right : ClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access;
   function "=" (Left, Right : ClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   function Java_Box (Value : ClientInformation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.Java_Box;
   function Java_Unbox_ClientInformation_Access_Array (Value : access Java_Object'Class) return ClientInformation_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.Java_Unbox_ClientInformation_Access_Array;
   subtype ClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   function Java_Box (Value : ClientInformation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.Java_Box;
   function Java_Unbox_ClientInformation_Access_Array_Access_Array (Value : access Java_Object'Class) return ClientInformation_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.Java_Unbox_ClientInformation_Access_Array_Access_Array;

   type ClientInformation is new Java_Object and AbeClientInformationInterface with record
      operatingSystemInterface : GenericOperatingSystem_Access;
      name : Unbounded_String;
      shortName : Unbounded_String;
      version : Unbounded_String;
      specialName : Unbounded_String;
      hardSale : Boolean;
      licenseId : Unbounded_String;
      licenseServers : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return ClientInformation_Access;
   procedure init (This : in out ClientInformation);
   function getOperatingSystemInterface (This : in out ClientInformation) return GenericOperatingSystem_Access;
   function getName (This : in out ClientInformation) return Unbounded_String;
   function getSpecialName (This : in out ClientInformation) return Unbounded_String;
   function getVersion (This : in out ClientInformation) return Unbounded_String;
   function getLicenseId (This : in out ClientInformation) return Unbounded_String;
   function getLicenseServers (This : in out ClientInformation) return BasicArrayList_Access;
   function getLicenseServer (This : in out ClientInformation; index : Integer) return Unbounded_String;
   procedure getLicenseServer (This : in out ClientInformation; index : Integer);
   function getNumberOfLicenseServers (This : in out ClientInformation) return Integer;
   function toHashtable (This : in out ClientInformation) return ABHashtable_Access;
   function isSameId (This : in out ClientInformation; alicenseId : Unbounded_String) return Boolean;
   procedure isSameId (This : in out ClientInformation; alicenseId : Unbounded_String);
   function isLargerOrDifferentServerList (This : in out ClientInformation; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure isLargerOrDifferentServerList (This : in out ClientInformation; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure setHardSale (This : in out ClientInformation; hardSale : Boolean);
   function isHardSale (This : in out ClientInformation) return Boolean;
   procedure setOperatingSystemInterface (This : in out ClientInformation; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class);
   procedure setLicenseId (This : in out ClientInformation; licenseId : Unbounded_String);
   procedure setLicenseServers (This : in out ClientInformation; licenseServers_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function toShortString (This : in out ClientInformation) return Unbounded_String;

end org.allbinary.logic.system.security.licensing.ClientInformation_Package;


