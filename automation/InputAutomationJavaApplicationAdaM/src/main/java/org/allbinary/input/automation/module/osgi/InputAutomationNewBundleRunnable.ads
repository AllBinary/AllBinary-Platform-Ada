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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
--  with java.util.jar.JarInputStream_Package; use java.util.jar.JarInputStream_Package;
--  with java.util.jar.Manifest_Package; use java.util.jar.Manifest_Package;
with org.osgi.framework.Bundle_Package; use org.osgi.framework.Bundle_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.Constants_Package; use org.osgi.framework.Constants_Package;
with bundle.input.automation.InputAutomationBundleActivator_Package; use bundle.input.automation.InputAutomationBundleActivator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package; use org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package Constants_Package renames Standard.org.osgi.framework.Constants_Package;
   package InputAutomationBundleActivator_Package renames Standard.bundle.input.automation.InputAutomationBundleActivator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package FileWrapperUtil_Package renames Standard.org.allbinary.logic.io.file.FileWrapperUtil_Package;
   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package BasicFileFilterUtil_Package renames Standard.org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type InputAutomationNewBundleRunnable is tagged;
   type InputAutomationNewBundleRunnable_Access is access all InputAutomationNewBundleRunnable'Class;
   type InputAutomationNewBundleRunnable_Access_Array is array (Natural range <>) of InputAutomationNewBundleRunnable_Access;
   type InputAutomationNewBundleRunnable_Access_Array_Access is access all InputAutomationNewBundleRunnable_Access_Array;

   type InputAutomationNewBundleRunnable is new RunnableInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationBundleActivator : InputAutomationBundleActivator_Access;
      running : Boolean;
      fileBasicArrayList : BasicArrayList_Access;
   end record;
   FILE : Unbounded_String;
   JAR_DIR_PROP : Unbounded_String;
   INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH : Unbounded_String;
   MODULES_START_LEVEL : Integer;

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


