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
limited with org.allbinary.game.health.HealthInterface_Package;
package org.allbinary.game.health.HealthInterface_Package_References is
   type HealthInterface_Access is access all org.allbinary.game.health.HealthInterface_Package.HealthInterface'Class;
   type HealthInterface_Access_Array is array (Natural range <>) of HealthInterface_Access;
   type HealthInterface_Access_Array_Access is access all HealthInterface_Access_Array;
   type HealthInterface_Access_Array_Access_Array is array (Natural range <>) of HealthInterface_Access_Array_Access;
   type HealthInterface_Access_Array_Access_Array_Access is access all HealthInterface_Access_Array_Access_Array;
   type HealthInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthInterface_Access_Array_Access is (if Value /= null and then Value.all in HealthInterface_Access_Array_Object'Class then HealthInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HealthInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthInterface_Access_Array_Access_Array_Object'Class then HealthInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.health.HealthInterface_Package_References;

with org.allbinary.game.health.HealthInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.health.HealthListenerInterface_Package_References;

package org.allbinary.game.health.HealthInterface_Package is

   package Reference_Types is
   subtype HealthListenerInterface_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access;
   use type HealthListenerInterface_Access;
   subtype HealthListenerInterface_Access_Array is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array;
   use type HealthListenerInterface_Access_Array;
   subtype HealthListenerInterface_Access_Array_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access;
   use type HealthListenerInterface_Access_Array_Access;
   subtype HealthListenerInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access_Array;
   use type HealthListenerInterface_Access_Array_Access_Array;
   subtype HealthListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthListenerInterface_Package_References.HealthListenerInterface_Access_Array_Access_Array_Access;
   use type HealthListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HealthInterface is interface;
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   function "=" (Left, Right : HealthInterface_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   function Java_Box (Value : HealthInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthInterface_Package_References.Java_Box;
   function Java_Unbox_HealthInterface_Access_Array (Value : access Java_Object'Class) return HealthInterface_Access_Array_Access renames org.allbinary.game.health.HealthInterface_Package_References.Java_Unbox_HealthInterface_Access_Array;
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   function Java_Box (Value : HealthInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthInterface_Package_References.Java_Box;
   function Java_Unbox_HealthInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthInterface_Access_Array_Access_Array_Access renames org.allbinary.game.health.HealthInterface_Package_References.Java_Unbox_HealthInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HealthInterface (Value : HealthInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isAlive (This : in out HealthInterface) return Boolean is abstract;
   procedure damage (This : in out HealthInterface; ahealth : Integer) is abstract;
   procedure heal (This : in out HealthInterface; ahealth : Integer) is abstract;
   procedure healMax (This : in out HealthInterface) is abstract;
   function getMaxHealth (This : in out HealthInterface) return Integer is abstract;
   procedure setMaxHealth (This : in out HealthInterface; maxHealth : Integer) is abstract;
   function getHealth (This : in out HealthInterface) return Integer is abstract;
   procedure addListener (This : in out HealthInterface; healthListenerInterface_Param : access HealthListenerInterface_Package.HealthListenerInterface'Class) is abstract;

end org.allbinary.game.health.HealthInterface_Package;


