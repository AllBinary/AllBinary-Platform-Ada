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
limited with org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package;
package org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References is
   type GenericModuleFactory_Access is access all org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package.GenericModuleFactory'Class;
   type GenericModuleFactory_Access_Array is array (Natural range <>) of GenericModuleFactory_Access;
   type GenericModuleFactory_Access_Array_Access is access all GenericModuleFactory_Access_Array;
   type GenericModuleFactory_Access_Array_Access_Array is array (Natural range <>) of GenericModuleFactory_Access_Array_Access;
   type GenericModuleFactory_Access_Array_Access_Array_Access is access all GenericModuleFactory_Access_Array_Access_Array;
   type GenericModuleFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericModuleFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericModuleFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericModuleFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericModuleFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericModuleFactory_Access_Array_Access is (if Value /= null and then Value.all in GenericModuleFactory_Access_Array_Object'Class then GenericModuleFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GenericModuleFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericModuleFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericModuleFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericModuleFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericModuleFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericModuleFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericModuleFactory_Access_Array_Access_Array_Object'Class then GenericModuleFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References;

with org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package; use org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
limited with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.thread.RunnableInterface_Package_References;

package org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package is

   package AbstractInputAutomationFactory_Package renames Standard.org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package Reference_Types is
   subtype RunnableInterface_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access;
   use type RunnableInterface_Access;
   subtype RunnableInterface_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array;
   use type RunnableInterface_Access_Array;
   subtype RunnableInterface_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access;
   use type RunnableInterface_Access_Array_Access;
   subtype RunnableInterface_Access_Array_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array;
   use type RunnableInterface_Access_Array_Access_Array;
   subtype RunnableInterface_Access_Array_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array_Access;
   use type RunnableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericModuleFactory_Access is org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.GenericModuleFactory_Access;
   function "=" (Left, Right : GenericModuleFactory_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References."=";
   subtype GenericModuleFactory_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.GenericModuleFactory_Access_Array;
   function "=" (Left, Right : GenericModuleFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References."=";
   subtype GenericModuleFactory_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.GenericModuleFactory_Access_Array_Access;
   function "=" (Left, Right : GenericModuleFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References."=";
   function Java_Box (Value : GenericModuleFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.Java_Box;
   function Java_Unbox_GenericModuleFactory_Access_Array (Value : access Java_Object'Class) return GenericModuleFactory_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.Java_Unbox_GenericModuleFactory_Access_Array;
   subtype GenericModuleFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.GenericModuleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GenericModuleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References."=";
   subtype GenericModuleFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.GenericModuleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericModuleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References."=";
   function Java_Box (Value : GenericModuleFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.Java_Box;
   function Java_Unbox_GenericModuleFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericModuleFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package_References.Java_Unbox_GenericModuleFactory_Access_Array_Access_Array;

   type GenericModuleFactory is new AbstractInputAutomationFactory with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GenericModuleFactory'Class);
   function Create return GenericModuleFactory_Access;
   function getInstance (This : in out GenericModuleFactory) return RunnableInterface_Access;

end org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package;


