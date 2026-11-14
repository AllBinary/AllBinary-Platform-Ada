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
limited with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;
package bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References is
   type InputAutomationBundleActivatorListenerInterface_Access is access all bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package.InputAutomationBundleActivatorListenerInterface'Class;
   type InputAutomationBundleActivatorListenerInterface_Access_Array is array (Natural range <>) of InputAutomationBundleActivatorListenerInterface_Access;
   type InputAutomationBundleActivatorListenerInterface_Access_Array_Access is access all InputAutomationBundleActivatorListenerInterface_Access_Array;
   type InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array is array (Natural range <>) of InputAutomationBundleActivatorListenerInterface_Access_Array_Access;
   type InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access is access all InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array;
   type InputAutomationBundleActivatorListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationBundleActivatorListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationBundleActivatorListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationBundleActivatorListenerInterface_Access_Array_Object'Class then InputAutomationBundleActivatorListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Object'Class then InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References;

with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type InputAutomationBundleActivatorListenerInterface is interface;
   subtype InputAutomationBundleActivatorListenerInterface_Access is bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.InputAutomationBundleActivatorListenerInterface_Access;
   function "=" (Left, Right : InputAutomationBundleActivatorListenerInterface_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References."=";
   subtype InputAutomationBundleActivatorListenerInterface_Access_Array is bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.InputAutomationBundleActivatorListenerInterface_Access_Array;
   function "=" (Left, Right : InputAutomationBundleActivatorListenerInterface_Access_Array) return Boolean renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References."=";
   subtype InputAutomationBundleActivatorListenerInterface_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.InputAutomationBundleActivatorListenerInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationBundleActivatorListenerInterface_Access_Array_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References."=";
   function Java_Box (Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.Java_Box;
   function Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array (Value : access Java_Object'Class) return InputAutomationBundleActivatorListenerInterface_Access_Array_Access renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array;
   subtype InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array is bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array) return Boolean renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References."=";
   subtype InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References."=";
   function Java_Box (Value : InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.Java_Box;
   function Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array_Access renames bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package_References.Java_Unbox_InputAutomationBundleActivatorListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InputAutomationBundleActivatorListenerInterface (Value : InputAutomationBundleActivatorListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure registerAsService (This : in out InputAutomationBundleActivatorListenerInterface) is abstract;
   procedure useServices (This : in out InputAutomationBundleActivatorListenerInterface) is abstract;

end bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;


