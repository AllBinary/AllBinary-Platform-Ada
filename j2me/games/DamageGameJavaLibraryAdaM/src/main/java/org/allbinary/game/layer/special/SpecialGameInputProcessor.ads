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
limited with org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;
package org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References is
   type SpecialGameInputProcessor_Access is access all org.allbinary.game.layer.special.SpecialGameInputProcessor_Package.SpecialGameInputProcessor'Class;
   type SpecialGameInputProcessor_Access_Array is array (Natural range <>) of SpecialGameInputProcessor_Access;
   type SpecialGameInputProcessor_Access_Array_Access is access all SpecialGameInputProcessor_Access_Array;
   type SpecialGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of SpecialGameInputProcessor_Access_Array_Access;
   type SpecialGameInputProcessor_Access_Array_Access_Array_Access is access all SpecialGameInputProcessor_Access_Array_Access_Array;
   type SpecialGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in SpecialGameInputProcessor_Access_Array_Object'Class then SpecialGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SpecialGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpecialGameInputProcessor_Access_Array_Access_Array_Object'Class then SpecialGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References;

with org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;

package org.allbinary.game.layer.special.SpecialGameInputProcessor_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;
   package Reference_Types is
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpecialGameInputProcessor_Access is org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.SpecialGameInputProcessor_Access;
   function "=" (Left, Right : SpecialGameInputProcessor_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References."=";
   subtype SpecialGameInputProcessor_Access_Array is org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.SpecialGameInputProcessor_Access_Array;
   function "=" (Left, Right : SpecialGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References."=";
   subtype SpecialGameInputProcessor_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.SpecialGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References."=";
   function Java_Box (Value : SpecialGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SpecialGameInputProcessor_Access_Array (Value : access Java_Object'Class) return SpecialGameInputProcessor_Access_Array_Access renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.Java_Unbox_SpecialGameInputProcessor_Access_Array;
   subtype SpecialGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.SpecialGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References."=";
   subtype SpecialGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.SpecialGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References."=";
   function Java_Box (Value : SpecialGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SpecialGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SpecialGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.layer.special.SpecialGameInputProcessor_Package_References.Java_Unbox_SpecialGameInputProcessor_Access_Array_Access_Array;

   type SpecialGameInputProcessor is new GameInputProcessor with record
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   end record;

   procedure Initialize (This : in out SpecialGameInputProcessor'Class; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function Create (collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return SpecialGameInputProcessor_Access;

end org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;


