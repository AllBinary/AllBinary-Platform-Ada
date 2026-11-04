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

limited with org.allbinary.game.health.HealthListenerInterface_Package;
package org.allbinary.game.health.HealthListenerInterface_Package_References is
   type HealthListenerInterface_Access is access all org.allbinary.game.health.HealthListenerInterface_Package.HealthListenerInterface'Class;
   type HealthListenerInterface_Access_Array is array (Natural range <>) of HealthListenerInterface_Access;
   type HealthListenerInterface_Access_Array_Access is access all HealthListenerInterface_Access_Array;
   type HealthListenerInterface_Access_Array_Access_Array is array (Natural range <>) of HealthListenerInterface_Access_Array_Access;
   type HealthListenerInterface_Access_Array_Access_Array_Access is access all HealthListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.health.HealthListenerInterface_Package_References;

with org.allbinary.game.health.HealthListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.health.HealthListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type HealthListenerInterface is interface;
   subtype HealthListenerInterface_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access;
   function "=" (Left, Right : HealthListenerInterface_Access) return Boolean renames org.allbinary.game.health.HealthListenerInterface_Package_References."=";
   subtype HealthListenerInterface_Access_Array is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array;
   function "=" (Left, Right : HealthListenerInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthListenerInterface_Package_References."=";
   subtype HealthListenerInterface_Access_Array_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access;
   function "=" (Left, Right : HealthListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthListenerInterface_Package_References."=";
   subtype HealthListenerInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthListenerInterface_Package_References."=";
   subtype HealthListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthListenerInterface_Package_References."=";
   function Java_Object_Access_From_HealthListenerInterface (Value : HealthListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onHealthChange (This : in out HealthListenerInterface) is abstract;

end org.allbinary.game.health.HealthListenerInterface_Package;


