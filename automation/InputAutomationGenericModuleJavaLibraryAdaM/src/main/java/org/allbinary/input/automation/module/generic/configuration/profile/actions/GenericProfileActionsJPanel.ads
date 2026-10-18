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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GenericProfileActionsJPanel is tagged;
   type GenericProfileActionsJPanel_Access is access all GenericProfileActionsJPanel'Class;
   type GenericProfileActionsJPanel_Access_Array is array (Natural range <>) of GenericProfileActionsJPanel_Access;
   type GenericProfileActionsJPanel_Access_Array_Access is access all GenericProfileActionsJPanel_Access_Array;
   type GenericProfileActionsJPanel_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionsJPanel_Access_Array_Access;
   type GenericProfileActionsJPanel_Access_Array_Access_Array_Access is access all GenericProfileActionsJPanel_Access_Array_Access_Array;

   type GenericProfileActionsJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      genericProfileActions : GenericProfileActions_Access;
      genericProfileActionJPanel : GenericProfileActionJPanel_Access;
      blankGenericProfileActionJPanel : JPanel_Access;
      deleteActionJButton : JButton_Access;
      genericProfileActionsJList : JList_Access;
      genericProfileActionsJPanel_Var : JPanel_Access;
      genericProfileActionsJScrollPane : JScrollPane_Access;
      newActionJButton : JButton_Access;
      newProfileActionJDialog : JDialog_Access;
      newProfileActionJLabel : JLabel_Access;
      newProfileActionJTextField : JTextField_Access;
      okNewProfileActionJButton : JButton_Access;
      saveJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out GenericProfileActionsJPanel'Class);
   function Create return GenericProfileActionsJPanel_Access;
   procedure initComponents (This : in out GenericProfileActionsJPanel);
   procedure setModel (This : in out GenericProfileActionsJPanel);
   procedure saveJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure updateProfileActionUI (This : in out GenericProfileActionsJPanel; profileActionNameString : Unbounded_String);
   procedure genericProfileActionsJListValueChanged (This : in out GenericProfileActionsJPanel; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class);
   procedure okNewProfileActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure deleteActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure selectFirstElement (This : in out GenericProfileActionsJPanel);
   function getGenericProfileActionJPanel (This : in out GenericProfileActionsJPanel) return GenericProfileActionJPanel_Access;
   procedure setGenericProfileActionJPanel (This : in out GenericProfileActionsJPanel; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class);
   function getGenericProfileActions (This : in out GenericProfileActionsJPanel) return GenericProfileActions_Access;
   procedure setGenericProfileActions (This : in out GenericProfileActionsJPanel; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class);
   procedure newActionJButtonActionPerformed (This : in out GenericProfileActionsJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;


