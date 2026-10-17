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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.JPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package; use org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationInterface_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package GenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
   package GenericProfiles_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package GenericProfileActionsJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GenericModuleConfigurationJPanel is tagged;
   type GenericModuleConfigurationJPanel_Access is access all GenericModuleConfigurationJPanel'Class;
   type GenericModuleConfigurationJPanel_Access_Array is array (Natural range <>) of GenericModuleConfigurationJPanel_Access;
   type GenericModuleConfigurationJPanel_Access_Array_Access is access all GenericModuleConfigurationJPanel_Access_Array;

   type GenericModuleConfigurationJPanel is new JPanel and GenericModuleConfigurationInterface with record
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
   procedure savedCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure screenCaptureJRadioButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure captureMotionAnalysisJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure captureComparisonJCheckBoxActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure updateProfileUI (This : in out GenericModuleConfigurationJPanel; profileNameString : Unbounded_String);
   procedure selectFirstElement (This : in out GenericModuleConfigurationJPanel);
   procedure updateProfileOptions (This : in out GenericModuleConfigurationJPanel);
   function getBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel) return JPanel_Access;
   procedure setBlankGenericProfileActionsJPanel (This : in out GenericModuleConfigurationJPanel; blankGenericProfileActionsJPanel_Param : access JPanel'Class);
   function getGenericProfiles (This : in out GenericModuleConfigurationJPanel) return GenericProfiles_Access;
   procedure setGenericProfiles (This : in out GenericModuleConfigurationJPanel; genericProfiles_Param : access GenericProfiles'Class);
   function getSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel) return GenericProfile_Access;
   procedure setSelectedGenericProfile (This : in out GenericModuleConfigurationJPanel; selectedGenericProfile_Param : access GenericProfile'Class);
   procedure genericProfilesJListValueChanged (This : in out GenericModuleConfigurationJPanel; evt_Param : access ListSelectionEvent'Class);
   procedure deleteProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure okNewProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);
   procedure newProfileJButtonActionPerformed (This : in out GenericModuleConfigurationJPanel; evt_Param : access ActionEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;


