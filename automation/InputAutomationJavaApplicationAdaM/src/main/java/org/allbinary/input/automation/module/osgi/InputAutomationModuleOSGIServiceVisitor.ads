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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   package OSGIServiceVisitorInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationModuleOSGIServiceVisitor is tagged;
   type InputAutomationModuleOSGIServiceVisitor_Access is access all InputAutomationModuleOSGIServiceVisitor'Class;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array is array (Natural range <>) of InputAutomationModuleOSGIServiceVisitor_Access;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access is access all InputAutomationModuleOSGIServiceVisitor_Access_Array;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleOSGIServiceVisitor_Access_Array_Access;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access is access all InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array;

   type InputAutomationModuleOSGIServiceVisitor is new Java_Object and OSGIServiceVisitorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleOSGIServiceVisitor'Class);
   function Create return InputAutomationModuleOSGIServiceVisitor_Access;
   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) return Boolean;
   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class);
   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; Value : Unbounded_String);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package;


