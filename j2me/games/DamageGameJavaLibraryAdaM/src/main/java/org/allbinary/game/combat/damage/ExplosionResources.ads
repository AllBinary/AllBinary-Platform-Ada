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
limited with org.allbinary.game.combat.damage.ExplosionResources_Package;
package org.allbinary.game.combat.damage.ExplosionResources_Package_References is
   type ExplosionResources_Access is access all org.allbinary.game.combat.damage.ExplosionResources_Package.ExplosionResources'Class;
   type ExplosionResources_Access_Array is array (Natural range <>) of ExplosionResources_Access;
   type ExplosionResources_Access_Array_Access is access all ExplosionResources_Access_Array;
   type ExplosionResources_Access_Array_Access_Array is array (Natural range <>) of ExplosionResources_Access_Array_Access;
   type ExplosionResources_Access_Array_Access_Array_Access is access all ExplosionResources_Access_Array_Access_Array;
   type ExplosionResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExplosionResources_Access_Array_Access;
   end record;
   function Java_Box (Value : ExplosionResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExplosionResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExplosionResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExplosionResources_Access_Array_Access is (if Value /= null and then Value.all in ExplosionResources_Access_Array_Object'Class then ExplosionResources_Access_Array_Object'Class (Value.all).Value else null);
   type ExplosionResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExplosionResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ExplosionResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExplosionResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExplosionResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExplosionResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ExplosionResources_Access_Array_Access_Array_Object'Class then ExplosionResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.damage.ExplosionResources_Package_References;

with org.allbinary.game.combat.damage.ExplosionResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.combat.damage.ExplosionResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ExplosionResources_Access is org.allbinary.game.combat.damage.ExplosionResources_Package_References.ExplosionResources_Access;
   function "=" (Left, Right : ExplosionResources_Access) return Boolean renames org.allbinary.game.combat.damage.ExplosionResources_Package_References."=";
   subtype ExplosionResources_Access_Array is org.allbinary.game.combat.damage.ExplosionResources_Package_References.ExplosionResources_Access_Array;
   function "=" (Left, Right : ExplosionResources_Access_Array) return Boolean renames org.allbinary.game.combat.damage.ExplosionResources_Package_References."=";
   subtype ExplosionResources_Access_Array_Access is org.allbinary.game.combat.damage.ExplosionResources_Package_References.ExplosionResources_Access_Array_Access;
   function "=" (Left, Right : ExplosionResources_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.ExplosionResources_Package_References."=";
   function Java_Box (Value : ExplosionResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.ExplosionResources_Package_References.Java_Box;
   function Java_Unbox_ExplosionResources_Access_Array (Value : access Java_Object'Class) return ExplosionResources_Access_Array_Access renames org.allbinary.game.combat.damage.ExplosionResources_Package_References.Java_Unbox_ExplosionResources_Access_Array;
   subtype ExplosionResources_Access_Array_Access_Array is org.allbinary.game.combat.damage.ExplosionResources_Package_References.ExplosionResources_Access_Array_Access_Array;
   function "=" (Left, Right : ExplosionResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.ExplosionResources_Package_References."=";
   subtype ExplosionResources_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.ExplosionResources_Package_References.ExplosionResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExplosionResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.ExplosionResources_Package_References."=";
   function Java_Box (Value : ExplosionResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.ExplosionResources_Package_References.Java_Box;
   function Java_Unbox_ExplosionResources_Access_Array_Access_Array (Value : access Java_Object'Class) return ExplosionResources_Access_Array_Access_Array_Access renames org.allbinary.game.combat.damage.ExplosionResources_Package_References.Java_Unbox_ExplosionResources_Access_Array_Access_Array;

   type ExplosionResources is new Java_Object with record
      EXPLOSION_90_RESOURCE : Unbounded_String;
      EXPLOSION_60_RESOURCE : Unbounded_String;
      HALF_EXPLOSION_RESOURCE : Unbounded_String;
      THIRD_EXPLOSION_RESOURCE : Unbounded_String;
   end record;
   instance : ExplosionResources_Access;

   procedure Initialize (This : in out ExplosionResources'Class);
   function Create return ExplosionResources_Access;
   function getInstance return ExplosionResources_Access;

end org.allbinary.game.combat.damage.ExplosionResources_Package;


