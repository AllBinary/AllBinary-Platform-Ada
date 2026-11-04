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

limited with bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package;
package bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References is
   type InputAutomationGenericModuleBundleActivator_Access is access all bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package.InputAutomationGenericModuleBundleActivator'Class;
   type InputAutomationGenericModuleBundleActivator_Access_Array is array (Natural range <>) of InputAutomationGenericModuleBundleActivator_Access;
   type InputAutomationGenericModuleBundleActivator_Access_Array_Access is access all InputAutomationGenericModuleBundleActivator_Access_Array;
   type InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array is array (Natural range <>) of InputAutomationGenericModuleBundleActivator_Access_Array_Access;
   type InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array_Access is access all InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array;
end bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References;

with bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package; use org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;

package bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package is

   package InputAutomationModuleBundleActivator_Package renames Standard.org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationGenericModuleBundleActivator_Access is bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References.InputAutomationGenericModuleBundleActivator_Access;
   function "=" (Left, Right : InputAutomationGenericModuleBundleActivator_Access) return Boolean renames bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References."=";
   subtype InputAutomationGenericModuleBundleActivator_Access_Array is bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References.InputAutomationGenericModuleBundleActivator_Access_Array;
   function "=" (Left, Right : InputAutomationGenericModuleBundleActivator_Access_Array) return Boolean renames bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References."=";
   subtype InputAutomationGenericModuleBundleActivator_Access_Array_Access is bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References.InputAutomationGenericModuleBundleActivator_Access_Array_Access;
   function "=" (Left, Right : InputAutomationGenericModuleBundleActivator_Access_Array_Access) return Boolean renames bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References."=";
   subtype InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array is bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References.InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array) return Boolean renames bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References."=";
   subtype InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array_Access is bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References.InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationGenericModuleBundleActivator_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package_References."=";

   type InputAutomationGenericModuleBundleActivator is new InputAutomationModuleBundleActivator with null record;

   procedure Initialize (This : in out InputAutomationGenericModuleBundleActivator'Class);
   function Create return InputAutomationGenericModuleBundleActivator_Access;
   procedure init (This : in out InputAutomationGenericModuleBundleActivator);

end bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package;


