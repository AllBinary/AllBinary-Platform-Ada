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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.input.automation.PointHelper_Package; use org.allbinary.input.automation.PointHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.Robot_Package; use org.allbinary.input.automation.robot.Robot_Package;
with org.allbinary.input.automation.robot.GraphicsDevice_Package; use org.allbinary.input.automation.robot.GraphicsDevice_Package;
with org.allbinary.input.automation.robot.MouseInfo_Package; use org.allbinary.input.automation.robot.MouseInfo_Package;
with org.allbinary.input.automation.robot.Point_Package; use org.allbinary.input.automation.robot.Point_Package;
with org.allbinary.input.automation.robot.Rectangle_Package; use org.allbinary.input.automation.robot.Rectangle_Package;
with org.allbinary.input.automation.robot.Color_Package; use org.allbinary.input.automation.robot.Color_Package;

package org.allbinary.input.automation.robot.InputRobot_Package is

   package PointHelper_Package renames Standard.org.allbinary.input.automation.PointHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type InputRobot is tagged;
   type InputRobot_Access is access all InputRobot'Class;
   type InputRobot_Access_Array is array (Natural range <>) of InputRobot_Access;
   type InputRobot_Access_Array_Access is access all InputRobot_Access_Array;

   type InputRobot is new InputRobotInterface with record
      logUtil : LogUtil_Access;
      robot : Robot_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out InputRobot'Class; graphicsDevice_Param : access GraphicsDevice'Class);
   function Create (graphicsDevice_Param : access GraphicsDevice'Class) return InputRobot_Access;
   function getName (This : in out InputRobot) return Unbounded_String;
   function getHelpSet (This : in out InputRobot) return HelpSet_Access;
   function getMousePoint (This : in out InputRobot) return Point_Access;
   procedure mouseMoveToTarget (This : in out InputRobot; rectangle_Param : access Rectangle'Class; x : Integer; y : Integer);
   procedure mouseMove (This : in out InputRobot; point_Param : access Point'Class);
   procedure mouseMove (This : in out InputRobot; x : Integer; y : Integer);
   procedure mouseMoveToTarget (This : in out InputRobot; rectangle_Param : access Rectangle'Class);
   function createScreenCapture (This : in out InputRobot; screenRect_Param : access Rectangle'Class) return BufferedImage_Access;
   procedure createScreenCapture (This : in out InputRobot; screenRect_Param : access Rectangle'Class);
   procedure delay_Id (This : in out InputRobot; ms : Integer);
   function getAutoDelay (This : in out InputRobot) return Integer;
   function getPixelColor (This : in out InputRobot; x : Integer; y : Integer) return Color_Access;
   procedure getPixelColor (This : in out InputRobot; x : Integer; y : Integer);
   function isAutoWaitForIdle (This : in out InputRobot) return Boolean;
   procedure keyPress (This : in out InputRobot; keycode : Integer);
   procedure keyRelease (This : in out InputRobot; keycode : Integer);
   procedure mouseMove (This : in out InputRobot; x : Integer; y : Integer);
   procedure mousePress (This : in out InputRobot; buttons : Integer);
   procedure mouseRelease (This : in out InputRobot; buttons : Integer);
   procedure mouseWheel (This : in out InputRobot; wheelAmt : Integer);
   procedure setAutoDelay (This : in out InputRobot; ms : Integer);
   procedure setAutoWaitForIdle (This : in out InputRobot; isOn : Boolean);
   function toString (This : in out InputRobot) return Unbounded_String;
   procedure waitForIdle (This : in out InputRobot);
   procedure on (This : in out InputRobot);
   procedure off (This : in out InputRobot);

end org.allbinary.input.automation.robot.InputRobot_Package;


