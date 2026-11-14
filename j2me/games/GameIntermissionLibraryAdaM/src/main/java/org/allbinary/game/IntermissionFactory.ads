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
limited with org.allbinary.game.IntermissionFactory_Package;
package org.allbinary.game.IntermissionFactory_Package_References is
   type IntermissionFactory_Access is access all org.allbinary.game.IntermissionFactory_Package.IntermissionFactory'Class;
   type IntermissionFactory_Access_Array is array (Natural range <>) of IntermissionFactory_Access;
   type IntermissionFactory_Access_Array_Access is access all IntermissionFactory_Access_Array;
   type IntermissionFactory_Access_Array_Access_Array is array (Natural range <>) of IntermissionFactory_Access_Array_Access;
   type IntermissionFactory_Access_Array_Access_Array_Access is access all IntermissionFactory_Access_Array_Access_Array;
   type IntermissionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IntermissionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : IntermissionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IntermissionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IntermissionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IntermissionFactory_Access_Array_Access is (if Value /= null and then Value.all in IntermissionFactory_Access_Array_Object'Class then IntermissionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type IntermissionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IntermissionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IntermissionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IntermissionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IntermissionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IntermissionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IntermissionFactory_Access_Array_Access_Array_Object'Class then IntermissionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.IntermissionFactory_Package_References;

with org.allbinary.game.IntermissionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;

package org.allbinary.game.IntermissionFactory_Package is

   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package Reference_Types is
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IntermissionFactory_Access is org.allbinary.game.IntermissionFactory_Package_References.IntermissionFactory_Access;
   function "=" (Left, Right : IntermissionFactory_Access) return Boolean renames org.allbinary.game.IntermissionFactory_Package_References."=";
   subtype IntermissionFactory_Access_Array is org.allbinary.game.IntermissionFactory_Package_References.IntermissionFactory_Access_Array;
   function "=" (Left, Right : IntermissionFactory_Access_Array) return Boolean renames org.allbinary.game.IntermissionFactory_Package_References."=";
   subtype IntermissionFactory_Access_Array_Access is org.allbinary.game.IntermissionFactory_Package_References.IntermissionFactory_Access_Array_Access;
   function "=" (Left, Right : IntermissionFactory_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionFactory_Package_References."=";
   function Java_Box (Value : IntermissionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.IntermissionFactory_Package_References.Java_Box;
   function Java_Unbox_IntermissionFactory_Access_Array (Value : access Java_Object'Class) return IntermissionFactory_Access_Array_Access renames org.allbinary.game.IntermissionFactory_Package_References.Java_Unbox_IntermissionFactory_Access_Array;
   subtype IntermissionFactory_Access_Array_Access_Array is org.allbinary.game.IntermissionFactory_Package_References.IntermissionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IntermissionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.IntermissionFactory_Package_References."=";
   subtype IntermissionFactory_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionFactory_Package_References.IntermissionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntermissionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionFactory_Package_References."=";
   function Java_Box (Value : IntermissionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.IntermissionFactory_Package_References.Java_Box;
   function Java_Unbox_IntermissionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return IntermissionFactory_Access_Array_Access_Array_Access renames org.allbinary.game.IntermissionFactory_Package_References.Java_Unbox_IntermissionFactory_Access_Array_Access_Array;

   type IntermissionFactory is new Java_Object with record
      START_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      WAIT_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
   end record;
   instance : IntermissionFactory_Access;

   procedure Initialize (This : in out IntermissionFactory'Class);
   function Create return IntermissionFactory_Access;
   function getInstance return IntermissionFactory_Access;

end org.allbinary.game.IntermissionFactory_Package;


