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
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.util.Collection_Package; use java.util.Collection_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
--  with javax.help.event.HelpSetEvent_Package; use javax.help.event.HelpSetEvent_Package;
--  with javax.help.event.HelpSetListener_Package; use javax.help.event.HelpSetListener_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.help.JavaHelpSetNotifier_Package; use org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
with org.allbinary.logic.java.anyType.InterfaceUtil_Package; use org.allbinary.logic.java.anyType.InterfaceUtil_Package;
with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package; use org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.input.automation.robot.InputRobotFactory_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package JavaHelpSetNotifier_Package renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
   package InterfaceUtil_Package renames org.allbinary.logic.java.anyType.InterfaceUtil_Package;
   package SecuredNativeLibraryInterface_Package renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type InputRobotFactory is tagged;
   type InputRobotFactory_Access is access all InputRobotFactory'Class;
   type InputRobotFactory_Access_Array is array (Natural range <>) of InputRobotFactory_Access;
   type InputRobotFactory_Access_Array_Access is access all InputRobotFactory_Access_Array;

   type InputRobotFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      hashtable : ABHashtable_Access;
      helpSetListenerInterface : HelpSetListener_Access;
   end record;
   inputRobotFactory : InputRobotFactory_Access;

   procedure Initialize (This : in out InputRobotFactory'Class);
   function Create return InputRobotFactory_Access;
   function getInstance return InputRobotFactory_Access;
   procedure getInstance;
   procedure addListener (This : in out InputRobotFactory; helpSetListenerInterface : HelpSetListener_Access);
   procedure add (This : in out InputRobotFactory; inputRobotInterface : InputRobotInterface_Access);
   procedure loadLibraries (This : in out InputRobotFactory);
   procedure loadLibraries (collection : Collection_Access);
   procedure loadLibrary (inputRobotInterface : InputRobotInterface_Access);
   procedure unloadLibraries (This : in out InputRobotFactory);
   function get (This : in out InputRobotFactory) return ABHashtable_Access;
   procedure get (This : in out InputRobotFactory);
   function get (This : in out InputRobotFactory; name : Unbounded_String) return InputRobotInterface_Access;
   procedure get (This : in out InputRobotFactory; name : Unbounded_String);

end org.allbinary.input.automation.robot.InputRobotFactory_Package;


