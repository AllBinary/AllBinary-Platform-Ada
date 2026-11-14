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
limited with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
package org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References is
   type GameCanvasPauseRunnable_Access is access all org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package.GameCanvasPauseRunnable'Class;
   type GameCanvasPauseRunnable_Access_Array is array (Natural range <>) of GameCanvasPauseRunnable_Access;
   type GameCanvasPauseRunnable_Access_Array_Access is access all GameCanvasPauseRunnable_Access_Array;
   type GameCanvasPauseRunnable_Access_Array_Access_Array is array (Natural range <>) of GameCanvasPauseRunnable_Access_Array_Access;
   type GameCanvasPauseRunnable_Access_Array_Access_Array_Access is access all GameCanvasPauseRunnable_Access_Array_Access_Array;
   type GameCanvasPauseRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasPauseRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasPauseRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasPauseRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasPauseRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasPauseRunnable_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasPauseRunnable_Access_Array_Object'Class then GameCanvasPauseRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type GameCanvasPauseRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasPauseRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasPauseRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasPauseRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasPauseRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasPauseRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasPauseRunnable_Access_Array_Access_Array_Object'Class then GameCanvasPauseRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References;

with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameCanvasPauseRunnable_Access is org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.GameCanvasPauseRunnable_Access;
   function "=" (Left, Right : GameCanvasPauseRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References."=";
   subtype GameCanvasPauseRunnable_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.GameCanvasPauseRunnable_Access_Array;
   function "=" (Left, Right : GameCanvasPauseRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References."=";
   subtype GameCanvasPauseRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.GameCanvasPauseRunnable_Access_Array_Access;
   function "=" (Left, Right : GameCanvasPauseRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References."=";
   function Java_Box (Value : GameCanvasPauseRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.Java_Box;
   function Java_Unbox_GameCanvasPauseRunnable_Access_Array (Value : access Java_Object'Class) return GameCanvasPauseRunnable_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.Java_Unbox_GameCanvasPauseRunnable_Access_Array;
   subtype GameCanvasPauseRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.GameCanvasPauseRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasPauseRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References."=";
   subtype GameCanvasPauseRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.GameCanvasPauseRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasPauseRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References."=";
   function Java_Box (Value : GameCanvasPauseRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.Java_Box;
   function Java_Unbox_GameCanvasPauseRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return GameCanvasPauseRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package_References.Java_Unbox_GameCanvasPauseRunnable_Access_Array_Access_Array;

   type GameCanvasPauseRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasPauseRunnable'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasPauseRunnable_Access;
   procedure run (This : in out GameCanvasPauseRunnable);
   procedure processLoopSleep (This : in out GameCanvasPauseRunnable);

end org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;


