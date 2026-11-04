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

limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
package org.allbinary.input.automation.robot.InputRobotInterface_Package_References is
   type InputRobotInterface_Access is access all org.allbinary.input.automation.robot.InputRobotInterface_Package.InputRobotInterface'Class;
   type InputRobotInterface_Access_Array is array (Natural range <>) of InputRobotInterface_Access;
   type InputRobotInterface_Access_Array_Access is access all InputRobotInterface_Access_Array;
   type InputRobotInterface_Access_Array_Access_Array is array (Natural range <>) of InputRobotInterface_Access_Array_Access;
   type InputRobotInterface_Access_Array_Access_Array_Access is access all InputRobotInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.robot.InputRobotInterface_Package_References;

with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;
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
limited with org.allbinary.input.automation.robot.Rectangle_Package;
with org.allbinary.input.automation.robot.Rectangle_Package_References;
limited with org.allbinary.input.automation.robot.Color_Package;
with org.allbinary.input.automation.robot.Color_Package_References;
limited with org.allbinary.input.automation.robot.Point_Package;
with org.allbinary.input.automation.robot.Point_Package_References;

package org.allbinary.input.automation.robot.InputRobotInterface_Package is

   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type InputRobotInterface is interface;
   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   function "=" (Left, Right : InputRobotInterface_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   function Java_Object_Access_From_InputRobotInterface (Value : InputRobotInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
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


