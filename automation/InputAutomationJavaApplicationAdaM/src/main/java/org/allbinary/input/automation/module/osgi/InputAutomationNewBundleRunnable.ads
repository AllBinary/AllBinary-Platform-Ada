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

limited with org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package;
package org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References is
   type InputAutomationNewBundleRunnable_Access is access all org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package.InputAutomationNewBundleRunnable'Class;
   type InputAutomationNewBundleRunnable_Access_Array is array (Natural range <>) of InputAutomationNewBundleRunnable_Access;
   type InputAutomationNewBundleRunnable_Access_Array_Access is access all InputAutomationNewBundleRunnable_Access_Array;
   type InputAutomationNewBundleRunnable_Access_Array_Access_Array is array (Natural range <>) of InputAutomationNewBundleRunnable_Access_Array_Access;
   type InputAutomationNewBundleRunnable_Access_Array_Access_Array_Access is access all InputAutomationNewBundleRunnable_Access_Array_Access_Array;
end org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References;

with org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
--  with java.util.jar.JarInputStream_Package; use java.util.jar.JarInputStream_Package;
--  with java.util.jar.Manifest_Package; use java.util.jar.Manifest_Package;
limited with org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;
limited with bundle.input.automation.InputAutomationBundleActivator_Package;
with bundle.input.automation.InputAutomationBundleActivator_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package InputAutomationBundleActivator_Package renames Standard.bundle.input.automation.InputAutomationBundleActivator_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   use type Bundle_Access;
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   use type Bundle_Access_Array;
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   use type Bundle_Access_Array_Access;
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   use type Bundle_Access_Array_Access_Array;
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   use type Bundle_Access_Array_Access_Array_Access;
   subtype InputAutomationBundleActivator_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access;
   use type InputAutomationBundleActivator_Access;
   subtype InputAutomationBundleActivator_Access_Array is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array;
   use type InputAutomationBundleActivator_Access_Array;
   subtype InputAutomationBundleActivator_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access;
   use type InputAutomationBundleActivator_Access_Array_Access;
   subtype InputAutomationBundleActivator_Access_Array_Access_Array is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access_Array;
   use type InputAutomationBundleActivator_Access_Array_Access_Array;
   subtype InputAutomationBundleActivator_Access_Array_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access_Array_Access;
   use type InputAutomationBundleActivator_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationNewBundleRunnable_Access is org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References.InputAutomationNewBundleRunnable_Access;
   function "=" (Left, Right : InputAutomationNewBundleRunnable_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References."=";
   subtype InputAutomationNewBundleRunnable_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References.InputAutomationNewBundleRunnable_Access_Array;
   function "=" (Left, Right : InputAutomationNewBundleRunnable_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References."=";
   subtype InputAutomationNewBundleRunnable_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References.InputAutomationNewBundleRunnable_Access_Array_Access;
   function "=" (Left, Right : InputAutomationNewBundleRunnable_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References."=";
   subtype InputAutomationNewBundleRunnable_Access_Array_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References.InputAutomationNewBundleRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationNewBundleRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References."=";
   subtype InputAutomationNewBundleRunnable_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References.InputAutomationNewBundleRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationNewBundleRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package_References."=";

   type InputAutomationNewBundleRunnable is new Java_Object and RunnableInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationBundleActivator : InputAutomationBundleActivator_Access;
      running : Boolean;
      fileBasicArrayList : BasicArrayList_Access;
   end record;
   FILE : Unbounded_String;
   JAR_DIR_PROP : Unbounded_String;
   INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH : Unbounded_String;
   MODULES_START_LEVEL : constant Integer := 8;

   procedure Initialize (This : in out InputAutomationNewBundleRunnable'Class; inputAutomationBundleActivator_Param : access InputAutomationBundleActivator_Package.InputAutomationBundleActivator'Class);
   function Create (inputAutomationBundleActivator_Param : access InputAutomationBundleActivator_Package.InputAutomationBundleActivator'Class) return InputAutomationNewBundleRunnable_Access;
   procedure setThread (This : in out InputAutomationNewBundleRunnable; thread_Param : access Thread_Package.Thread'Class);
   function isRunning (This : in out InputAutomationNewBundleRunnable) return Boolean;
   procedure setRunning (This : in out InputAutomationNewBundleRunnable; running : Boolean);
   procedure updateModules (This : in out InputAutomationNewBundleRunnable);
   function getAllJarSymbolicNameHashMap (This : in out InputAutomationNewBundleRunnable) return HashMap_Access;
   function getJarModuleFileBasicArrayList (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access;
   function getInstalledJarSymbolicNameBasicArrayList (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access;
   function isInstalled (This : in out InputAutomationNewBundleRunnable; symbolicName : Unbounded_String) return Boolean;
   procedure isInstalled (This : in out InputAutomationNewBundleRunnable; symbolicName : Unbounded_String);
   function findNewModules (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access;
   function install (This : in out InputAutomationNewBundleRunnable; url_Param : access URL_Package.URL'Class) return Bundle_Access;
   procedure install (This : in out InputAutomationNewBundleRunnable; url_Param : access URL_Package.URL'Class);
   procedure run (This : in out InputAutomationNewBundleRunnable);

end org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package;


