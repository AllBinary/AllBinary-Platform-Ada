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
limited with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References is
   type GenericModuleConfigurationJPanel_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package.GenericModuleConfigurationJPanel'Class;
   type GenericModuleConfigurationJPanel_Access_Array is array (Natural range <>) of GenericModuleConfigurationJPanel_Access;
   type GenericModuleConfigurationJPanel_Access_Array_Access is access all GenericModuleConfigurationJPanel_Access_Array;
   type GenericModuleConfigurationJPanel_Access_Array_Access_Array is array (Natural range <>) of GenericModuleConfigurationJPanel_Access_Array_Access;
   type GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access is access all GenericModuleConfigurationJPanel_Access_Array_Access_Array;
   type GenericModuleConfigurationJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericModuleConfigurationJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericModuleConfigurationJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericModuleConfigurationJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericModuleConfigurationJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericModuleConfigurationJPanel_Access_Array_Access is (if Value /= null and then Value.all in GenericModuleConfigurationJPanel_Access_Array_Object'Class then GenericModuleConfigurationJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type GenericModuleConfigurationJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericModuleConfigurationJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericModuleConfigurationJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericModuleConfigurationJPanel_Access_Array_Access_Array_Object'Class then GenericModuleConfigurationJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with java.awt.Insets_Package; use java.awt.Insets_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.BorderFactory_Package; use javax.swing.BorderFactory_Package;
--  with javax.swing.ButtonGroup_Package; use javax.swing.ButtonGroup_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JCheckBox_Package; use javax.swing.JCheckBox_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JList_Package; use javax.swing.JList_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JRadioButton_Package; use javax.swing.JRadioButton_Package;
--  with javax.swing.JScrollPane_Package; use javax.swing.JScrollPane_Package;
--  with javax.swing.JTabbedPane_Package; use javax.swing.JTabbedPane_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;
--  with javax.swing.event.ListSelectionEvent_Package; use javax.swing.event.ListSelectionEvent_Package;
--  with javax.swing.event.ListSelectionListener_Package; use javax.swing.event.ListSelectionListener_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package; use org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package is

   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package GenericProfiles_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   use type GenericProfile_Access;
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   use type GenericProfile_Access_Array;
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   use type GenericProfile_Access_Array_Access;
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   use type GenericProfile_Access_Array_Access_Array;
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   use type GenericProfile_Access_Array_Access_Array_Access;
   subtype GenericProfiles_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access;
   use type GenericProfiles_Access;
   subtype GenericProfiles_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array;
   use type GenericProfiles_Access_Array;
   subtype GenericProfiles_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access;
   use type GenericProfiles_Access_Array_Access;
   subtype GenericProfiles_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access_Array;
   use type GenericProfiles_Access_Array_Access_Array;
   subtype GenericProfiles_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access_Array_Access;
   use type GenericProfiles_Access_Array_Access_Array_Access;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
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


   subtype GenericModuleConfigurationJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.GenericModuleConfigurationJPanel_Access;
   function "=" (Left, Right : GenericModuleConfigurationJPanel_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References."=";
   subtype GenericModuleConfigurationJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.GenericModuleConfigurationJPanel_Access_Array;
   function "=" (Left, Right : GenericModuleConfigurationJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References."=";
   subtype GenericModuleConfigurationJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.GenericModuleConfigurationJPanel_Access_Array_Access;
   function "=" (Left, Right : GenericModuleConfigurationJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References."=";
   function Java_Box (Value : GenericModuleConfigurationJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.Java_Box;
   function Java_Unbox_GenericModuleConfigurationJPanel_Access_Array (Value : access Java_Object'Class) return GenericModuleConfigurationJPanel_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.Java_Unbox_GenericModuleConfigurationJPanel_Access_Array;
   subtype GenericModuleConfigurationJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.GenericModuleConfigurationJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : GenericModuleConfigurationJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References."=";
   subtype GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References."=";
   function Java_Box (Value : GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.Java_Box;
   function Java_Unbox_GenericModuleConfigurationJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericModuleConfigurationJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package_References.Java_Unbox_GenericModuleConfigurationJPanel_Access_Array_Access_Array;

   type GenericModuleConfigurationJPanel is new Java_Object and GenericModuleConfigurationInterface with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      genericProfiles : GenericProfiles_Access;
      selectedGenericProfile : GenericProfile_Access;
      blankGenericProfileActionsJPanel : JPanel_Access;
      buttonGroup2 : ButtonGroup_Access;
      captureComparisonJCheckBox : JCheckBox_Access;
      captureMotionAnalysisJCheckBox : JCheckBox_Access;
      deleteProfileJButton : JButton_Access;
      genericJTabbedPane : JTabbedPane_Access;
      genericProfilesJList : JList_Access;
      genericProfilesJPanel : JPanel_Access;
      genericProfilesJScrollPane : JScrollPane_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jPanel1 : JPanel_Access;
      newProfileJButton : JButton_Access;
      newProfileJDialog : JDialog_Access;
      newProfileNameJLabel : JLabel_Access;
      newProfileNameJTextField : JTextField_Access;
      okNewProfileJButton : JButton_Access;
      savedCaptureJRadioButton : JRadioButton_Access;
      screenCaptureJRadioButton : JRadioButton_Access;
   end record;

   procedure Initialize (This : in out GenericModuleConfigurationJPanel'Class);
   function Create return GenericModuleConfigurationJPanel_Access;
   procedure initComponents (This : in out GenericModuleConfigurationJPanel);
   procedure savedCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure screenCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure captureMotionAnalysisJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure captureComparisonJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure updateProfileUI (This : in out GenericModuleConfigurationJPanel; profileNameString : Unbounded_String);
   procedure selectFirstElement (This : in out GenericModuleConfigurationJPanel);
   procedure updateProfileOptions (This : in out GenericModuleConfigurationJPanel);
   function getBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel) return JPanel_Access;
   procedure setBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel; blankGenericProfileActionsJPanel_Param : access JPanel_Package.JPanel'Class);
   function getGenericProfiles (This : in out GenericModuleConfigurationJPanel) return GenericProfiles_Access;
   procedure setGenericProfiles (This : in out GenericModuleConfigurationJPanel; genericProfiles_Param : access GenericProfiles_Package.GenericProfiles'Class);
   function getSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel) return GenericProfile_Access;
   procedure setSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel; selectedGenericProfile_Param : access GenericProfile_Package.GenericProfile'Class);
   procedure genericProfilesJListValueChanged (This : in out GenericModuleConfigurationJPanel; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class);
   procedure deleteProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure okNewProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure newProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;


