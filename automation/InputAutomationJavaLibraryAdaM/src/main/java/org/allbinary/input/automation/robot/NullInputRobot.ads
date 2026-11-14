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
limited with org.allbinary.input.automation.robot.NullInputRobot_Package;
package org.allbinary.input.automation.robot.NullInputRobot_Package_References is
   type NullInputRobot_Access is access all org.allbinary.input.automation.robot.NullInputRobot_Package.NullInputRobot'Class;
   type NullInputRobot_Access_Array is array (Natural range <>) of NullInputRobot_Access;
   type NullInputRobot_Access_Array_Access is access all NullInputRobot_Access_Array;
   type NullInputRobot_Access_Array_Access_Array is array (Natural range <>) of NullInputRobot_Access_Array_Access;
   type NullInputRobot_Access_Array_Access_Array_Access is access all NullInputRobot_Access_Array_Access_Array;
   type NullInputRobot_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInputRobot_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInputRobot_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInputRobot_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInputRobot_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInputRobot_Access_Array_Access is (if Value /= null and then Value.all in NullInputRobot_Access_Array_Object'Class then NullInputRobot_Access_Array_Object'Class (Value.all).Value else null);
   type NullInputRobot_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInputRobot_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInputRobot_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInputRobot_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInputRobot_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInputRobot_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullInputRobot_Access_Array_Access_Array_Object'Class then NullInputRobot_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.NullInputRobot_Package_References;

with org.allbinary.input.automation.robot.NullInputRobot_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
limited with org.allbinary.input.automation.robot.Point_Package;
with org.allbinary.input.automation.robot.Point_Package_References;
limited with org.allbinary.input.automation.robot.Rectangle_Package;
with org.allbinary.input.automation.robot.Rectangle_Package_References;
limited with org.allbinary.input.automation.robot.Color_Package;
with org.allbinary.input.automation.robot.Color_Package_References;

package org.allbinary.input.automation.robot.NullInputRobot_Package is

   package AbstractInputRobot_Package renames Standard.org.allbinary.input.automation.AbstractInputRobot_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Point_Access is org.allbinary.input.automation.robot.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.robot.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.robot.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.robot.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.input.automation.robot.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.robot.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.robot.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.robot.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype Color_Access is org.allbinary.input.automation.robot.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.input.automation.robot.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.input.automation.robot.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.input.automation.robot.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullInputRobot_Access is org.allbinary.input.automation.robot.NullInputRobot_Package_References.NullInputRobot_Access;
   function "=" (Left, Right : NullInputRobot_Access) return Boolean renames org.allbinary.input.automation.robot.NullInputRobot_Package_References."=";
   subtype NullInputRobot_Access_Array is org.allbinary.input.automation.robot.NullInputRobot_Package_References.NullInputRobot_Access_Array;
   function "=" (Left, Right : NullInputRobot_Access_Array) return Boolean renames org.allbinary.input.automation.robot.NullInputRobot_Package_References."=";
   subtype NullInputRobot_Access_Array_Access is org.allbinary.input.automation.robot.NullInputRobot_Package_References.NullInputRobot_Access_Array_Access;
   function "=" (Left, Right : NullInputRobot_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.NullInputRobot_Package_References."=";
   function Java_Box (Value : NullInputRobot_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.NullInputRobot_Package_References.Java_Box;
   function Java_Unbox_NullInputRobot_Access_Array (Value : access Java_Object'Class) return NullInputRobot_Access_Array_Access renames org.allbinary.input.automation.robot.NullInputRobot_Package_References.Java_Unbox_NullInputRobot_Access_Array;
   subtype NullInputRobot_Access_Array_Access_Array is org.allbinary.input.automation.robot.NullInputRobot_Package_References.NullInputRobot_Access_Array_Access_Array;
   function "=" (Left, Right : NullInputRobot_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.NullInputRobot_Package_References."=";
   subtype NullInputRobot_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.NullInputRobot_Package_References.NullInputRobot_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullInputRobot_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.NullInputRobot_Package_References."=";
   function Java_Box (Value : NullInputRobot_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.NullInputRobot_Package_References.Java_Box;
   function Java_Unbox_NullInputRobot_Access_Array_Access_Array (Value : access Java_Object'Class) return NullInputRobot_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.NullInputRobot_Package_References.Java_Unbox_NullInputRobot_Access_Array_Access_Array;

   type NullInputRobot is new AbstractInputRobot and InputRobotInterface with record
      NullInputRobot_Field_logUtil : LogUtil_Access;
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
   function createScreenCapture (This : in out NullInputRobot; screenRect_Param : access Rectangle_Package.Rectangle'Class) return BufferedImage_Access;
   procedure createScreenCapture (This : in out NullInputRobot; screenRect_Param : access Rectangle_Package.Rectangle'Class);
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
   procedure mouseMove (This : in out NullInputRobot; point_Param : access Point_Package.Point'Class);
   procedure mouseMoveToTarget (This : in out NullInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure mouseMoveToTarget (This : in out NullInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer);

end org.allbinary.input.automation.robot.NullInputRobot_Package;


