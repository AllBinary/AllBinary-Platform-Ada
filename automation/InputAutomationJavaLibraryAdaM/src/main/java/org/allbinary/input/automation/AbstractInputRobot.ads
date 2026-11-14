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
limited with org.allbinary.input.automation.AbstractInputRobot_Package;
package org.allbinary.input.automation.AbstractInputRobot_Package_References is
   type AbstractInputRobot_Access is access all org.allbinary.input.automation.AbstractInputRobot_Package.AbstractInputRobot'Class;
   type AbstractInputRobot_Access_Array is array (Natural range <>) of AbstractInputRobot_Access;
   type AbstractInputRobot_Access_Array_Access is access all AbstractInputRobot_Access_Array;
   type AbstractInputRobot_Access_Array_Access_Array is array (Natural range <>) of AbstractInputRobot_Access_Array_Access;
   type AbstractInputRobot_Access_Array_Access_Array_Access is access all AbstractInputRobot_Access_Array_Access_Array;
   type AbstractInputRobot_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputRobot_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputRobot_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputRobot_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputRobot_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputRobot_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputRobot_Access_Array_Object'Class then AbstractInputRobot_Access_Array_Object'Class (Value.all).Value else null);
   type AbstractInputRobot_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputRobot_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputRobot_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputRobot_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputRobot_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputRobot_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputRobot_Access_Array_Access_Array_Object'Class then AbstractInputRobot_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.AbstractInputRobot_Package_References;

with org.allbinary.input.automation.AbstractInputRobot_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.input.automation.Point_Package;
with org.allbinary.input.automation.Point_Package_References;
limited with org.allbinary.input.automation.Rectangle_Package;
with org.allbinary.input.automation.Rectangle_Package_References;

package org.allbinary.input.automation.AbstractInputRobot_Package is

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
   subtype Point_Access is org.allbinary.input.automation.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbstractInputRobot_Access is org.allbinary.input.automation.AbstractInputRobot_Package_References.AbstractInputRobot_Access;
   function "=" (Left, Right : AbstractInputRobot_Access) return Boolean renames org.allbinary.input.automation.AbstractInputRobot_Package_References."=";
   subtype AbstractInputRobot_Access_Array is org.allbinary.input.automation.AbstractInputRobot_Package_References.AbstractInputRobot_Access_Array;
   function "=" (Left, Right : AbstractInputRobot_Access_Array) return Boolean renames org.allbinary.input.automation.AbstractInputRobot_Package_References."=";
   subtype AbstractInputRobot_Access_Array_Access is org.allbinary.input.automation.AbstractInputRobot_Package_References.AbstractInputRobot_Access_Array_Access;
   function "=" (Left, Right : AbstractInputRobot_Access_Array_Access) return Boolean renames org.allbinary.input.automation.AbstractInputRobot_Package_References."=";
   function Java_Box (Value : AbstractInputRobot_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.AbstractInputRobot_Package_References.Java_Box;
   function Java_Unbox_AbstractInputRobot_Access_Array (Value : access Java_Object'Class) return AbstractInputRobot_Access_Array_Access renames org.allbinary.input.automation.AbstractInputRobot_Package_References.Java_Unbox_AbstractInputRobot_Access_Array;
   subtype AbstractInputRobot_Access_Array_Access_Array is org.allbinary.input.automation.AbstractInputRobot_Package_References.AbstractInputRobot_Access_Array_Access_Array;
   function "=" (Left, Right : AbstractInputRobot_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.AbstractInputRobot_Package_References."=";
   subtype AbstractInputRobot_Access_Array_Access_Array_Access is org.allbinary.input.automation.AbstractInputRobot_Package_References.AbstractInputRobot_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbstractInputRobot_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.AbstractInputRobot_Package_References."=";
   function Java_Box (Value : AbstractInputRobot_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.AbstractInputRobot_Package_References.Java_Box;
   function Java_Unbox_AbstractInputRobot_Access_Array_Access_Array (Value : access Java_Object'Class) return AbstractInputRobot_Access_Array_Access_Array_Access renames org.allbinary.input.automation.AbstractInputRobot_Package_References.Java_Unbox_AbstractInputRobot_Access_Array_Access_Array;

   type AbstractInputRobot is new Java_Object with record
      logUtil : LogUtil_Access;
      helpSet : HelpSet_Access;
   end record;

   procedure Initialize (This : in out AbstractInputRobot'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class);
   function Create (helpSet_Param : access HelpSet_Package.HelpSet'Class) return AbstractInputRobot_Access;
   function getHelpSet (This : in out AbstractInputRobot) return HelpSet_Access;
   procedure mouseMove (This : in out AbstractInputRobot; point_Param : access Point_Package.Point'Class);
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer);
   procedure mouseMoveToTarget (This : in out AbstractInputRobot; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure mouseMove (This : in out AbstractInputRobot; x : Integer; y : Integer);
   procedure setHelpSet (This : in out AbstractInputRobot; helpSet_Param : access HelpSet_Package.HelpSet'Class);

end org.allbinary.input.automation.AbstractInputRobot_Package;


