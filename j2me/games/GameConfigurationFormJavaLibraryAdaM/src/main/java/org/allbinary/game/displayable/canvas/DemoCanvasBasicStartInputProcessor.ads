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
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package is

   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type DemoCanvasBasicStartInputProcessor is tagged;
   type DemoCanvasBasicStartInputProcessor_Access is access all DemoCanvasBasicStartInputProcessor'Class;
   type DemoCanvasBasicStartInputProcessor_Access_Array is array (Natural range <>) of DemoCanvasBasicStartInputProcessor_Access;
   type DemoCanvasBasicStartInputProcessor_Access_Array_Access is access all DemoCanvasBasicStartInputProcessor_Access_Array;

   type DemoCanvasBasicStartInputProcessor is new BasicMenuInputProcessor with null record;

   procedure Initialize (This : in out DemoCanvasBasicStartInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas'Class) return DemoCanvasBasicStartInputProcessor_Access;
   function processInputList (This : in out DemoCanvasBasicStartInputProcessor) return Integer;

end org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package;


