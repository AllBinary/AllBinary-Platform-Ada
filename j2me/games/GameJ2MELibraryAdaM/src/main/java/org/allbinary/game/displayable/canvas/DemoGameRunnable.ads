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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;

package org.allbinary.game.displayable.canvas.DemoGameRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;

   type DemoGameRunnable is tagged;
   type DemoGameRunnable_Access is access all DemoGameRunnable'Class;
   type DemoGameRunnable_Access_Array is array (Natural range <>) of DemoGameRunnable_Access;
   type DemoGameRunnable_Access_Array_Access is access all DemoGameRunnable_Access_Array;
   type DemoGameRunnable_Access_Array_Access_Array is array (Natural range <>) of DemoGameRunnable_Access_Array_Access;
   type DemoGameRunnable_Access_Array_Access_Array_Access is access all DemoGameRunnable_Access_Array_Access_Array;

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


