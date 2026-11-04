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

limited with org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
package org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References is
   type HealthInterfaceCompositeInterface_Access is access all org.allbinary.game.health.HealthInterfaceCompositeInterface_Package.HealthInterfaceCompositeInterface'Class;
   type HealthInterfaceCompositeInterface_Access_Array is array (Natural range <>) of HealthInterfaceCompositeInterface_Access;
   type HealthInterfaceCompositeInterface_Access_Array_Access is access all HealthInterfaceCompositeInterface_Access_Array;
   type HealthInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of HealthInterfaceCompositeInterface_Access_Array_Access;
   type HealthInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all HealthInterfaceCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References;

with org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;

package org.allbinary.game.health.HealthInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   use type Health_Access;
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   use type Health_Access_Array;
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   use type Health_Access_Array_Access;
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   use type Health_Access_Array_Access_Array;
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   use type Health_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HealthInterfaceCompositeInterface is interface;
   subtype HealthInterfaceCompositeInterface_Access is org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References.HealthInterfaceCompositeInterface_Access;
   function "=" (Left, Right : HealthInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References."=";
   subtype HealthInterfaceCompositeInterface_Access_Array is org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References.HealthInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : HealthInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References."=";
   subtype HealthInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References.HealthInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : HealthInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References."=";
   subtype HealthInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References.HealthInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References."=";
   subtype HealthInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References.HealthInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package_References."=";
   function Java_Object_Access_From_HealthInterfaceCompositeInterface (Value : HealthInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getHealthInterface (This : in out HealthInterfaceCompositeInterface) return Health_Access is abstract;

end org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;


