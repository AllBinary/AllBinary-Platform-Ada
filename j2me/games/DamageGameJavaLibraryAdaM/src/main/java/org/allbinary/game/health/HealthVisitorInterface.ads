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

limited with org.allbinary.game.health.HealthVisitorInterface_Package;
package org.allbinary.game.health.HealthVisitorInterface_Package_References is
   type HealthVisitorInterface_Access is access all org.allbinary.game.health.HealthVisitorInterface_Package.HealthVisitorInterface'Class;
   type HealthVisitorInterface_Access_Array is array (Natural range <>) of HealthVisitorInterface_Access;
   type HealthVisitorInterface_Access_Array_Access is access all HealthVisitorInterface_Access_Array;
   type HealthVisitorInterface_Access_Array_Access_Array is array (Natural range <>) of HealthVisitorInterface_Access_Array_Access;
   type HealthVisitorInterface_Access_Array_Access_Array_Access is access all HealthVisitorInterface_Access_Array_Access_Array;
end org.allbinary.game.health.HealthVisitorInterface_Package_References;

with org.allbinary.game.health.HealthVisitorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;

package org.allbinary.game.health.HealthVisitorInterface_Package is

   package Reference_Types is
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   use type HealthInterface_Access;
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   use type HealthInterface_Access_Array;
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   use type HealthInterface_Access_Array_Access;
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   use type HealthInterface_Access_Array_Access_Array;
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   use type HealthInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HealthVisitorInterface is interface;
   subtype HealthVisitorInterface_Access is org.allbinary.game.health.HealthVisitorInterface_Package_References.HealthVisitorInterface_Access;
   function "=" (Left, Right : HealthVisitorInterface_Access) return Boolean renames org.allbinary.game.health.HealthVisitorInterface_Package_References."=";
   subtype HealthVisitorInterface_Access_Array is org.allbinary.game.health.HealthVisitorInterface_Package_References.HealthVisitorInterface_Access_Array;
   function "=" (Left, Right : HealthVisitorInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthVisitorInterface_Package_References."=";
   subtype HealthVisitorInterface_Access_Array_Access is org.allbinary.game.health.HealthVisitorInterface_Package_References.HealthVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : HealthVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthVisitorInterface_Package_References."=";
   subtype HealthVisitorInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthVisitorInterface_Package_References.HealthVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthVisitorInterface_Package_References."=";
   subtype HealthVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthVisitorInterface_Package_References.HealthVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthVisitorInterface_Package_References."=";
   function Java_Object_Access_From_HealthVisitorInterface (Value : HealthVisitorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure visit (This : in out HealthVisitorInterface; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class) is abstract;

end org.allbinary.game.health.HealthVisitorInterface_Package;


