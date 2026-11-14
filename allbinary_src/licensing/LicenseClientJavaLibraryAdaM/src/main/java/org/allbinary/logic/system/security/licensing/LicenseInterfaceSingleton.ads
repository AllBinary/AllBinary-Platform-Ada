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
limited with org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package;
package org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References is
   type LicenseInterfaceSingleton_Access is access all org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package.LicenseInterfaceSingleton'Class;
   type LicenseInterfaceSingleton_Access_Array is array (Natural range <>) of LicenseInterfaceSingleton_Access;
   type LicenseInterfaceSingleton_Access_Array_Access is access all LicenseInterfaceSingleton_Access_Array;
   type LicenseInterfaceSingleton_Access_Array_Access_Array is array (Natural range <>) of LicenseInterfaceSingleton_Access_Array_Access;
   type LicenseInterfaceSingleton_Access_Array_Access_Array_Access is access all LicenseInterfaceSingleton_Access_Array_Access_Array;
   type LicenseInterfaceSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseInterfaceSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseInterfaceSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseInterfaceSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseInterfaceSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseInterfaceSingleton_Access_Array_Access is (if Value /= null and then Value.all in LicenseInterfaceSingleton_Access_Array_Object'Class then LicenseInterfaceSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type LicenseInterfaceSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseInterfaceSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseInterfaceSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseInterfaceSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseInterfaceSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseInterfaceSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LicenseInterfaceSingleton_Access_Array_Access_Array_Object'Class then LicenseInterfaceSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;

package org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package is

   package Reference_Types is
   subtype AbeLicenseInterface_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access;
   use type AbeLicenseInterface_Access;
   subtype AbeLicenseInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array;
   use type AbeLicenseInterface_Access_Array;
   subtype AbeLicenseInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access;
   use type AbeLicenseInterface_Access_Array_Access;
   subtype AbeLicenseInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array;
   use type AbeLicenseInterface_Access_Array_Access_Array;
   subtype AbeLicenseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array_Access;
   use type AbeLicenseInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseInterfaceSingleton_Access is org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.LicenseInterfaceSingleton_Access;
   function "=" (Left, Right : LicenseInterfaceSingleton_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References."=";
   subtype LicenseInterfaceSingleton_Access_Array is org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.LicenseInterfaceSingleton_Access_Array;
   function "=" (Left, Right : LicenseInterfaceSingleton_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References."=";
   subtype LicenseInterfaceSingleton_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.LicenseInterfaceSingleton_Access_Array_Access;
   function "=" (Left, Right : LicenseInterfaceSingleton_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References."=";
   function Java_Box (Value : LicenseInterfaceSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.Java_Box;
   function Java_Unbox_LicenseInterfaceSingleton_Access_Array (Value : access Java_Object'Class) return LicenseInterfaceSingleton_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.Java_Unbox_LicenseInterfaceSingleton_Access_Array;
   subtype LicenseInterfaceSingleton_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.LicenseInterfaceSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseInterfaceSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References."=";
   subtype LicenseInterfaceSingleton_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.LicenseInterfaceSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseInterfaceSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References."=";
   function Java_Box (Value : LicenseInterfaceSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.Java_Box;
   function Java_Unbox_LicenseInterfaceSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return LicenseInterfaceSingleton_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package_References.Java_Unbox_LicenseInterfaceSingleton_Access_Array_Access_Array;

   type LicenseInterfaceSingleton is new Java_Object with null record;
   licenseInterface : AbeLicenseInterface_Access;

   procedure Initialize (This : in out LicenseInterfaceSingleton'Class);
   function Create return LicenseInterfaceSingleton_Access;
   function getInstance return AbeLicenseInterface_Access;
   procedure init (licenseInterface_Param : access AbeLicenseInterface_Package.AbeLicenseInterface'Class);

end org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package;


