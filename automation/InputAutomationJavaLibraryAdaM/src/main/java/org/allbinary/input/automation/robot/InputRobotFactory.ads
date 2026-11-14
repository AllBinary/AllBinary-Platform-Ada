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
limited with org.allbinary.input.automation.robot.InputRobotFactory_Package;
package org.allbinary.input.automation.robot.InputRobotFactory_Package_References is
   type InputRobotFactory_Access is access all org.allbinary.input.automation.robot.InputRobotFactory_Package.InputRobotFactory'Class;
   type InputRobotFactory_Access_Array is array (Natural range <>) of InputRobotFactory_Access;
   type InputRobotFactory_Access_Array_Access is access all InputRobotFactory_Access_Array;
   type InputRobotFactory_Access_Array_Access_Array is array (Natural range <>) of InputRobotFactory_Access_Array_Access;
   type InputRobotFactory_Access_Array_Access_Array_Access is access all InputRobotFactory_Access_Array_Access_Array;
   type InputRobotFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputRobotFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputRobotFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputRobotFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputRobotFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputRobotFactory_Access_Array_Access is (if Value /= null and then Value.all in InputRobotFactory_Access_Array_Object'Class then InputRobotFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputRobotFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputRobotFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputRobotFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputRobotFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputRobotFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputRobotFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputRobotFactory_Access_Array_Access_Array_Object'Class then InputRobotFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.InputRobotFactory_Package_References;

with org.allbinary.input.automation.robot.InputRobotFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.util.Collection_Package; use java.util.Collection_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
--  with javax.help.event.HelpSetEvent_Package; use javax.help.event.HelpSetEvent_Package;
--  with javax.help.event.HelpSetListener_Package; use javax.help.event.HelpSetListener_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;

package org.allbinary.input.automation.robot.InputRobotFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   use type InputRobotInterface_Access;
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   use type InputRobotInterface_Access_Array;
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access;
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   use type InputRobotInterface_Access_Array_Access_Array;
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputRobotFactory_Access is org.allbinary.input.automation.robot.InputRobotFactory_Package_References.InputRobotFactory_Access;
   function "=" (Left, Right : InputRobotFactory_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References."=";
   subtype InputRobotFactory_Access_Array is org.allbinary.input.automation.robot.InputRobotFactory_Package_References.InputRobotFactory_Access_Array;
   function "=" (Left, Right : InputRobotFactory_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References."=";
   subtype InputRobotFactory_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotFactory_Package_References.InputRobotFactory_Access_Array_Access;
   function "=" (Left, Right : InputRobotFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References."=";
   function Java_Box (Value : InputRobotFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References.Java_Box;
   function Java_Unbox_InputRobotFactory_Access_Array (Value : access Java_Object'Class) return InputRobotFactory_Access_Array_Access renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References.Java_Unbox_InputRobotFactory_Access_Array;
   subtype InputRobotFactory_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotFactory_Package_References.InputRobotFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputRobotFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References."=";
   subtype InputRobotFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotFactory_Package_References.InputRobotFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputRobotFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References."=";
   function Java_Box (Value : InputRobotFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References.Java_Box;
   function Java_Unbox_InputRobotFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputRobotFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.InputRobotFactory_Package_References.Java_Unbox_InputRobotFactory_Access_Array_Access_Array;

   type InputRobotFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      hashtable : ABHashtable_Access;
      helpSetListenerInterface : HelpSetListener_Access;
   end record;
   inputRobotFactory_Var : InputRobotFactory_Access;

   procedure Initialize (This : in out InputRobotFactory'Class);
   function Create return InputRobotFactory_Access;
   function getInstance return InputRobotFactory_Access;
   procedure addListener (This : in out InputRobotFactory; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class);
   procedure add (This : in out InputRobotFactory; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);
   procedure loadLibraries (This : in out InputRobotFactory);
   procedure loadLibraries (collection_Param : access Collection_Package.Collection'Class);
   procedure loadLibrary (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);
   procedure unloadLibraries (This : in out InputRobotFactory);
   function get (This : in out InputRobotFactory) return ABHashtable_Access;
   function get (This : in out InputRobotFactory; name : Unbounded_String) return InputRobotInterface_Access;
   procedure get (This : in out InputRobotFactory; name : Unbounded_String);

end org.allbinary.input.automation.robot.InputRobotFactory_Package;


