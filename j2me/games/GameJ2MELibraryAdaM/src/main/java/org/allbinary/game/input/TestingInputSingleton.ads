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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.game.input.GameInputInterface_Package; use org.allbinary.game.input.GameInputInterface_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package; use org.allbinary.game.input.GameInputProcessorUtil_Package;
with org.allbinary.game.input.TestInputInterface_Package; use org.allbinary.game.input.TestInputInterface_Package;

package org.allbinary.game.input.TestingInputSingleton_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;

   type TestingInputSingleton is tagged;
   type TestingInputSingleton_Access is access all TestingInputSingleton'Class;
   type TestingInputSingleton_Access_Array is array (Natural range <>) of TestingInputSingleton_Access;
   type TestingInputSingleton_Access_Array_Access is access all TestingInputSingleton_Access_Array;

   type TestingInputSingleton is new AllBinaryGameLayer and GameInputInterface with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      paintable : PaintableInterface_Access;
   end record;
   instance : TestingInputSingleton_Access;

   procedure Initialize (This : in out TestingInputSingleton'Class);
   function Create return TestingInputSingleton_Access;
   function getInstance return TestingInputSingleton_Access;
   procedure initInputProcessors (This : in out TestingInputSingleton);
   procedure initInputProcessorsForTestInput (This : in out TestingInputSingleton; aTestInputInterface_Param : access TestInputInterface_Package.TestInputInterface'Class);
   procedure processInputList (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure processInput (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure paint (This : in out TestingInputSingleton; graphics_Param : access Graphics_Package.Graphics'Class);
   function implmentsGameInputInterface (This : in out TestingInputSingleton) return Boolean;

end org.allbinary.game.input.TestingInputSingleton_Package;


