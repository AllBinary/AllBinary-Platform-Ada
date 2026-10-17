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
with org.allbinary.input.automation.AbstractInputRobot_Package; use org.allbinary.input.automation.AbstractInputRobot_Package;
with org.allbinary.input.automation.PointFactory_Package; use org.allbinary.input.automation.PointFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.Point_Package; use org.allbinary.input.automation.robot.Point_Package;
with org.allbinary.input.automation.robot.Rectangle_Package; use org.allbinary.input.automation.robot.Rectangle_Package;
with org.allbinary.input.automation.robot.Color_Package; use org.allbinary.input.automation.robot.Color_Package;

package org.allbinary.input.automation.robot.NullInputRobot_Package is

   package AbstractInputRobot_Package renames Standard.org.allbinary.input.automation.AbstractInputRobot_Package;
   package PointFactory_Package renames Standard.org.allbinary.input.automation.PointFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type NullInputRobot is tagged;
   type NullInputRobot_Access is access all NullInputRobot'Class;
   type NullInputRobot_Access_Array is array (Natural range <>) of NullInputRobot_Access;
   type NullInputRobot_Access_Array_Access is access all NullInputRobot_Access_Array;

   type NullInputRobot is new AbstractInputRobot and InputRobotInterface with record
      logUtil : LogUtil_Access;
   end record;
   LIBRARY_NAME : Unbounded_String;
   NAME : Unbounded_String;

   procedure Initialize (This : in out NullInputRobot'Class);
   function Create return NullInputRobot_Access;
   function getName (This : in out NullInputRobot) return Unbounded_String;
   function getHelpSet (This : in out NullInputRobot) return HelpSet_Access;
   function getMousePoint (This : in out NullInputRobot) return Point_Access;
   procedure keyPress (This : in out NullInputRobot; keycode : Integer);
   procedure keyRelease (This : in out NullInputRobot; keycode : Integer);
   procedure mouseMove (This : in out NullInputRobot; x : Integer; y : Integer);
   procedure mousePress (This : in out NullInputRobot; buttons : Integer);
   procedure mouseRelease (This : in out NullInputRobot; buttons : Integer);
   function createScreenCapture (This : in out NullInputRobot; screenRect_Param : access Rectangle'Class) return BufferedImage_Access;
   procedure createScreenCapture (This : in out NullInputRobot; screenRect_Param : access Rectangle'Class);
   procedure delay_Id (This : in out NullInputRobot; ms : Integer);
   function getAutoDelay (This : in out NullInputRobot) return Integer;
   function getPixelColor (This : in out NullInputRobot; x : Integer; y : Integer) return Color_Access;
   procedure getPixelColor (This : in out NullInputRobot; x : Integer; y : Integer);
   function isAutoWaitForIdle (This : in out NullInputRobot) return Boolean;
   procedure mouseWheel (This : in out NullInputRobot; wheelAmt : Integer);
   procedure setAutoDelay (This : in out NullInputRobot; ms : Integer);
   procedure setAutoWaitForIdle (This : in out NullInputRobot; isOn : Boolean);
   function toString (This : in out NullInputRobot) return Unbounded_String;
   procedure waitForIdle (This : in out NullInputRobot);

end org.allbinary.input.automation.robot.NullInputRobot_Package;


