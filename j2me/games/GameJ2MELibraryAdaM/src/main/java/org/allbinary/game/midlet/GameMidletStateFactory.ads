--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.midlet.GameMidletStateFactory_Package;
package org.allbinary.game.midlet.GameMidletStateFactory_Package_References is
   type GameMidletStateFactory_Access is access all org.allbinary.game.midlet.GameMidletStateFactory_Package.GameMidletStateFactory'Class;
   type GameMidletStateFactory_Access_Array is array (Natural range <>) of GameMidletStateFactory_Access;
   type GameMidletStateFactory_Access_Array_Access is access all GameMidletStateFactory_Access_Array;
   type GameMidletStateFactory_Access_Array_Access_Array is array (Natural range <>) of GameMidletStateFactory_Access_Array_Access;
   type GameMidletStateFactory_Access_Array_Access_Array_Access is access all GameMidletStateFactory_Access_Array_Access_Array;
   type GameMidletStateFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMidletStateFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMidletStateFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMidletStateFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMidletStateFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMidletStateFactory_Access_Array_Access is (if Value /= null and then Value.all in GameMidletStateFactory_Access_Array_Object'Class then GameMidletStateFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameMidletStateFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameMidletStateFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameMidletStateFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameMidletStateFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameMidletStateFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameMidletStateFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameMidletStateFactory_Access_Array_Access_Array_Object'Class then GameMidletStateFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.GameMidletStateFactory_Package_References;

with org.allbinary.game.midlet.GameMidletStateFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.midlet.GameMidletStateFactory_Package is

   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameMidletStateFactory_Access is org.allbinary.game.midlet.GameMidletStateFactory_Package_References.GameMidletStateFactory_Access;
   function "=" (Left, Right : GameMidletStateFactory_Access) return Boolean renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References."=";
   subtype GameMidletStateFactory_Access_Array is org.allbinary.game.midlet.GameMidletStateFactory_Package_References.GameMidletStateFactory_Access_Array;
   function "=" (Left, Right : GameMidletStateFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References."=";
   subtype GameMidletStateFactory_Access_Array_Access is org.allbinary.game.midlet.GameMidletStateFactory_Package_References.GameMidletStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameMidletStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References."=";
   function Java_Box (Value : GameMidletStateFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameMidletStateFactory_Access_Array (Value : access Java_Object'Class) return GameMidletStateFactory_Access_Array_Access renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References.Java_Unbox_GameMidletStateFactory_Access_Array;
   subtype GameMidletStateFactory_Access_Array_Access_Array is org.allbinary.game.midlet.GameMidletStateFactory_Package_References.GameMidletStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameMidletStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References."=";
   subtype GameMidletStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.GameMidletStateFactory_Package_References.GameMidletStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameMidletStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References."=";
   function Java_Box (Value : GameMidletStateFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameMidletStateFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameMidletStateFactory_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.GameMidletStateFactory_Package_References.Java_Unbox_GameMidletStateFactory_Access_Array_Access_Array;

   type GameMidletStateFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      currentGameState : GameState_Access;
   end record;
   INSTANCE : GameMidletStateFactory_Access;

   procedure Initialize (This : in out GameMidletStateFactory'Class);
   function Create return GameMidletStateFactory_Access;
   function getInstance return GameMidletStateFactory_Access;
   function getCurrentGameState (This : in out GameMidletStateFactory) return GameState_Access;
   procedure setCurrentGameState (This : in out GameMidletStateFactory; currentGameState_Param : access GameState_Package.GameState'Class);

end org.allbinary.game.midlet.GameMidletStateFactory_Package;


