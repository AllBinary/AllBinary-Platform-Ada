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
with org.allbinary.input.automation.robot.Rectangle_Package; use org.allbinary.input.automation.robot.Rectangle_Package;
with org.allbinary.input.automation.robot.Color_Package; use org.allbinary.input.automation.robot.Color_Package;
with org.allbinary.input.automation.robot.Point_Package; use org.allbinary.input.automation.robot.Point_Package;

package org.allbinary.input.automation.robot.InputRobotInterface_Package is


   type InputRobotInterface is interface;
   type InputRobotInterface_Access is access all InputRobotInterface'Class;
   type InputRobotInterface_Access_Array is array (Natural range <>) of InputRobotInterface_Access;
   type InputRobotInterface_Access_Array_Access is access all InputRobotInterface_Access_Array;
   type InputRobotInterface_Access_Array_Access_Array is array (Natural range <>) of InputRobotInterface_Access_Array_Access;
   type InputRobotInterface_Access_Array_Access_Array_Access is access all InputRobotInterface_Access_Array_Access_Array;
   function getName (This : in out InputRobotInterface) return Unbounded_String is abstract;
   function getHelpSet (This : in out InputRobotInterface) return HelpSet_Access is abstract;
   function createScreenCapture (This : in out InputRobotInterface; screenRect_Param : access Rectangle_Package.Rectangle'Class) return BufferedImage_Access is abstract;
   procedure delay_Id (This : in out InputRobotInterface; ms : Integer) is abstract;
   function getAutoDelay (This : in out InputRobotInterface) return Integer is abstract;
   function getPixelColor (This : in out InputRobotInterface; x : Integer; y : Integer) return Color_Access is abstract;
   function isAutoWaitForIdle (This : in out InputRobotInterface) return Boolean is abstract;
   procedure keyPress (This : in out InputRobotInterface; keycode : Integer) is abstract;
   procedure keyRelease (This : in out InputRobotInterface; keycode : Integer) is abstract;
   function getMousePoint (This : in out InputRobotInterface) return Point_Access is abstract;
   procedure mouseMove (This : in out InputRobotInterface; x : Integer; y : Integer) is abstract;
   procedure mousePress (This : in out InputRobotInterface; buttons : Integer) is abstract;
   procedure mouseRelease (This : in out InputRobotInterface; buttons : Integer) is abstract;
   procedure mouseWheel (This : in out InputRobotInterface; wheelAmt : Integer) is abstract;
   procedure setAutoDelay (This : in out InputRobotInterface; ms : Integer) is abstract;
   procedure setAutoWaitForIdle (This : in out InputRobotInterface; isOn : Boolean) is abstract;
   function toString (This : in out InputRobotInterface) return Unbounded_String is abstract;
   procedure waitForIdle (This : in out InputRobotInterface) is abstract;
   procedure mouseMove (This : in out InputRobotInterface; point_Param : access Point_Package.Point'Class) is abstract;
   procedure mouseMoveToTarget (This : in out InputRobotInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   procedure mouseMoveToTarget (This : in out InputRobotInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is abstract;

end org.allbinary.input.automation.robot.InputRobotInterface_Package;


