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
limited with org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;
package org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References is
   type DamageableBaseBehavior_Access is access all org.allbinary.game.combat.damage.DamageableBaseBehavior_Package.DamageableBaseBehavior'Class;
   type DamageableBaseBehavior_Access_Array is array (Natural range <>) of DamageableBaseBehavior_Access;
   type DamageableBaseBehavior_Access_Array_Access is access all DamageableBaseBehavior_Access_Array;
   type DamageableBaseBehavior_Access_Array_Access_Array is array (Natural range <>) of DamageableBaseBehavior_Access_Array_Access;
   type DamageableBaseBehavior_Access_Array_Access_Array_Access is access all DamageableBaseBehavior_Access_Array_Access_Array;
   type DamageableBaseBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DamageableBaseBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : DamageableBaseBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DamageableBaseBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DamageableBaseBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DamageableBaseBehavior_Access_Array_Access is (if Value /= null and then Value.all in DamageableBaseBehavior_Access_Array_Object'Class then DamageableBaseBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type DamageableBaseBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DamageableBaseBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DamageableBaseBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DamageableBaseBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DamageableBaseBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DamageableBaseBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DamageableBaseBehavior_Access_Array_Access_Array_Object'Class then DamageableBaseBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References;

with org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;

package org.allbinary.game.combat.damage.DamageableBaseBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DamageableBaseBehavior_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access;
   function "=" (Left, Right : DamageableBaseBehavior_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References."=";
   subtype DamageableBaseBehavior_Access_Array is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array;
   function "=" (Left, Right : DamageableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References."=";
   subtype DamageableBaseBehavior_Access_Array_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : DamageableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References."=";
   function Java_Box (Value : DamageableBaseBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.Java_Box;
   function Java_Unbox_DamageableBaseBehavior_Access_Array (Value : access Java_Object'Class) return DamageableBaseBehavior_Access_Array_Access renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.Java_Unbox_DamageableBaseBehavior_Access_Array;
   subtype DamageableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : DamageableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References."=";
   subtype DamageableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References."=";
   function Java_Box (Value : DamageableBaseBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.Java_Box;
   function Java_Unbox_DamageableBaseBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return DamageableBaseBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.Java_Unbox_DamageableBaseBehavior_Access_Array_Access_Array;

   type DamageableBaseBehavior is new Java_Object and DamageableInterface with null record;
   instance : DamageableBaseBehavior_Access;

   procedure Initialize (This : in out DamageableBaseBehavior'Class);
   function Create return DamageableBaseBehavior_Access;
   function getInstance return DamageableBaseBehavior_Access;
   function getName (This : in out DamageableBaseBehavior) return Unbounded_String;
   procedure damage (This : in out DamageableBaseBehavior; damage : Integer; damageType : Integer);
   function getDamage (This : in out DamageableBaseBehavior; damageType : Integer) return Integer;
   procedure getDamage (This : in out DamageableBaseBehavior; damageType : Integer);

end org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;


