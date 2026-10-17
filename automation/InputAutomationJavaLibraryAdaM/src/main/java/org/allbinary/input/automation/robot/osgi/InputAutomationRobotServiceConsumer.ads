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
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.osgi.service.InputAutomationServiceConsumer_Package; use org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package is

   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package InputAutomationRobotServiceInterface_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   package InputAutomationServiceConsumer_Package renames Standard.org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;

   type InputAutomationRobotServiceConsumer is tagged;
   type InputAutomationRobotServiceConsumer_Access is access all InputAutomationRobotServiceConsumer'Class;
   type InputAutomationRobotServiceConsumer_Access_Array is array (Natural range <>) of InputAutomationRobotServiceConsumer_Access;
   type InputAutomationRobotServiceConsumer_Access_Array_Access is access all InputAutomationRobotServiceConsumer_Access_Array;

   type InputAutomationRobotServiceConsumer is new InputAutomationServiceConsumer with null record;

   procedure Initialize (This : in out InputAutomationRobotServiceConsumer'Class; bundleContext_Param : access BundleContext'Class);
   function Create (bundleContext_Param : access BundleContext'Class) return InputAutomationRobotServiceConsumer_Access;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;


