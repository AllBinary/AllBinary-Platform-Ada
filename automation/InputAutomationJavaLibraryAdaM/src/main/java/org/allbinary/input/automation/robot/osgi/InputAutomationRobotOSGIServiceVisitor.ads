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
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package is

   package InputAutomationRobotServiceInterface_Package renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   package InputRobotFactory_Package renames org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames org.allbinary.osgi.OSGIServiceInterface_Package;
   package OSGIServiceVisitorInterface_Package renames org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationRobotOSGIServiceVisitor is tagged;
   type InputAutomationRobotOSGIServiceVisitor_Access is access all InputAutomationRobotOSGIServiceVisitor'Class;
   type InputAutomationRobotOSGIServiceVisitor_Access_Array is array (Natural range <>) of InputAutomationRobotOSGIServiceVisitor_Access;
   type InputAutomationRobotOSGIServiceVisitor_Access_Array_Access is access all InputAutomationRobotOSGIServiceVisitor_Access_Array;

   type InputAutomationRobotOSGIServiceVisitor is new OSGIServiceVisitorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotOSGIServiceVisitor'Class);
   function Create return InputAutomationRobotOSGIServiceVisitor_Access;
   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType : Java_Object_Access) return Java_Object_Access;
   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType : Java_Object_Access);
   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access) return Boolean;
   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;


