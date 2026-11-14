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
limited with org.allbinary.logic.system.security.licensing.LockedUtil_Package;
package org.allbinary.logic.system.security.licensing.LockedUtil_Package_References is
   type LockedUtil_Access is access all org.allbinary.logic.system.security.licensing.LockedUtil_Package.LockedUtil'Class;
   type LockedUtil_Access_Array is array (Natural range <>) of LockedUtil_Access;
   type LockedUtil_Access_Array_Access is access all LockedUtil_Access_Array;
   type LockedUtil_Access_Array_Access_Array is array (Natural range <>) of LockedUtil_Access_Array_Access;
   type LockedUtil_Access_Array_Access_Array_Access is access all LockedUtil_Access_Array_Access_Array;
   type LockedUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedUtil_Access_Array_Access is (if Value /= null and then Value.all in LockedUtil_Access_Array_Object'Class then LockedUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LockedUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LockedUtil_Access_Array_Access_Array_Object'Class then LockedUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LockedUtil_Package_References;

with org.allbinary.logic.system.security.licensing.LockedUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package; use org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package;
limited with org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;

package org.allbinary.logic.system.security.licensing.LockedUtil_Package is

   package Reference_Types is
   subtype LockableFeature_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access;
   use type LockableFeature_Access;
   subtype LockableFeature_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array;
   use type LockableFeature_Access_Array;
   subtype LockableFeature_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access;
   use type LockableFeature_Access_Array_Access;
   subtype LockableFeature_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array;
   use type LockableFeature_Access_Array_Access_Array;
   subtype LockableFeature_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array_Access;
   use type LockableFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LockedUtil_Access is org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.LockedUtil_Access;
   function "=" (Left, Right : LockedUtil_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References."=";
   subtype LockedUtil_Access_Array is org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.LockedUtil_Access_Array;
   function "=" (Left, Right : LockedUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References."=";
   subtype LockedUtil_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.LockedUtil_Access_Array_Access;
   function "=" (Left, Right : LockedUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References."=";
   function Java_Box (Value : LockedUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.Java_Box;
   function Java_Unbox_LockedUtil_Access_Array (Value : access Java_Object'Class) return LockedUtil_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.Java_Unbox_LockedUtil_Access_Array;
   subtype LockedUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.LockedUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LockedUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References."=";
   subtype LockedUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.LockedUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockedUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References."=";
   function Java_Box (Value : LockedUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.Java_Box;
   function Java_Unbox_LockedUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LockedUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedUtil_Package_References.Java_Unbox_LockedUtil_Access_Array_Access_Array;

   type LockedUtil is new Java_Object and LockedUtilInterface with null record;
   instance : LockedUtil_Access;

   procedure Initialize (This : in out LockedUtil'Class);
   function Create return LockedUtil_Access;
   function getInstance return LockedUtil_Access;
   function isLocked (This : in out LockedUtil) return Boolean;
   function isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean;
   procedure isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class);

end org.allbinary.logic.system.security.licensing.LockedUtil_Package;


