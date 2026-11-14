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
limited with org.allbinary.game.layer.special.AnalogInputBuilder_Package;
package org.allbinary.game.layer.special.AnalogInputBuilder_Package_References is
   type AnalogInputBuilder_Access is access all org.allbinary.game.layer.special.AnalogInputBuilder_Package.AnalogInputBuilder'Class;
   type AnalogInputBuilder_Access_Array is array (Natural range <>) of AnalogInputBuilder_Access;
   type AnalogInputBuilder_Access_Array_Access is access all AnalogInputBuilder_Access_Array;
   type AnalogInputBuilder_Access_Array_Access_Array is array (Natural range <>) of AnalogInputBuilder_Access_Array_Access;
   type AnalogInputBuilder_Access_Array_Access_Array_Access is access all AnalogInputBuilder_Access_Array_Access_Array;
   type AnalogInputBuilder_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogInputBuilder_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogInputBuilder_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogInputBuilder_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogInputBuilder_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogInputBuilder_Access_Array_Access is (if Value /= null and then Value.all in AnalogInputBuilder_Access_Array_Object'Class then AnalogInputBuilder_Access_Array_Object'Class (Value.all).Value else null);
   type AnalogInputBuilder_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogInputBuilder_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogInputBuilder_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogInputBuilder_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogInputBuilder_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogInputBuilder_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnalogInputBuilder_Access_Array_Access_Array_Object'Class then AnalogInputBuilder_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.special.AnalogInputBuilder_Package_References;

with org.allbinary.game.layer.special.AnalogInputBuilder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;

package org.allbinary.game.layer.special.AnalogInputBuilder_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;
   package Reference_Types is
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   use type GameInputProcessor_Access;
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   use type GameInputProcessor_Access_Array;
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access;
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   use type GameInputProcessor_Access_Array_Access_Array;
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access_Array_Access;
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


   subtype AnalogInputBuilder_Access is org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.AnalogInputBuilder_Access;
   function "=" (Left, Right : AnalogInputBuilder_Access) return Boolean renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References."=";
   subtype AnalogInputBuilder_Access_Array is org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.AnalogInputBuilder_Access_Array;
   function "=" (Left, Right : AnalogInputBuilder_Access_Array) return Boolean renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References."=";
   subtype AnalogInputBuilder_Access_Array_Access is org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.AnalogInputBuilder_Access_Array_Access;
   function "=" (Left, Right : AnalogInputBuilder_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References."=";
   function Java_Box (Value : AnalogInputBuilder_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.Java_Box;
   function Java_Unbox_AnalogInputBuilder_Access_Array (Value : access Java_Object'Class) return AnalogInputBuilder_Access_Array_Access renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.Java_Unbox_AnalogInputBuilder_Access_Array;
   subtype AnalogInputBuilder_Access_Array_Access_Array is org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.AnalogInputBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogInputBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References."=";
   subtype AnalogInputBuilder_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.AnalogInputBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogInputBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References."=";
   function Java_Box (Value : AnalogInputBuilder_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.Java_Box;
   function Java_Unbox_AnalogInputBuilder_Access_Array_Access_Array (Value : access Java_Object'Class) return AnalogInputBuilder_Access_Array_Access_Array_Access renames org.allbinary.game.layer.special.AnalogInputBuilder_Package_References.Java_Unbox_AnalogInputBuilder_Access_Array_Access_Array;

   type AnalogInputBuilder is new Java_Object with null record;
   instance : AnalogInputBuilder_Access;

   procedure Initialize (This : in out AnalogInputBuilder'Class);
   function Create return AnalogInputBuilder_Access;
   function getInstance return AnalogInputBuilder_Access;
   procedure disable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   procedure enable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);

end org.allbinary.game.layer.special.AnalogInputBuilder_Package;


