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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.PostGameCommandFactory_Package; use org.allbinary.PostGameCommandFactory_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package; use org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package; use org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package; use org.allbinary.game.score.displayable.HighScoreUtil_Package;

package org.allbinary.game.score.displayable.HighScoreTextBox_Package is

   package PostGameCommandFactory_Package renames Standard.org.allbinary.PostGameCommandFactory_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package HighScoresHelperBaseInterface_Package renames Standard.org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package SimpleTextPaintable_Package renames Standard.org.allbinary.graphics.paint.SimpleTextPaintable_Package;
   package VirtualKeyboardEventHandler_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package InApplicationPurchaseFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;

   type HighScoreTextBox is tagged;
   type HighScoreTextBox_Access is access all HighScoreTextBox'Class;
   type HighScoreTextBox_Access_Array is array (Natural range <>) of HighScoreTextBox_Access;
   type HighScoreTextBox_Access_Array_Access is access all HighScoreTextBox_Access_Array;

   type HighScoreTextBox is new CustomTextBox with record
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
      highScoreUtil : HighScoreUtil_Access;
      pleaseWait : Paintable_Access;
      paintable : Paintable_Access;
      submitted : Boolean;
   end record;

   procedure Initialize (This : in out HighScoreTextBox'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo'Class; cmdListener_Param : access CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore'Class; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class);
   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo'Class; cmdListener_Param : access CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore'Class; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return HighScoreTextBox_Access;
   procedure initCommands (This : in out HighScoreTextBox; cmdListener_Param : access CommandListener'Class);
   procedure open (This : in out HighScoreTextBox);
   procedure close (This : in out HighScoreTextBox);
   procedure update (This : in out HighScoreTextBox);
   procedure paint (This : in out HighScoreTextBox; graphics_Param : access Graphics'Class);
   procedure saveHighScore (This : in out HighScoreTextBox);
   procedure submit (This : in out HighScoreTextBox);

end org.allbinary.game.score.displayable.HighScoreTextBox_Package;


