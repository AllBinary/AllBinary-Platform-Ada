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
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.NullDisplayable_Package; use org.allbinary.game.displayable.canvas.NullDisplayable_Package;
with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package; use org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package GameInputMappingCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
   package GameInputMappingInstructionsCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
   package GameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.GameRunnable_Package;
   package NullDisplayable_Package renames Standard.org.allbinary.game.displayable.canvas.NullDisplayable_Package;
   package NullWaitGameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CurrentDisplayableFactory is tagged;
   type CurrentDisplayableFactory_Access is access all CurrentDisplayableFactory'Class;
   type CurrentDisplayableFactory_Access_Array is array (Natural range <>) of CurrentDisplayableFactory_Access;
   type CurrentDisplayableFactory_Access_Array_Access is access all CurrentDisplayableFactory_Access_Array;

   type CurrentDisplayableFactory is new Java_Object with record
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      stringUtil : StringUtil_Access;
      SET_DISPLAYABLE : Unbounded_String;
      SET_RUNNABLE : Unbounded_String;
      CLEAR_RUNNABLE : Unbounded_String;
      SET_USED_RUNNABLE : Unbounded_String;
      RUNNABLE : Unbounded_String;
      RUNNABLE_WAS_ALREADY_IN_USE : Unbounded_String;
      DEFAULT_CHILD_NAME_LIST : BasicArrayList_Access;
      displayable : Displayable_Access;
      openGlReadydisplayable : Displayable_Access;
      runnable_Case : GameRunnable_Access;
      usedRunnable : GameRunnable_Access;
   end record;
   instance : CurrentDisplayableFactory_Access;

   procedure Initialize (This : in out CurrentDisplayableFactory'Class);
   function Create return CurrentDisplayableFactory_Access;
   function getInstance return CurrentDisplayableFactory_Access;
   procedure getInstance;
   procedure setMyCanvas (This : in out CurrentDisplayableFactory; displayable : MyCanvas_Access);
   procedure setDisplayable (This : in out CurrentDisplayableFactory; displayable : Displayable_Access);
   procedure setOpenGlReadydisplayable (This : in out CurrentDisplayableFactory; openGlReadydisplayable : Displayable_Access);
   function getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   procedure getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory);
   procedure setRunnable (This : in out CurrentDisplayableFactory; runnable_Case : GameRunnable_Access);
   procedure clearRunnable (This : in out CurrentDisplayableFactory);
   procedure update (This : in out CurrentDisplayableFactory);
   function getDisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access;
   procedure getDisplayable (This : in out CurrentDisplayableFactory);
   function getUsedRunnable (This : in out CurrentDisplayableFactory) return GameRunnable_Access;
   procedure getUsedRunnable (This : in out CurrentDisplayableFactory);
   procedure setUsedRunnable (This : in out CurrentDisplayableFactory; usedRunnable : GameRunnable_Access);

end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;


