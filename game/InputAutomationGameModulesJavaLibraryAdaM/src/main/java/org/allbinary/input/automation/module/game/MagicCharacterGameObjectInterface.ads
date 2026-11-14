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
limited with org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package;
package org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References is
   type MagicCharacterGameObjectInterface_Access is access all org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package.MagicCharacterGameObjectInterface'Class;
   type MagicCharacterGameObjectInterface_Access_Array is array (Natural range <>) of MagicCharacterGameObjectInterface_Access;
   type MagicCharacterGameObjectInterface_Access_Array_Access is access all MagicCharacterGameObjectInterface_Access_Array;
   type MagicCharacterGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of MagicCharacterGameObjectInterface_Access_Array_Access;
   type MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access is access all MagicCharacterGameObjectInterface_Access_Array_Access_Array;
   type MagicCharacterGameObjectInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MagicCharacterGameObjectInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MagicCharacterGameObjectInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MagicCharacterGameObjectInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MagicCharacterGameObjectInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MagicCharacterGameObjectInterface_Access_Array_Access is (if Value /= null and then Value.all in MagicCharacterGameObjectInterface_Access_Array_Object'Class then MagicCharacterGameObjectInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MagicCharacterGameObjectInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MagicCharacterGameObjectInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MagicCharacterGameObjectInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MagicCharacterGameObjectInterface_Access_Array_Access_Array_Object'Class then MagicCharacterGameObjectInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References;

with org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;
with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References;
limited with org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package;
with org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References;

package org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package is

   package Reference_Types is
   subtype HitPointGameObjectInterface_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access;
   use type HitPointGameObjectInterface_Access;
   subtype HitPointGameObjectInterface_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array;
   use type HitPointGameObjectInterface_Access_Array;
   subtype HitPointGameObjectInterface_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access;
   use type HitPointGameObjectInterface_Access_Array_Access;
   subtype HitPointGameObjectInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access_Array;
   use type HitPointGameObjectInterface_Access_Array_Access_Array;
   subtype HitPointGameObjectInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access_Array_Access;
   use type HitPointGameObjectInterface_Access_Array_Access_Array_Access;
   subtype MagicGameObjectInterface_Access is org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References.MagicGameObjectInterface_Access;
   use type MagicGameObjectInterface_Access;
   subtype MagicGameObjectInterface_Access_Array is org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References.MagicGameObjectInterface_Access_Array;
   use type MagicGameObjectInterface_Access_Array;
   subtype MagicGameObjectInterface_Access_Array_Access is org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References.MagicGameObjectInterface_Access_Array_Access;
   use type MagicGameObjectInterface_Access_Array_Access;
   subtype MagicGameObjectInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References.MagicGameObjectInterface_Access_Array_Access_Array;
   use type MagicGameObjectInterface_Access_Array_Access_Array;
   subtype MagicGameObjectInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.MagicGameObjectInterface_Package_References.MagicGameObjectInterface_Access_Array_Access_Array_Access;
   use type MagicGameObjectInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MagicCharacterGameObjectInterface is interface;
   subtype MagicCharacterGameObjectInterface_Access is org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.MagicCharacterGameObjectInterface_Access;
   function "=" (Left, Right : MagicCharacterGameObjectInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References."=";
   subtype MagicCharacterGameObjectInterface_Access_Array is org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.MagicCharacterGameObjectInterface_Access_Array;
   function "=" (Left, Right : MagicCharacterGameObjectInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References."=";
   subtype MagicCharacterGameObjectInterface_Access_Array_Access is org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.MagicCharacterGameObjectInterface_Access_Array_Access;
   function "=" (Left, Right : MagicCharacterGameObjectInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References."=";
   function Java_Box (Value : MagicCharacterGameObjectInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.Java_Box;
   function Java_Unbox_MagicCharacterGameObjectInterface_Access_Array (Value : access Java_Object'Class) return MagicCharacterGameObjectInterface_Access_Array_Access renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.Java_Unbox_MagicCharacterGameObjectInterface_Access_Array;
   subtype MagicCharacterGameObjectInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.MagicCharacterGameObjectInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MagicCharacterGameObjectInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References."=";
   subtype MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References."=";
   function Java_Box (Value : MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.Java_Box;
   function Java_Unbox_MagicCharacterGameObjectInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MagicCharacterGameObjectInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package_References.Java_Unbox_MagicCharacterGameObjectInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MagicCharacterGameObjectInterface (Value : MagicCharacterGameObjectInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getHitPointGameObjectInterface (This : in out MagicCharacterGameObjectInterface) return HitPointGameObjectInterface_Access is abstract;
   function getMagicGameObjectInterface (This : in out MagicCharacterGameObjectInterface) return MagicGameObjectInterface_Access is abstract;

end org.allbinary.input.automation.module.game.MagicCharacterGameObjectInterface_Package;


