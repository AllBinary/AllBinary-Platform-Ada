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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.GameFrameRunnable_Package is

   package GameTickDisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;

   type GameFrameRunnable is tagged;
   type GameFrameRunnable_Access is access all GameFrameRunnable'Class;
   type GameFrameRunnable_Access_Array is array (Natural range <>) of GameFrameRunnable_Access;
   type GameFrameRunnable_Access_Array_Access is access all GameFrameRunnable_Access_Array;
   type GameFrameRunnable_Access_Array_Access_Array is array (Natural range <>) of GameFrameRunnable_Access_Array_Access;
   type GameFrameRunnable_Access_Array_Access_Array_Access is access all GameFrameRunnable_Access_Array_Access_Array;

   type GameFrameRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out GameFrameRunnable'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameFrameRunnable_Access;
   procedure run (This : in out GameFrameRunnable);

end org.allbinary.game.displayable.canvas.GameFrameRunnable_Package;


