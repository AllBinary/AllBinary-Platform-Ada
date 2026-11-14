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
limited with org.allbinary.game.score.displayable.HighScoreTextBox_Package;
package org.allbinary.game.score.displayable.HighScoreTextBox_Package_References is
   type HighScoreTextBox_Access is access all org.allbinary.game.score.displayable.HighScoreTextBox_Package.HighScoreTextBox'Class;
   type HighScoreTextBox_Access_Array is array (Natural range <>) of HighScoreTextBox_Access;
   type HighScoreTextBox_Access_Array_Access is access all HighScoreTextBox_Access_Array;
   type HighScoreTextBox_Access_Array_Access_Array is array (Natural range <>) of HighScoreTextBox_Access_Array_Access;
   type HighScoreTextBox_Access_Array_Access_Array_Access is access all HighScoreTextBox_Access_Array_Access_Array;
   type HighScoreTextBox_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreTextBox_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreTextBox_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreTextBox_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreTextBox_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreTextBox_Access_Array_Access is (if Value /= null and then Value.all in HighScoreTextBox_Access_Array_Object'Class then HighScoreTextBox_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoreTextBox_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoreTextBox_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoreTextBox_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoreTextBox_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoreTextBox_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoreTextBox_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoreTextBox_Access_Array_Access_Array_Object'Class then HighScoreTextBox_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.displayable.HighScoreTextBox_Package_References;

with org.allbinary.game.score.displayable.HighScoreTextBox_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;
limited with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
limited with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.score.displayable.HighScoreUtil_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package_References;

package org.allbinary.game.score.displayable.HighScoreTextBox_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package HighScoresHelperBaseInterface_Package renames Standard.org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package VirtualKeyboardEventHandler_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   use type HighScore_Access;
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   use type HighScore_Access_Array;
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   use type HighScore_Access_Array_Access;
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   use type HighScore_Access_Array_Access_Array;
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   use type HighScore_Access_Array_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   use type HighScoresHelperBaseInterface_Access;
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   use type HighScoresFactoryInterface_Access;
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   use type HighScoresFactoryInterface_Access_Array;
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   use type HighScoresFactoryInterface_Access_Array_Access;
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   use type HighScoresFactoryInterface_Access_Array_Access_Array;
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   use type HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   subtype VirtualKeyboardEventHandler_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access;
   use type VirtualKeyboardEventHandler_Access;
   subtype VirtualKeyboardEventHandler_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array;
   use type VirtualKeyboardEventHandler_Access_Array;
   subtype VirtualKeyboardEventHandler_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access;
   use type VirtualKeyboardEventHandler_Access_Array_Access;
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array;
   use type VirtualKeyboardEventHandler_Access_Array_Access_Array;
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array_Access;
   use type VirtualKeyboardEventHandler_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype HighScoreUtil_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access;
   use type HighScoreUtil_Access;
   subtype HighScoreUtil_Access_Array is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array;
   use type HighScoreUtil_Access_Array;
   subtype HighScoreUtil_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access;
   use type HighScoreUtil_Access_Array_Access;
   subtype HighScoreUtil_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access_Array;
   use type HighScoreUtil_Access_Array_Access_Array;
   subtype HighScoreUtil_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreUtil_Package_References.HighScoreUtil_Access_Array_Access_Array_Access;
   use type HighScoreUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoreTextBox_Access is org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.HighScoreTextBox_Access;
   function "=" (Left, Right : HighScoreTextBox_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References."=";
   subtype HighScoreTextBox_Access_Array is org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.HighScoreTextBox_Access_Array;
   function "=" (Left, Right : HighScoreTextBox_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References."=";
   subtype HighScoreTextBox_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.HighScoreTextBox_Access_Array_Access;
   function "=" (Left, Right : HighScoreTextBox_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References."=";
   function Java_Box (Value : HighScoreTextBox_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.Java_Box;
   function Java_Unbox_HighScoreTextBox_Access_Array (Value : access Java_Object'Class) return HighScoreTextBox_Access_Array_Access renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.Java_Unbox_HighScoreTextBox_Access_Array;
   subtype HighScoreTextBox_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.HighScoreTextBox_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreTextBox_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References."=";
   subtype HighScoreTextBox_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.HighScoreTextBox_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreTextBox_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References."=";
   function Java_Box (Value : HighScoreTextBox_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.Java_Box;
   function Java_Unbox_HighScoreTextBox_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoreTextBox_Access_Array_Access_Array_Access renames org.allbinary.game.score.displayable.HighScoreTextBox_Package_References.Java_Unbox_HighScoreTextBox_Access_Array_Access_Array;

   type HighScoreTextBox is new CustomTextBox with record
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
      highScoreUtil : HighScoreUtil_Access;
      pleaseWait : Paintable_Access;
      paintable : Paintable_Access;
      submitted : Boolean;
   end record;

   procedure Initialize (This : in out HighScoreTextBox'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return HighScoreTextBox_Access;
   procedure initCommands (This : in out HighScoreTextBox; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure open (This : in out HighScoreTextBox);
   procedure close (This : in out HighScoreTextBox);
   procedure update (This : in out HighScoreTextBox);
   procedure paint (This : in out HighScoreTextBox; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure saveHighScore (This : in out HighScoreTextBox);
   procedure submit (This : in out HighScoreTextBox);

end org.allbinary.game.score.displayable.HighScoreTextBox_Package;


