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
limited with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;
package org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References is
   type GameSkillPropertyInterface_Access is access all org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package.GameSkillPropertyInterface'Class;
   type GameSkillPropertyInterface_Access_Array is array (Natural range <>) of GameSkillPropertyInterface_Access;
   type GameSkillPropertyInterface_Access_Array_Access is access all GameSkillPropertyInterface_Access_Array;
   type GameSkillPropertyInterface_Access_Array_Access_Array is array (Natural range <>) of GameSkillPropertyInterface_Access_Array_Access;
   type GameSkillPropertyInterface_Access_Array_Access_Array_Access is access all GameSkillPropertyInterface_Access_Array_Access_Array;
   type GameSkillPropertyInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkillPropertyInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkillPropertyInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkillPropertyInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkillPropertyInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkillPropertyInterface_Access_Array_Access is (if Value /= null and then Value.all in GameSkillPropertyInterface_Access_Array_Object'Class then GameSkillPropertyInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameSkillPropertyInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameSkillPropertyInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameSkillPropertyInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameSkillPropertyInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameSkillPropertyInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameSkillPropertyInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameSkillPropertyInterface_Access_Array_Access_Array_Object'Class then GameSkillPropertyInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References;

with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GameSkillPropertyInterface is interface;
   subtype GameSkillPropertyInterface_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   function Java_Box (Value : GameSkillPropertyInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.Java_Box;
   function Java_Unbox_GameSkillPropertyInterface_Access_Array (Value : access Java_Object'Class) return GameSkillPropertyInterface_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.Java_Unbox_GameSkillPropertyInterface_Access_Array;
   subtype GameSkillPropertyInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   function Java_Box (Value : GameSkillPropertyInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.Java_Box;
   function Java_Unbox_GameSkillPropertyInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameSkillPropertyInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.Java_Unbox_GameSkillPropertyInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameSkillPropertyInterface (Value : GameSkillPropertyInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out GameSkillPropertyInterface) return Unbounded_String is abstract;
   function getValue (This : in out GameSkillPropertyInterface) return Unbounded_String is abstract;

end org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;


