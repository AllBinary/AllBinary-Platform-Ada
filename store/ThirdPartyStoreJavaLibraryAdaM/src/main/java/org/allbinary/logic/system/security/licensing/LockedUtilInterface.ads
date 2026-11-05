-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package;
package org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References is
   type LockedUtilInterface_Access is access all org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package.LockedUtilInterface'Class;
   type LockedUtilInterface_Access_Array is array (Natural range <>) of LockedUtilInterface_Access;
   type LockedUtilInterface_Access_Array_Access is access all LockedUtilInterface_Access_Array;
   type LockedUtilInterface_Access_Array_Access_Array is array (Natural range <>) of LockedUtilInterface_Access_Array_Access;
   type LockedUtilInterface_Access_Array_Access_Array_Access is access all LockedUtilInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References;

with org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;

package org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package is

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


   type LockedUtilInterface is interface;
   subtype LockedUtilInterface_Access is org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References.LockedUtilInterface_Access;
   function "=" (Left, Right : LockedUtilInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References."=";
   subtype LockedUtilInterface_Access_Array is org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References.LockedUtilInterface_Access_Array;
   function "=" (Left, Right : LockedUtilInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References."=";
   subtype LockedUtilInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References.LockedUtilInterface_Access_Array_Access;
   function "=" (Left, Right : LockedUtilInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References."=";
   subtype LockedUtilInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References.LockedUtilInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LockedUtilInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References."=";
   subtype LockedUtilInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References.LockedUtilInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockedUtilInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package_References."=";
   function Java_Object_Access_From_LockedUtilInterface (Value : LockedUtilInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isLocked (This : in out LockedUtilInterface) return Boolean is abstract;
   function isLockedFeature (This : in out LockedUtilInterface; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean is abstract;
   procedure isLockedFeature (This : in out LockedUtilInterface; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) is abstract;

end org.allbinary.logic.system.security.licensing.LockedUtilInterface_Package;


