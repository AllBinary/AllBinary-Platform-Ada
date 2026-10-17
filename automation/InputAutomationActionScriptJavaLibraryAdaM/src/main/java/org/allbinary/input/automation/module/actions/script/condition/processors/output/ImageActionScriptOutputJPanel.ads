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
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.JPanel_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.JPanel_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.DefaultListModel_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.DefaultListModel_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageActionScriptOutputJPanel is tagged;
   type ImageActionScriptOutputJPanel_Access is access all ImageActionScriptOutputJPanel'Class;
   type ImageActionScriptOutputJPanel_Access_Array is array (Natural range <>) of ImageActionScriptOutputJPanel_Access;
   type ImageActionScriptOutputJPanel_Access_Array_Access is access all ImageActionScriptOutputJPanel_Access_Array;

   type ImageActionScriptOutputJPanel is new JPanel with record
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

   procedure Initialize (This : in out ImageActionScriptOutputJPanel'Class; capturedImageActionScriptOutputInterface : ImageActionScriptOutputInterface_Access);
   function Create (capturedImageActionScriptOutputInterface : ImageActionScriptOutputInterface_Access) return ImageActionScriptOutputJPanel_Access;
   procedure set (This : in out ImageActionScriptOutputJPanel);
   procedure update (This : in out ImageActionScriptOutputJPanel);
   procedure setImageTypeJlistModel (This : in out ImageActionScriptOutputJPanel);
   function getCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel) return JDialog_Access;
   procedure setCapturedImageActionJDialog (This : in out ImageActionScriptOutputJPanel; capturedImageActionJDialog : JDialog_Access);
   procedure initComponents (This : in out ImageActionScriptOutputJPanel);
   procedure displayJCheckBoxActionPerformed (This : in out ImageActionScriptOutputJPanel; evt : ActionEvent_Access);
   procedure okJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt : ActionEvent_Access);
   procedure capturedImageActionJButtonActionPerformed (This : in out ImageActionScriptOutputJPanel; evt : ActionEvent_Access);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;


