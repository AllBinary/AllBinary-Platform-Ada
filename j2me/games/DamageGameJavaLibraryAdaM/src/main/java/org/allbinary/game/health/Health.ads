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
limited with org.allbinary.game.health.Health_Package;
package org.allbinary.game.health.Health_Package_References is
   type Health_Access is access all org.allbinary.game.health.Health_Package.Health'Class;
   type Health_Access_Array is array (Natural range <>) of Health_Access;
   type Health_Access_Array_Access is access all Health_Access_Array;
   type Health_Access_Array_Access_Array is array (Natural range <>) of Health_Access_Array_Access;
   type Health_Access_Array_Access_Array_Access is access all Health_Access_Array_Access_Array;
   type Health_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Health_Access_Array_Access;
   end record;
   function Java_Box (Value : Health_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Health_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Health_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Health_Access_Array_Access is (if Value /= null and then Value.all in Health_Access_Array_Object'Class then Health_Access_Array_Object'Class (Value.all).Value else null);
   type Health_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Health_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Health_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Health_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Health_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Health_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Health_Access_Array_Access_Array_Object'Class then Health_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.health.Health_Package_References;

with org.allbinary.game.health.Health_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
limited with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.health.HealthListenerInterface_Package_References;

package org.allbinary.game.health.Health_Package is

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


   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   function "=" (Left, Right : Health_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   function "=" (Left, Right : Health_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   function Java_Box (Value : Health_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.Health_Package_References.Java_Box;
   function Java_Unbox_Health_Access_Array (Value : access Java_Object'Class) return Health_Access_Array_Access renames org.allbinary.game.health.Health_Package_References.Java_Unbox_Health_Access_Array;
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   function "=" (Left, Right : Health_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Health_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.Health_Package_References."=";
   function Java_Box (Value : Health_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.Health_Package_References.Java_Box;
   function Java_Unbox_Health_Access_Array_Access_Array (Value : access Java_Object'Class) return Health_Access_Array_Access_Array_Access renames org.allbinary.game.health.Health_Package_References.Java_Unbox_Health_Access_Array_Access_Array;

   type Health is new Java_Object and HealthInterface with record
      health_Var : Integer;
      maxHealth : Integer;
      healthListenerInterface : HealthListenerInterface_Access;
   end record;
   NULL_HEALTH : Health_Access;
   NAME : Unbounded_String;
   HEALTH_LABEL : Unbounded_String;
   MAX_HEALTH_LABEL : Unbounded_String;

   procedure Initialize (This : in out Health'Class; maxHealth : Integer);
   function Create (maxHealth : Integer) return Health_Access;
   procedure heal (This : in out Health; ahealth : Integer);
   procedure healMax (This : in out Health);
   function isDamaged (This : in out Health) return Boolean;
   procedure damage (This : in out Health; ahealth : Integer);
   function isAlive (This : in out Health) return Boolean;
   function getMaxHealth (This : in out Health) return Integer;
   procedure setMaxHealth (This : in out Health; maxHealth : Integer);
   procedure setHealth (This : in out Health; health_Var : Integer);
   function getHealth (This : in out Health) return Integer;
   procedure addListener (This : in out Health; healthGraphic_Param : access HealthListenerInterface_Package.HealthListenerInterface'Class);
   function toString (This : in out Health) return Unbounded_String;

end org.allbinary.game.health.Health_Package;


