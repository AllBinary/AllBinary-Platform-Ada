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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References is
   type InputAutomationTypeJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package.InputAutomationTypeJPanel'Class;
   type InputAutomationTypeJPanel_Access_Array is array (Natural range <>) of InputAutomationTypeJPanel_Access;
   type InputAutomationTypeJPanel_Access_Array_Access is access all InputAutomationTypeJPanel_Access_Array;
   type InputAutomationTypeJPanel_Access_Array_Access_Array is array (Natural range <>) of InputAutomationTypeJPanel_Access_Array_Access;
   type InputAutomationTypeJPanel_Access_Array_Access_Array_Access is access all InputAutomationTypeJPanel_Access_Array_Access_Array;
   type InputAutomationTypeJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationTypeJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationTypeJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationTypeJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationTypeJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationTypeJPanel_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationTypeJPanel_Access_Array_Object'Class then InputAutomationTypeJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationTypeJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationTypeJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationTypeJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationTypeJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationTypeJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationTypeJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationTypeJPanel_Access_Array_Access_Array_Object'Class then InputAutomationTypeJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.DefaultComboBoxModel_Package; use javax.swing.DefaultComboBoxModel_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JComboBox_Package; use javax.swing.JComboBox_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationTypeJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.InputAutomationTypeJPanel_Access;
   function "=" (Left, Right : InputAutomationTypeJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References."=";
   subtype InputAutomationTypeJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.InputAutomationTypeJPanel_Access_Array;
   function "=" (Left, Right : InputAutomationTypeJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References."=";
   subtype InputAutomationTypeJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.InputAutomationTypeJPanel_Access_Array_Access;
   function "=" (Left, Right : InputAutomationTypeJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References."=";
   function Java_Box (Value : InputAutomationTypeJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.Java_Box;
   function Java_Unbox_InputAutomationTypeJPanel_Access_Array (Value : access Java_Object'Class) return InputAutomationTypeJPanel_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.Java_Unbox_InputAutomationTypeJPanel_Access_Array;
   subtype InputAutomationTypeJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.InputAutomationTypeJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationTypeJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References."=";
   subtype InputAutomationTypeJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.InputAutomationTypeJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationTypeJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References."=";
   function Java_Box (Value : InputAutomationTypeJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.Java_Box;
   function Java_Unbox_InputAutomationTypeJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationTypeJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package_References.Java_Unbox_InputAutomationTypeJPanel_Access_Array_Access_Array;

   type InputAutomationTypeJPanel is new Java_Object with record
      inputAutomationTypeJComboBox : JComboBox_Access;
      jLabel1 : JLabel_Access;
   end record;

   procedure Initialize (This : in out InputAutomationTypeJPanel'Class);
   function Create return InputAutomationTypeJPanel_Access;
   function getInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel) return JComboBox_Access;
   procedure setInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel; inputAutomationTypeJComboBox_Param : access JComboBox_Package.JComboBox'Class);
   procedure initComponents (This : in out InputAutomationTypeJPanel);

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package;


