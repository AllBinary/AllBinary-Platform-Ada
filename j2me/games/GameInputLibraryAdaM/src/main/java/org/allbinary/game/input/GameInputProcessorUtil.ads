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
limited with org.allbinary.game.input.GameInputProcessorUtil_Package;
package org.allbinary.game.input.GameInputProcessorUtil_Package_References is
   type GameInputProcessorUtil_Access is access all org.allbinary.game.input.GameInputProcessorUtil_Package.GameInputProcessorUtil'Class;
   type GameInputProcessorUtil_Access_Array is array (Natural range <>) of GameInputProcessorUtil_Access;
   type GameInputProcessorUtil_Access_Array_Access is access all GameInputProcessorUtil_Access_Array;
   type GameInputProcessorUtil_Access_Array_Access_Array is array (Natural range <>) of GameInputProcessorUtil_Access_Array_Access;
   type GameInputProcessorUtil_Access_Array_Access_Array_Access is access all GameInputProcessorUtil_Access_Array_Access_Array;
   type GameInputProcessorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputProcessorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputProcessorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputProcessorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputProcessorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputProcessorUtil_Access_Array_Access is (if Value /= null and then Value.all in GameInputProcessorUtil_Access_Array_Object'Class then GameInputProcessorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputProcessorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputProcessorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputProcessorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputProcessorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputProcessorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputProcessorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputProcessorUtil_Access_Array_Access_Array_Object'Class then GameInputProcessorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameInputProcessorUtil_Package_References;

with org.allbinary.game.input.GameInputProcessorUtil_Package_References;
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

package org.allbinary.game.input.GameInputProcessorUtil_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype GameInputProcessorUtil_Access is org.allbinary.game.input.GameInputProcessorUtil_Package_References.GameInputProcessorUtil_Access;
   function "=" (Left, Right : GameInputProcessorUtil_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorUtil_Package_References."=";
   subtype GameInputProcessorUtil_Access_Array is org.allbinary.game.input.GameInputProcessorUtil_Package_References.GameInputProcessorUtil_Access_Array;
   function "=" (Left, Right : GameInputProcessorUtil_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorUtil_Package_References."=";
   subtype GameInputProcessorUtil_Access_Array_Access is org.allbinary.game.input.GameInputProcessorUtil_Package_References.GameInputProcessorUtil_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorUtil_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorUtil_Package_References."=";
   function Java_Box (Value : GameInputProcessorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputProcessorUtil_Package_References.Java_Box;
   function Java_Unbox_GameInputProcessorUtil_Access_Array (Value : access Java_Object'Class) return GameInputProcessorUtil_Access_Array_Access renames org.allbinary.game.input.GameInputProcessorUtil_Package_References.Java_Unbox_GameInputProcessorUtil_Access_Array;
   subtype GameInputProcessorUtil_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorUtil_Package_References.GameInputProcessorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorUtil_Package_References."=";
   subtype GameInputProcessorUtil_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorUtil_Package_References.GameInputProcessorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorUtil_Package_References."=";
   function Java_Box (Value : GameInputProcessorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputProcessorUtil_Package_References.Java_Box;
   function Java_Unbox_GameInputProcessorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputProcessorUtil_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameInputProcessorUtil_Package_References.Java_Unbox_GameInputProcessorUtil_Access_Array_Access_Array;

   type GameInputProcessorUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameInputProcessorUtil'Class);
   function Create return GameInputProcessorUtil_Access;
   procedure init (inputProcessorArray : GameInputProcessor_Access_Array_Access);

end org.allbinary.game.input.GameInputProcessorUtil_Package;


