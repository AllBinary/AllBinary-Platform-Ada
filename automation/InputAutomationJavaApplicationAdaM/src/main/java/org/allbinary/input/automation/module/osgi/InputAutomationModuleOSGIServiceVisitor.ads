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
limited with org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package;
package org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References is
   type InputAutomationModuleOSGIServiceVisitor_Access is access all org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package.InputAutomationModuleOSGIServiceVisitor'Class;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array is array (Natural range <>) of InputAutomationModuleOSGIServiceVisitor_Access;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access is access all InputAutomationModuleOSGIServiceVisitor_Access_Array;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleOSGIServiceVisitor_Access_Array_Access;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access is access all InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleOSGIServiceVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleOSGIServiceVisitor_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleOSGIServiceVisitor_Access_Array_Object'Class then InputAutomationModuleOSGIServiceVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Object'Class then InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References;

with org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package_References;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   package OSGIServiceVisitorInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype OSGIServiceInterface_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access;
   use type OSGIServiceInterface_Access;
   subtype OSGIServiceInterface_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array;
   use type OSGIServiceInterface_Access_Array;
   subtype OSGIServiceInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access;
   use type OSGIServiceInterface_Access_Array_Access;
   subtype OSGIServiceInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array;
   use type OSGIServiceInterface_Access_Array_Access_Array;
   subtype OSGIServiceInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array_Access;
   use type OSGIServiceInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleOSGIServiceVisitor_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.InputAutomationModuleOSGIServiceVisitor_Access;
   function "=" (Left, Right : InputAutomationModuleOSGIServiceVisitor_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References."=";
   subtype InputAutomationModuleOSGIServiceVisitor_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.InputAutomationModuleOSGIServiceVisitor_Access_Array;
   function "=" (Left, Right : InputAutomationModuleOSGIServiceVisitor_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References."=";
   subtype InputAutomationModuleOSGIServiceVisitor_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.InputAutomationModuleOSGIServiceVisitor_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References."=";
   function Java_Box (Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleOSGIServiceVisitor_Access_Array_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array;
   subtype InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References."=";
   subtype InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References."=";
   function Java_Box (Value : InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package_References.Java_Unbox_InputAutomationModuleOSGIServiceVisitor_Access_Array_Access_Array;

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


