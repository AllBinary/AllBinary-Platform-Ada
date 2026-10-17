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
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package is

   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type RunnableCanvasSingleThreadStartRunnable is tagged;
   type RunnableCanvasSingleThreadStartRunnable_Access is access all RunnableCanvasSingleThreadStartRunnable'Class;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array is array (Natural range <>) of RunnableCanvasSingleThreadStartRunnable_Access;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Access is access all RunnableCanvasSingleThreadStartRunnable_Access_Array;

   type RunnableCanvasSingleThreadStartRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      runnableCanvas : RunnableCanvas_Access;
   end record;

   procedure Initialize (This : in out RunnableCanvasSingleThreadStartRunnable'Class; demoCanvas_Param : access RunnableCanvas'Class);
   function Create (demoCanvas_Param : access RunnableCanvas'Class) return RunnableCanvasSingleThreadStartRunnable_Access;
   procedure run (This : in out RunnableCanvasSingleThreadStartRunnable);
   procedure processLoopSleep (This : in out RunnableCanvasSingleThreadStartRunnable);

end org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;


