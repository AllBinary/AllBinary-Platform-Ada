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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameCanvasPauseRunnable is tagged;
   type GameCanvasPauseRunnable_Access is access all GameCanvasPauseRunnable'Class;
   type GameCanvasPauseRunnable_Access_Array is array (Natural range <>) of GameCanvasPauseRunnable_Access;
   type GameCanvasPauseRunnable_Access_Array_Access is access all GameCanvasPauseRunnable_Access_Array;

   type GameCanvasPauseRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasPauseRunnable'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return GameCanvasPauseRunnable_Access;
   procedure run (This : in out GameCanvasPauseRunnable);
   procedure processLoopSleep (This : in out GameCanvasPauseRunnable);

end org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;


