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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package is

   package GameTickDisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

   type GameCanvasRunnable is tagged;
   type GameCanvasRunnable_Access is access all GameCanvasRunnable'Class;
   type GameCanvasRunnable_Access_Array is array (Natural range <>) of GameCanvasRunnable_Access;
   type GameCanvasRunnable_Access_Array_Access is access all GameCanvasRunnable_Access_Array;

   type GameCanvasRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out GameCanvasRunnable'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return GameCanvasRunnable_Access;
   procedure run (This : in out GameCanvasRunnable);
   procedure processLoopSleep (This : in out GameCanvasRunnable);

end org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;


