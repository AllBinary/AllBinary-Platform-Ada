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

limited with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package;
package org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References is
   type InputAutomationModuleServiceConsumer_Access is access all org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package.InputAutomationModuleServiceConsumer'Class;
   type InputAutomationModuleServiceConsumer_Access_Array is array (Natural range <>) of InputAutomationModuleServiceConsumer_Access;
   type InputAutomationModuleServiceConsumer_Access_Array_Access is access all InputAutomationModuleServiceConsumer_Access_Array;
   type InputAutomationModuleServiceConsumer_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleServiceConsumer_Access_Array_Access;
   type InputAutomationModuleServiceConsumer_Access_Array_Access_Array_Access is access all InputAutomationModuleServiceConsumer_Access_Array_Access_Array;
end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References;

with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References;
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

package org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package is

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


   subtype InputAutomationModuleServiceConsumer_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References.InputAutomationModuleServiceConsumer_Access;
   function "=" (Left, Right : InputAutomationModuleServiceConsumer_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References."=";
   subtype InputAutomationModuleServiceConsumer_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References.InputAutomationModuleServiceConsumer_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceConsumer_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References."=";
   subtype InputAutomationModuleServiceConsumer_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References.InputAutomationModuleServiceConsumer_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceConsumer_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References."=";
   subtype InputAutomationModuleServiceConsumer_Access_Array_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References.InputAutomationModuleServiceConsumer_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceConsumer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References."=";
   subtype InputAutomationModuleServiceConsumer_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References.InputAutomationModuleServiceConsumer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceConsumer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package_References."=";

   type InputAutomationModuleServiceConsumer is new InputAutomationServiceConsumer with null record;

   procedure Initialize (This : in out InputAutomationModuleServiceConsumer'Class; bundleContext_Param : access BundleContext_Package.BundleContext'Class);
   function Create (bundleContext_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationModuleServiceConsumer_Access;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package;


