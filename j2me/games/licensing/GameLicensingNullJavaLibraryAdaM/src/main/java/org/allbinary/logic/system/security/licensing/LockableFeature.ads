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

limited with org.allbinary.logic.system.security.licensing.LockableFeature_Package;
package org.allbinary.logic.system.security.licensing.LockableFeature_Package_References is
   type LockableFeature_Access is access all org.allbinary.logic.system.security.licensing.LockableFeature_Package.LockableFeature'Class;
   type LockableFeature_Access_Array is array (Natural range <>) of LockableFeature_Access;
   type LockableFeature_Access_Array_Access is access all LockableFeature_Access_Array;
   type LockableFeature_Access_Array_Access_Array is array (Natural range <>) of LockableFeature_Access_Array_Access;
   type LockableFeature_Access_Array_Access_Array_Access is access all LockableFeature_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;

with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.licensing.LockableFeature_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LockableFeature_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access;
   function "=" (Left, Right : LockableFeature_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array;
   function "=" (Left, Right : LockableFeature_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access;
   function "=" (Left, Right : LockableFeature_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array;
   function "=" (Left, Right : LockableFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockableFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";

   type LockableFeature is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out LockableFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return LockableFeature_Access;
   function getName (This : in out LockableFeature) return Unbounded_String;

end org.allbinary.logic.system.security.licensing.LockableFeature_Package;


