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
limited with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;
package bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References is
   type InputAutomationModuleServiceInterface_Access is access all bundle.input.automation.module.InputAutomationModuleServiceInterface_Package.InputAutomationModuleServiceInterface'Class;
   type InputAutomationModuleServiceInterface_Access_Array is array (Natural range <>) of InputAutomationModuleServiceInterface_Access;
   type InputAutomationModuleServiceInterface_Access_Array_Access is access all InputAutomationModuleServiceInterface_Access_Array;
   type InputAutomationModuleServiceInterface_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleServiceInterface_Access_Array_Access;
   type InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access is access all InputAutomationModuleServiceInterface_Access_Array_Access_Array;
   type InputAutomationModuleServiceInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleServiceInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleServiceInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleServiceInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleServiceInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleServiceInterface_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleServiceInterface_Access_Array_Object'Class then InputAutomationModuleServiceInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationModuleServiceInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleServiceInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleServiceInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleServiceInterface_Access_Array_Access_Array_Object'Class then InputAutomationModuleServiceInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References;

with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;

package bundle.input.automation.module.InputAutomationModuleServiceInterface_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   package Reference_Types is
   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   use type InputAutomationModuleFactoryInterface_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type InputAutomationModuleServiceInterface is interface and OSGIServiceInterface;
   subtype InputAutomationModuleServiceInterface_Access is bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.InputAutomationModuleServiceInterface_Access;
   function "=" (Left, Right : InputAutomationModuleServiceInterface_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References."=";
   subtype InputAutomationModuleServiceInterface_Access_Array is bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.InputAutomationModuleServiceInterface_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceInterface_Access_Array) return Boolean renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References."=";
   subtype InputAutomationModuleServiceInterface_Access_Array_Access is bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.InputAutomationModuleServiceInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceInterface_Access_Array_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References."=";
   function Java_Box (Value : InputAutomationModuleServiceInterface_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleServiceInterface_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleServiceInterface_Access_Array_Access renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.Java_Unbox_InputAutomationModuleServiceInterface_Access_Array;
   subtype InputAutomationModuleServiceInterface_Access_Array_Access_Array is bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.InputAutomationModuleServiceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceInterface_Access_Array_Access_Array) return Boolean renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References."=";
   subtype InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access is bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References."=";
   function Java_Box (Value : InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleServiceInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleServiceInterface_Access_Array_Access_Array_Access renames bundle.input.automation.module.InputAutomationModuleServiceInterface_Package_References.Java_Unbox_InputAutomationModuleServiceInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InputAutomationModuleServiceInterface (Value : InputAutomationModuleServiceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceInterface) return InputAutomationModuleFactoryInterface_Access_Array_Access is abstract;

end bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;


