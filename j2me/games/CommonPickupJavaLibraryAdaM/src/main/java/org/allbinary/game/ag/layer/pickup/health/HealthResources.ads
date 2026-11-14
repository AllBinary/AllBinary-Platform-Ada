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
limited with org.allbinary.game.ag.layer.pickup.health.HealthResources_Package;
package org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References is
   type HealthResources_Access is access all org.allbinary.game.ag.layer.pickup.health.HealthResources_Package.HealthResources'Class;
   type HealthResources_Access_Array is array (Natural range <>) of HealthResources_Access;
   type HealthResources_Access_Array_Access is access all HealthResources_Access_Array;
   type HealthResources_Access_Array_Access_Array is array (Natural range <>) of HealthResources_Access_Array_Access;
   type HealthResources_Access_Array_Access_Array_Access is access all HealthResources_Access_Array_Access_Array;
   type HealthResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthResources_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthResources_Access_Array_Access is (if Value /= null and then Value.all in HealthResources_Access_Array_Object'Class then HealthResources_Access_Array_Object'Class (Value.all).Value else null);
   type HealthResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthResources_Access_Array_Access_Array_Object'Class then HealthResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References;

with org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.layer.pickup.health.HealthResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HealthResources_Access is org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.HealthResources_Access;
   function "=" (Left, Right : HealthResources_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References."=";
   subtype HealthResources_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.HealthResources_Access_Array;
   function "=" (Left, Right : HealthResources_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References."=";
   subtype HealthResources_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.HealthResources_Access_Array_Access;
   function "=" (Left, Right : HealthResources_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References."=";
   function Java_Box (Value : HealthResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.Java_Box;
   function Java_Unbox_HealthResources_Access_Array (Value : access Java_Object'Class) return HealthResources_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.Java_Unbox_HealthResources_Access_Array;
   subtype HealthResources_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.HealthResources_Access_Array_Access_Array;
   function "=" (Left, Right : HealthResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References."=";
   subtype HealthResources_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.HealthResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References."=";
   function Java_Box (Value : HealthResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.Java_Box;
   function Java_Unbox_HealthResources_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthResources_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.health.HealthResources_Package_References.Java_Unbox_HealthResources_Access_Array_Access_Array;

   type HealthResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   SINGLETON : HealthResources_Access;

   procedure Initialize (This : in out HealthResources'Class);
   function Create return HealthResources_Access;
   function getInstance return HealthResources_Access;

end org.allbinary.game.ag.layer.pickup.health.HealthResources_Package;


