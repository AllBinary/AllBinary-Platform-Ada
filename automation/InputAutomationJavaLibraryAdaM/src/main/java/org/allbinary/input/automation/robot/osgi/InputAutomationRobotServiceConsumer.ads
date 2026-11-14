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
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;
package org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References is
   type InputAutomationRobotServiceConsumer_Access is access all org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package.InputAutomationRobotServiceConsumer'Class;
   type InputAutomationRobotServiceConsumer_Access_Array is array (Natural range <>) of InputAutomationRobotServiceConsumer_Access;
   type InputAutomationRobotServiceConsumer_Access_Array_Access is access all InputAutomationRobotServiceConsumer_Access_Array;
   type InputAutomationRobotServiceConsumer_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotServiceConsumer_Access_Array_Access;
   type InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access is access all InputAutomationRobotServiceConsumer_Access_Array_Access_Array;
   type InputAutomationRobotServiceConsumer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotServiceConsumer_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotServiceConsumer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotServiceConsumer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotServiceConsumer_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotServiceConsumer_Access_Array_Object'Class then InputAutomationRobotServiceConsumer_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Object'Class then InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References;

with org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with org.allbinary.osgi.service.InputAutomationServiceConsumer_Package; use org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package is

   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package InputAutomationServiceConsumer_Package renames Standard.org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;
   package Reference_Types is
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   use type BundleContext_Access;
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   use type BundleContext_Access_Array;
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   use type BundleContext_Access_Array_Access;
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   use type BundleContext_Access_Array_Access_Array;
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   use type BundleContext_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationRobotServiceConsumer_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.InputAutomationRobotServiceConsumer_Access;
   function "=" (Left, Right : InputAutomationRobotServiceConsumer_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References."=";
   subtype InputAutomationRobotServiceConsumer_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.InputAutomationRobotServiceConsumer_Access_Array;
   function "=" (Left, Right : InputAutomationRobotServiceConsumer_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References."=";
   subtype InputAutomationRobotServiceConsumer_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.InputAutomationRobotServiceConsumer_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotServiceConsumer_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References."=";
   function Java_Box (Value : InputAutomationRobotServiceConsumer_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotServiceConsumer_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array;
   subtype InputAutomationRobotServiceConsumer_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.InputAutomationRobotServiceConsumer_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotServiceConsumer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References."=";
   subtype InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References."=";
   function Java_Box (Value : InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotServiceConsumer_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package_References.Java_Unbox_InputAutomationRobotServiceConsumer_Access_Array_Access_Array;

   type InputAutomationRobotServiceConsumer is new InputAutomationServiceConsumer with null record;

   procedure Initialize (This : in out InputAutomationRobotServiceConsumer'Class; bundleContext_Param : access BundleContext_Package.BundleContext'Class);
   function Create (bundleContext_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationRobotServiceConsumer_Access;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;


