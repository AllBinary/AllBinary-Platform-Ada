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
limited with org.allbinary.game.displayable.canvas.DemoGameRunnable_Package;
package org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References is
   type DemoGameRunnable_Access is access all org.allbinary.game.displayable.canvas.DemoGameRunnable_Package.DemoGameRunnable'Class;
   type DemoGameRunnable_Access_Array is array (Natural range <>) of DemoGameRunnable_Access;
   type DemoGameRunnable_Access_Array_Access is access all DemoGameRunnable_Access_Array;
   type DemoGameRunnable_Access_Array_Access_Array is array (Natural range <>) of DemoGameRunnable_Access_Array_Access;
   type DemoGameRunnable_Access_Array_Access_Array_Access is access all DemoGameRunnable_Access_Array_Access_Array;
   type DemoGameRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameRunnable_Access_Array_Access is (if Value /= null and then Value.all in DemoGameRunnable_Access_Array_Object'Class then DemoGameRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameRunnable_Access_Array_Access_Array_Object'Class then DemoGameRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References;

with org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References;
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
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
limited with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package_References;

package org.allbinary.game.displayable.canvas.DemoGameRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   use type GameTickTimeDelayHelper_Access;
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   subtype DemoCanvas_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access;
   use type DemoCanvas_Access;
   subtype DemoCanvas_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array;
   use type DemoCanvas_Access_Array;
   subtype DemoCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access;
   use type DemoCanvas_Access_Array_Access;
   subtype DemoCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array;
   use type DemoCanvas_Access_Array_Access_Array;
   subtype DemoCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array_Access;
   use type DemoCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameRunnable_Access is org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.DemoGameRunnable_Access;
   function "=" (Left, Right : DemoGameRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References."=";
   subtype DemoGameRunnable_Access_Array is org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.DemoGameRunnable_Access_Array;
   function "=" (Left, Right : DemoGameRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References."=";
   subtype DemoGameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.DemoGameRunnable_Access_Array_Access;
   function "=" (Left, Right : DemoGameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References."=";
   function Java_Box (Value : DemoGameRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.Java_Box;
   function Java_Unbox_DemoGameRunnable_Access_Array (Value : access Java_Object'Class) return DemoGameRunnable_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.Java_Unbox_DemoGameRunnable_Access_Array;
   subtype DemoGameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.DemoGameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References."=";
   subtype DemoGameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.DemoGameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References."=";
   function Java_Box (Value : DemoGameRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.Java_Box;
   function Java_Unbox_DemoGameRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoGameRunnable_Package_References.Java_Unbox_DemoGameRunnable_Access_Array_Access_Array;

   type DemoGameRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      demoCanvas : DemoCanvas_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out DemoGameRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class);
   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameRunnable_Access;
   procedure run (This : in out DemoGameRunnable);
   procedure processLoopSleep (This : in out DemoGameRunnable);

end org.allbinary.game.displayable.canvas.DemoGameRunnable_Package;


