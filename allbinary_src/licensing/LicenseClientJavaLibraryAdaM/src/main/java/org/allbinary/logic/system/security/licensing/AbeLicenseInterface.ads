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

limited with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
package org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References is
   type AbeLicenseInterface_Access is access all org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package.AbeLicenseInterface'Class;
   type AbeLicenseInterface_Access_Array is array (Natural range <>) of AbeLicenseInterface_Access;
   type AbeLicenseInterface_Access_Array_Access is access all AbeLicenseInterface_Access_Array;
   type AbeLicenseInterface_Access_Array_Access_Array is array (Natural range <>) of AbeLicenseInterface_Access_Array_Access;
   type AbeLicenseInterface_Access_Array_Access_Array_Access is access all AbeLicenseInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;

with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package_References;

package org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype LicenseType_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access;
   use type LicenseType_Access;
   subtype LicenseType_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array;
   use type LicenseType_Access_Array;
   subtype LicenseType_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access;
   use type LicenseType_Access_Array_Access;
   subtype LicenseType_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array;
   use type LicenseType_Access_Array_Access_Array;
   subtype LicenseType_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array_Access;
   use type LicenseType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AbeLicenseInterface is interface;
   subtype AbeLicenseInterface_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   function Java_Object_Access_From_AbeLicenseInterface (Value : AbeLicenseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function hasKey (This : in out AbeLicenseInterface) return Boolean is abstract;
   function getKey (This : in out AbeLicenseInterface; keyName : Unbounded_String) return Unbounded_String is abstract;
   function getLicenseId (This : in out AbeLicenseInterface) return Unbounded_String is abstract;
   function getServers (This : in out AbeLicenseInterface) return BasicArrayList_Access is abstract;
   function getSpecial (This : in out AbeLicenseInterface) return Unbounded_String is abstract;
   function getLicenseType (This : in out AbeLicenseInterface) return LicenseType_Access is abstract;
   function isValid (This : in out AbeLicenseInterface) return Boolean is abstract;
   function toString (This : in out AbeLicenseInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;


