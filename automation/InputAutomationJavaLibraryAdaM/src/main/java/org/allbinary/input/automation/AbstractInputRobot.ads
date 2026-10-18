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
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.automation.Point_Package; use org.allbinary.input.automation.Point_Package;
with org.allbinary.input.automation.Rectangle_Package; use org.allbinary.input.automation.Rectangle_Package;

package org.allbinary.input.automation.AbstractInputRobot_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbstractInputRobot is tagged;
   type AbstractInputRobot_Access is access all AbstractInputRobot'Class;
   type AbstractInputRobot_Access_Array is array (Natural range <>) of AbstractInputRobot_Access;
   type AbstractInputRobot_Access_Array_Access is access all AbstractInputRobot_Access_Array;
   type AbstractInputRobot_Access_Array_Access_Array is array (Natural range <>) of AbstractInputRobot_Access_Array_Access;
   type AbstractInputRobot_Access_Array_Access_Array_Access is access all AbstractInputRobot_Access_Array_Access_Array;

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


