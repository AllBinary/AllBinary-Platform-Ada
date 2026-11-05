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

limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
package org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References is
   type AbeClientInformationInterface_Access is access all org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package.AbeClientInformationInterface'Class;
   type AbeClientInformationInterface_Access_Array is array (Natural range <>) of AbeClientInformationInterface_Access;
   type AbeClientInformationInterface_Access_Array_Access is access all AbeClientInformationInterface_Access_Array;
   type AbeClientInformationInterface_Access_Array_Access_Array is array (Natural range <>) of AbeClientInformationInterface_Access_Array_Access;
   type AbeClientInformationInterface_Access_Array_Access_Array_Access is access all AbeClientInformationInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package is

   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   type AbeClientInformationInterface is interface;
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
   function Java_Object_Access_From_AbeClientInformationInterface (Value : AbeClientInformationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out AbeClientInformationInterface) is abstract;
   function getOperatingSystemInterface (This : in out AbeClientInformationInterface) return GenericOperatingSystem_Access is abstract;
   function getName (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getSpecialName (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getVersion (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getLicenseId (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;
   function getLicenseServers (This : in out AbeClientInformationInterface) return BasicArrayList_Access is abstract;
   function getLicenseServer (This : in out AbeClientInformationInterface; index : Integer) return Unbounded_String is abstract;
   procedure getLicenseServer (This : in out AbeClientInformationInterface; index : Integer) is abstract;
   function getNumberOfLicenseServers (This : in out AbeClientInformationInterface) return Integer is abstract;
   function toHashtable (This : in out AbeClientInformationInterface) return ABHashtable_Access is abstract;
   function isSameId (This : in out AbeClientInformationInterface; alicenseId : Unbounded_String) return Boolean is abstract;
   procedure isSameId (This : in out AbeClientInformationInterface; alicenseId : Unbounded_String) is abstract;
   function isLargerOrDifferentServerList (This : in out AbeClientInformationInterface; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is abstract;
   procedure isLargerOrDifferentServerList (This : in out AbeClientInformationInterface; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   function isHardSale (This : in out AbeClientInformationInterface) return Boolean is abstract;
   function toShortString (This : in out AbeClientInformationInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;


