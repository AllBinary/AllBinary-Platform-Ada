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
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References is
   type ImageActionScriptOutputJPanel_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package.ImageActionScriptOutputJPanel'Class;
   type ImageActionScriptOutputJPanel_Access_Array is array (Natural range <>) of ImageActionScriptOutputJPanel_Access;
   type ImageActionScriptOutputJPanel_Access_Array_Access is access all ImageActionScriptOutputJPanel_Access_Array;
   type ImageActionScriptOutputJPanel_Access_Array_Access_Array is array (Natural range <>) of ImageActionScriptOutputJPanel_Access_Array_Access;
   type ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access is access all ImageActionScriptOutputJPanel_Access_Array_Access_Array;
   type ImageActionScriptOutputJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageActionScriptOutputJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageActionScriptOutputJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageActionScriptOutputJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageActionScriptOutputJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageActionScriptOutputJPanel_Access_Array_Access is (if Value /= null and then Value.all in ImageActionScriptOutputJPanel_Access_Array_Object'Class then ImageActionScriptOutputJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type ImageActionScriptOutputJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageActionScriptOutputJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageActionScriptOutputJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageActionScriptOutputJPanel_Access_Array_Access_Array_Object'Class then ImageActionScriptOutputJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.Insets_Package; use java.awt.Insets_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.AbstractListModel_Package; use javax.swing.AbstractListModel_Package;
--  with javax.swing.BorderFactory_Package; use javax.swing.BorderFactory_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JCheckBox_Package; use javax.swing.JCheckBox_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JList_Package; use javax.swing.JList_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JScrollPane_Package; use javax.swing.JScrollPane_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype ImageActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access;
   use type ImageActionScriptOutputInterface_Access;
   subtype ImageActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array;
   use type ImageActionScriptOutputInterface_Access_Array;
   subtype ImageActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access;
   use type ImageActionScriptOutputInterface_Access_Array_Access;
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array;
   use type ImageActionScriptOutputInterface_Access_Array_Access_Array;
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   use type ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageActionScriptOutputJPanel_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access;
   function "=" (Left, Right : ImageActionScriptOutputJPanel_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References."=";
   subtype ImageActionScriptOutputJPanel_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References."=";
   subtype ImageActionScriptOutputJPanel_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References."=";
   function Java_Box (Value : ImageActionScriptOutputJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageActionScriptOutputJPanel_Access_Array (Value : access Java_Object'Class) return ImageActionScriptOutputJPanel_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.Java_Unbox_ImageActionScriptOutputJPanel_Access_Array;
   subtype ImageActionScriptOutputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References."=";
   subtype ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References."=";
   function Java_Box (Value : ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageActionScriptOutputJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.Java_Unbox_ImageActionScriptOutputJPanel_Access_Array_Access_Array;

   type ImageActionScriptOutputJPanel is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      capturedImageActionScriptOutputInterface : ImageActionScriptOutputInterface_Access;
      capturedImageActionJButton : JButton_Access;
      capturedImageActionJDialog : JDialog_Access;
      displayJCheckBox : JCheckBox_Access;
      itemTypesJList : JList_Access;
      jLabel1 : JLabel_Access;
      jScrollPane1 : JScrollPane_Access;
      okJButton : JButton_Access;
      saveJCheckBox : JCheckBox_Access;
      titleJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out ImageActionScriptOutputJPanel'Class; capturedImageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class);
   function Create (capturedImageActionScriptOutputInterface_Param : access ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class) return ImageActionScriptOutputJPanel_Access;
   procedure set (This : in out ImageActionScriptOutputJPanel);
   procedure update (This : in out ImageActionScriptOutputJPanel);
   procedure setImageTypeJlistModel (This : in out ImageActionScriptOutputJPanel);
   function getCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel) return JDialog_Access;
   procedure setCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel; capturedImageActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out ImageActionScriptOutputJPanel);
   procedure displayJCheckBoxActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure okJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure capturedImageActionJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;


