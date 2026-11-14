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
limited with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
package org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References is
   type AbstractInputAutomationFactory_Access is access all org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package.AbstractInputAutomationFactory'Class;
   type AbstractInputAutomationFactory_Access_Array is array (Natural range <>) of AbstractInputAutomationFactory_Access;
   type AbstractInputAutomationFactory_Access_Array_Access is access all AbstractInputAutomationFactory_Access_Array;
   type AbstractInputAutomationFactory_Access_Array_Access_Array is array (Natural range <>) of AbstractInputAutomationFactory_Access_Array_Access;
   type AbstractInputAutomationFactory_Access_Array_Access_Array_Access is access all AbstractInputAutomationFactory_Access_Array_Access_Array;
   type AbstractInputAutomationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputAutomationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputAutomationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputAutomationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputAutomationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputAutomationFactory_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputAutomationFactory_Access_Array_Object'Class then AbstractInputAutomationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AbstractInputAutomationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputAutomationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputAutomationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputAutomationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputAutomationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputAutomationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputAutomationFactory_Access_Array_Access_Array_Object'Class then AbstractInputAutomationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References;

with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
limited with org.allbinary.input.automation.module.JPanel_Package;
with org.allbinary.input.automation.module.JPanel_Package_References;

package org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package is

   package Reference_Types is
   subtype JPanel_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access;
   use type JPanel_Access;
   subtype JPanel_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array;
   use type JPanel_Access_Array;
   subtype JPanel_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access;
   use type JPanel_Access_Array_Access;
   subtype JPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array;
   use type JPanel_Access_Array_Access_Array;
   subtype JPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array_Access;
   use type JPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbstractInputAutomationFactory_Access is org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.AbstractInputAutomationFactory_Access;
   function "=" (Left, Right : AbstractInputAutomationFactory_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References."=";
   subtype AbstractInputAutomationFactory_Access_Array is org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.AbstractInputAutomationFactory_Access_Array;
   function "=" (Left, Right : AbstractInputAutomationFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References."=";
   subtype AbstractInputAutomationFactory_Access_Array_Access is org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.AbstractInputAutomationFactory_Access_Array_Access;
   function "=" (Left, Right : AbstractInputAutomationFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References."=";
   function Java_Box (Value : AbstractInputAutomationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.Java_Box;
   function Java_Unbox_AbstractInputAutomationFactory_Access_Array (Value : access Java_Object'Class) return AbstractInputAutomationFactory_Access_Array_Access renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.Java_Unbox_AbstractInputAutomationFactory_Access_Array;
   subtype AbstractInputAutomationFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.AbstractInputAutomationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AbstractInputAutomationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References."=";
   subtype AbstractInputAutomationFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.AbstractInputAutomationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbstractInputAutomationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References."=";
   function Java_Box (Value : AbstractInputAutomationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.Java_Box;
   function Java_Unbox_AbstractInputAutomationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AbstractInputAutomationFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package_References.Java_Unbox_AbstractInputAutomationFactory_Access_Array_Access_Array;

   type AbstractInputAutomationFactory is new InputAutomationModuleFactoryInterface with record
      name : Unbounded_String;
      jPanel : JPanel_Access;
      helpSet : HelpSet_Access;
   end record;

   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class);
   function Create (name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class) return AbstractInputAutomationFactory_Access;
   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class);
   function Create (name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class) return AbstractInputAutomationFactory_Access;
   function getName (This : in out AbstractInputAutomationFactory) return Unbounded_String;
   function getConfigurationJPanel (This : in out AbstractInputAutomationFactory) return JPanel_Access;
   function getHelpSet (This : in out AbstractInputAutomationFactory) return HelpSet_Access;

end org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;


