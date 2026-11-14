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
limited with org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package;
package org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References is
   type LicenseTypeFactory_Access is access all org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package.LicenseTypeFactory'Class;
   type LicenseTypeFactory_Access_Array is array (Natural range <>) of LicenseTypeFactory_Access;
   type LicenseTypeFactory_Access_Array_Access is access all LicenseTypeFactory_Access_Array;
   type LicenseTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseTypeFactory_Access_Array_Access;
   type LicenseTypeFactory_Access_Array_Access_Array_Access is access all LicenseTypeFactory_Access_Array_Access_Array;
   type LicenseTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in LicenseTypeFactory_Access_Array_Object'Class then LicenseTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LicenseTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LicenseTypeFactory_Access_Array_Access_Array_Object'Class then LicenseTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References;

with org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package_References;

package org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package is

   package Reference_Types is
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


   subtype LicenseTypeFactory_Access is org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.LicenseTypeFactory_Access;
   function "=" (Left, Right : LicenseTypeFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References."=";
   subtype LicenseTypeFactory_Access_Array is org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.LicenseTypeFactory_Access_Array;
   function "=" (Left, Right : LicenseTypeFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References."=";
   subtype LicenseTypeFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.LicenseTypeFactory_Access_Array_Access;
   function "=" (Left, Right : LicenseTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References."=";
   function Java_Box (Value : LicenseTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.Java_Box;
   function Java_Unbox_LicenseTypeFactory_Access_Array (Value : access Java_Object'Class) return LicenseTypeFactory_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.Java_Unbox_LicenseTypeFactory_Access_Array;
   subtype LicenseTypeFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.LicenseTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References."=";
   subtype LicenseTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.LicenseTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References."=";
   function Java_Box (Value : LicenseTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.Java_Box;
   function Java_Unbox_LicenseTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LicenseTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package_References.Java_Unbox_LicenseTypeFactory_Access_Array_Access_Array;

   type LicenseTypeFactory is new Java_Object with record
      UNKNOWN : LicenseType_Access;
      DEMO : LicenseType_Access;
      NORMAL : LicenseType_Access;
   end record;
   instance : LicenseTypeFactory_Access;

   procedure Initialize (This : in out LicenseTypeFactory'Class);
   function Create return LicenseTypeFactory_Access;
   function getInstance return LicenseTypeFactory_Access;
   function getInstance (This : in out LicenseTypeFactory; name : Unbounded_String) return LicenseType_Access;
   procedure getInstance (This : in out LicenseTypeFactory; name : Unbounded_String);

end org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package;


