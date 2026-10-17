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
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.actions.script.condition.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.JPanel_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ColorAtActionScriptConditionJPanel is tagged;
   type ColorAtActionScriptConditionJPanel_Access is access all ColorAtActionScriptConditionJPanel'Class;
   type ColorAtActionScriptConditionJPanel_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionJPanel_Access;
   type ColorAtActionScriptConditionJPanel_Access_Array_Access is access all ColorAtActionScriptConditionJPanel_Access_Array;

   type ColorAtActionScriptConditionJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      colorAtActionScriptConditionInterface : ColorAtActionScriptConditionInterface_Access;
      blueJLabel : JLabel_Access;
      colorAtActionJButton : JButton_Access;
      colorAtActionJDialog : JDialog_Access;
      colorAtXJTextField : JTextField_Access;
      colorAtYJTextField : JTextField_Access;
      colorRangeJLabel : JLabel_Access;
      greenJLabel : JLabel_Access;
      jLabel1 : JLabel_Access;
      locationJLabel : JLabel_Access;
      maxBlueJTextField : JTextField_Access;
      maxGreenJTextField : JTextField_Access;
      maxJLabel : JLabel_Access;
      maxRedJTextField : JTextField_Access;
      minBlueJTextField : JTextField_Access;
      minGreenJTextField : JTextField_Access;
      minJLabel : JLabel_Access;
      minRedJTextField : JTextField_Access;
      okJButton : JButton_Access;
      redJLabel : JLabel_Access;
      titleJLabel : JLabel_Access;
      xJLabel : JLabel_Access;
      yJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out ColorAtActionScriptConditionJPanel'Class; colorAtActionScriptConditionInterface : ColorAtActionScriptConditionInterface_Access);
   function Create (colorAtActionScriptConditionInterface : ColorAtActionScriptConditionInterface_Access) return ColorAtActionScriptConditionJPanel_Access;
   procedure set (This : in out ColorAtActionScriptConditionJPanel);
   procedure update (This : in out ColorAtActionScriptConditionJPanel);
   function getColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtXJTextField : JTextField_Access);
   function getColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtYJTextField : JTextField_Access);
   function getMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; maxBlueJTextField : JTextField_Access);
   function getMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; maxGreenJTextField : JTextField_Access);
   function getMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel; maxRedJTextField : JTextField_Access);
   function getMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; minBlueJTextField : JTextField_Access);
   function getMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; minGreenJTextField : JTextField_Access);
   function getMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel; minRedJTextField : JTextField_Access);
   function getYJLabel (This : in out ColorAtActionScriptConditionJPanel) return JLabel_Access;
   procedure setYJLabel (This : in out ColorAtActionScriptConditionJPanel; yJLabel : JLabel_Access);
   function getColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel) return JDialog_Access;
   procedure setColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel; colorAtActionJDialog : JDialog_Access);
   procedure initComponents (This : in out ColorAtActionScriptConditionJPanel);
   procedure okJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt : ActionEvent_Access);
   procedure colorAtActionJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt : ActionEvent_Access);

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;


