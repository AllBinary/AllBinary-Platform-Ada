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
limited with org.allbinary.logic.system.security.licensing.LockedResources_Package;
package org.allbinary.logic.system.security.licensing.LockedResources_Package_References is
   type LockedResources_Access is access all org.allbinary.logic.system.security.licensing.LockedResources_Package.LockedResources'Class;
   type LockedResources_Access_Array is array (Natural range <>) of LockedResources_Access;
   type LockedResources_Access_Array_Access is access all LockedResources_Access_Array;
   type LockedResources_Access_Array_Access_Array is array (Natural range <>) of LockedResources_Access_Array_Access;
   type LockedResources_Access_Array_Access_Array_Access is access all LockedResources_Access_Array_Access_Array;
   type LockedResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedResources_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedResources_Access_Array_Access is (if Value /= null and then Value.all in LockedResources_Access_Array_Object'Class then LockedResources_Access_Array_Object'Class (Value.all).Value else null);
   type LockedResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LockedResources_Access_Array_Access_Array_Object'Class then LockedResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LockedResources_Package_References;

with org.allbinary.logic.system.security.licensing.LockedResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.security.licensing.LockedResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LockedResources_Access is org.allbinary.logic.system.security.licensing.LockedResources_Package_References.LockedResources_Access;
   function "=" (Left, Right : LockedResources_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References."=";
   subtype LockedResources_Access_Array is org.allbinary.logic.system.security.licensing.LockedResources_Package_References.LockedResources_Access_Array;
   function "=" (Left, Right : LockedResources_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References."=";
   subtype LockedResources_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedResources_Package_References.LockedResources_Access_Array_Access;
   function "=" (Left, Right : LockedResources_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References."=";
   function Java_Box (Value : LockedResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References.Java_Box;
   function Java_Unbox_LockedResources_Access_Array (Value : access Java_Object'Class) return LockedResources_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References.Java_Unbox_LockedResources_Access_Array;
   subtype LockedResources_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockedResources_Package_References.LockedResources_Access_Array_Access_Array;
   function "=" (Left, Right : LockedResources_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References."=";
   subtype LockedResources_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedResources_Package_References.LockedResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockedResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References."=";
   function Java_Box (Value : LockedResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References.Java_Box;
   function Java_Unbox_LockedResources_Access_Array_Access_Array (Value : access Java_Object'Class) return LockedResources_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedResources_Package_References.Java_Unbox_LockedResources_Access_Array_Access_Array;

   type LockedResources is new Java_Object with record
      LOCKED_DEMO_GAME_FEATURE_RESOURCE : Unbounded_String;
   end record;
   instance : LockedResources_Access;

   procedure Initialize (This : in out LockedResources'Class);
   function Create return LockedResources_Access;
   function getInstance return LockedResources_Access;

end org.allbinary.logic.system.security.licensing.LockedResources_Package;


