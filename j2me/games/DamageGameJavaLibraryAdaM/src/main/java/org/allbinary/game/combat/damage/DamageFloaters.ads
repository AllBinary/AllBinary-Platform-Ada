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
limited with org.allbinary.game.combat.damage.DamageFloaters_Package;
package org.allbinary.game.combat.damage.DamageFloaters_Package_References is
   type DamageFloaters_Access is access all org.allbinary.game.combat.damage.DamageFloaters_Package.DamageFloaters'Class;
   type DamageFloaters_Access_Array is array (Natural range <>) of DamageFloaters_Access;
   type DamageFloaters_Access_Array_Access is access all DamageFloaters_Access_Array;
   type DamageFloaters_Access_Array_Access_Array is array (Natural range <>) of DamageFloaters_Access_Array_Access;
   type DamageFloaters_Access_Array_Access_Array_Access is access all DamageFloaters_Access_Array_Access_Array;
   type DamageFloaters_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DamageFloaters_Access_Array_Access;
   end record;
   function Java_Box (Value : DamageFloaters_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DamageFloaters_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DamageFloaters_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DamageFloaters_Access_Array_Access is (if Value /= null and then Value.all in DamageFloaters_Access_Array_Object'Class then DamageFloaters_Access_Array_Object'Class (Value.all).Value else null);
   type DamageFloaters_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DamageFloaters_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DamageFloaters_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DamageFloaters_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DamageFloaters_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DamageFloaters_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DamageFloaters_Access_Array_Access_Array_Object'Class then DamageFloaters_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.damage.DamageFloaters_Package_References;

with org.allbinary.game.combat.damage.DamageFloaters_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.combat.damage.DamageFloaters_Package is

   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DamageFloaters_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access;
   function "=" (Left, Right : DamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   function Java_Box (Value : DamageFloaters_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.DamageFloaters_Package_References.Java_Box;
   function Java_Unbox_DamageFloaters_Access_Array (Value : access Java_Object'Class) return DamageFloaters_Access_Array_Access renames org.allbinary.game.combat.damage.DamageFloaters_Package_References.Java_Unbox_DamageFloaters_Access_Array;
   subtype DamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   function Java_Box (Value : DamageFloaters_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.DamageFloaters_Package_References.Java_Box;
   function Java_Unbox_DamageFloaters_Access_Array_Access_Array (Value : access Java_Object'Class) return DamageFloaters_Access_Array_Access_Array_Access renames org.allbinary.game.combat.damage.DamageFloaters_Package_References.Java_Unbox_DamageFloaters_Access_Array_Access_Array;

   type DamageFloaters is new Paintable with null record;
   SINGLETON : DamageFloaters_Access;

   procedure Initialize (This : in out DamageFloaters'Class);
   function Create return DamageFloaters_Access;
   function getInstance return DamageFloaters_Access;
   procedure add (This : in out DamageFloaters; damage : Integer);

end org.allbinary.game.combat.damage.DamageFloaters_Package;


