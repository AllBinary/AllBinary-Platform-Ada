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

limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References is
   type ColorAtActionScriptConditionJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package.ColorAtActionScriptConditionJPanel'Class;
   type ColorAtActionScriptConditionJPanel_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionJPanel_Access;
   type ColorAtActionScriptConditionJPanel_Access_Array_Access is access all ColorAtActionScriptConditionJPanel_Access_Array;
   type ColorAtActionScriptConditionJPanel_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionJPanel_Access_Array_Access;
   type ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access is access all ColorAtActionScriptConditionJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References;

with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References;
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
with org.allbinary.input.automation.actions.script.condition.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.JPanel_Package;
limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package is

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
   subtype ColorAtActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access;
   use type ColorAtActionScriptConditionInterface_Access;
   subtype ColorAtActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array;
   use type ColorAtActionScriptConditionInterface_Access_Array;
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access;
   use type ColorAtActionScriptConditionInterface_Access_Array_Access;
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   use type ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access;
   use type ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorAtActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References."=";
   subtype ColorAtActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References."=";
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References."=";
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References."=";
   subtype ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References.ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package_References."=";

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

   procedure Initialize (This : in out ColorAtActionScriptConditionJPanel'Class; colorAtActionScriptConditionInterface_Param : access ColorAtActionScriptConditionInterface_Package.ColorAtActionScriptConditionInterface'Class);
   function Create (colorAtActionScriptConditionInterface_Param : access ColorAtActionScriptConditionInterface_Package.ColorAtActionScriptConditionInterface'Class) return ColorAtActionScriptConditionJPanel_Access;
   procedure set (This : in out ColorAtActionScriptConditionJPanel);
   procedure update (This : in out ColorAtActionScriptConditionJPanel);
   function getColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setColorAtXJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtXJTextField_Param : access JTextField_Package.JTextField'Class);
   function getColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setColorAtYJTextField (This : in out ColorAtActionScriptConditionJPanel; colorAtYJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; maxBlueJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; maxGreenJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMaxRedJTextField (This : in out ColorAtActionScriptConditionJPanel; maxRedJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinBlueJTextField (This : in out ColorAtActionScriptConditionJPanel; minBlueJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinGreenJTextField (This : in out ColorAtActionScriptConditionJPanel; minGreenJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel) return JTextField_Access;
   procedure setMinRedJTextField (This : in out ColorAtActionScriptConditionJPanel; minRedJTextField_Param : access JTextField_Package.JTextField'Class);
   function getYJLabel (This : in out ColorAtActionScriptConditionJPanel) return JLabel_Access;
   procedure setYJLabel (This : in out ColorAtActionScriptConditionJPanel; yJLabel_Param : access JLabel_Package.JLabel'Class);
   function getColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel) return JDialog_Access;
   procedure setColorAtActionJDialog (This : in out ColorAtActionScriptConditionJPanel; colorAtActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out ColorAtActionScriptConditionJPanel);
   procedure okJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure colorAtActionJButtonActionPerformed (This : in out ColorAtActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;


