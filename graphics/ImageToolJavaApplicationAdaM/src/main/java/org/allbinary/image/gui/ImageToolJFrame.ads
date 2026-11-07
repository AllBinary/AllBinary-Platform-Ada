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

limited with org.allbinary.image.gui.ImageToolJFrame_Package;
package org.allbinary.image.gui.ImageToolJFrame_Package_References is
   type ImageToolJFrame_Access is access all org.allbinary.image.gui.ImageToolJFrame_Package.ImageToolJFrame'Class;
   type ImageToolJFrame_Access_Array is array (Natural range <>) of ImageToolJFrame_Access;
   type ImageToolJFrame_Access_Array_Access is access all ImageToolJFrame_Access_Array;
   type ImageToolJFrame_Access_Array_Access_Array is array (Natural range <>) of ImageToolJFrame_Access_Array_Access;
   type ImageToolJFrame_Access_Array_Access_Array_Access is access all ImageToolJFrame_Access_Array_Access_Array;
end org.allbinary.image.gui.ImageToolJFrame_Package_References;

with org.allbinary.image.gui.ImageToolJFrame_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with java.io.File_Package; use java.io.File_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
limited with org.allbinary.gui.dialog.FileJDialog_Package;
with org.allbinary.gui.dialog.FileJDialog_Package_References;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package; use org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References;
limited with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.image.gui.JFrame_Package; use org.allbinary.image.gui.JFrame_Package;

package org.allbinary.image.gui.ImageToolJFrame_Package is

   package File_Package renames Standard.java.io.File_Package;
   package FileJDialog_Package renames Standard.org.allbinary.gui.dialog.FileJDialog_Package;
   package FileJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype FileJDialog_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access;
   use type FileJDialog_Access;
   subtype FileJDialog_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array;
   use type FileJDialog_Access_Array;
   subtype FileJDialog_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access;
   use type FileJDialog_Access_Array_Access;
   subtype FileJDialog_Access_Array_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array;
   use type FileJDialog_Access_Array_Access_Array;
   subtype FileJDialog_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array_Access;
   use type FileJDialog_Access_Array_Access_Array_Access;
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
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   use type ImageProcessorInput_Access;
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   use type ImageProcessorInput_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access;
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   use type ImageProcessorInput_Access_Array_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access_Array_Access;
   subtype ImageProcessorInputCompositeInterface_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access;
   use type ImageProcessorInputCompositeInterface_Access;
   subtype ImageProcessorInputCompositeInterface_Access_Array is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array;
   use type ImageProcessorInputCompositeInterface_Access_Array;
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access;
   use type ImageProcessorInputCompositeInterface_Access_Array_Access;
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access_Array;
   use type ImageProcessorInputCompositeInterface_Access_Array_Access_Array;
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access;
   use type ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access;
   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   use type ColorRangeInterface_Access;
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   use type ColorRangeInterface_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access;
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   use type ColorRangeInterface_Access_Array_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access_Array_Access;
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


   subtype ImageToolJFrame_Access is org.allbinary.image.gui.ImageToolJFrame_Package_References.ImageToolJFrame_Access;
   function "=" (Left, Right : ImageToolJFrame_Access) return Boolean renames org.allbinary.image.gui.ImageToolJFrame_Package_References."=";
   subtype ImageToolJFrame_Access_Array is org.allbinary.image.gui.ImageToolJFrame_Package_References.ImageToolJFrame_Access_Array;
   function "=" (Left, Right : ImageToolJFrame_Access_Array) return Boolean renames org.allbinary.image.gui.ImageToolJFrame_Package_References."=";
   subtype ImageToolJFrame_Access_Array_Access is org.allbinary.image.gui.ImageToolJFrame_Package_References.ImageToolJFrame_Access_Array_Access;
   function "=" (Left, Right : ImageToolJFrame_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageToolJFrame_Package_References."=";
   subtype ImageToolJFrame_Access_Array_Access_Array is org.allbinary.image.gui.ImageToolJFrame_Package_References.ImageToolJFrame_Access_Array_Access_Array;
   function "=" (Left, Right : ImageToolJFrame_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ImageToolJFrame_Package_References."=";
   subtype ImageToolJFrame_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageToolJFrame_Package_References.ImageToolJFrame_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageToolJFrame_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageToolJFrame_Package_References."=";

   type ImageToolJFrame is new JFrame and FileJDialogListenerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      fileJDialog : FileJDialog_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      analysisActionJDialog : JDialog_Access;
      analyzeJMenuItem : JMenuItem_Access;
      blueJLabel : JLabel_Access;
      colorRangeJLabel : JLabel_Access;
      createStripImageJMenuItem : JMenuItem_Access;
      fileJMenu : JMenu_Access;
      generateSpriteSplitterMenuItem : JMenuItem_Access;
      generateRotationMenuItem : JMenuItem_Access;
      generateMirrorSpriteMenuItem : JMenuItem_Access;
      generateRotationSpriteJMenuItem : JMenuItem_Access;
      greenJLabel : JLabel_Access;
      jPanel1 : JPanel_Access;
      mainJMenuBar : JMenuBar_Access;
      maxBlueJTextField : JTextField_Access;
      maxGreenJTextField : JTextField_Access;
      maxJLabel : JLabel_Access;
      maxRedJTextField : JTextField_Access;
      minBlueJTextField : JTextField_Access;
      minGreenJTextField : JTextField_Access;
      minJLabel : JLabel_Access;
      minRedJTextField : JTextField_Access;
      mirrorJMenuItem : JMenuItem_Access;
      okJButton : JButton_Access;
      openImageJMenuItem : JMenuItem_Access;
      processingJMenu : JMenu_Access;
      redJLabel : JLabel_Access;
      scaleImagesJMenuItem : JMenuItem_Access;
      canvasImagesJMenuItem : JMenuItem_Access;
      createIconImagesJMenuItem : JMenuItem_Access;
      titleJLabel : JLabel_Access;
   end record;
   imageProcessorInputCompositeInterface : ImageProcessorInputCompositeInterface_Access;

   procedure Initialize (This : in out ImageToolJFrame'Class);
   function Create return ImageToolJFrame_Access;
   procedure initComponents (This : in out ImageToolJFrame);
   procedure createStripImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure okJButtonActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure processingJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure openImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure onFiles (This : in out ImageToolJFrame; files : File_Access_Array_Access);
   procedure fileJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure analyzeJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure generateRotationSpriteJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure generateSpriteSplitterMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure generateRotationMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure scaleImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure createIconsJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure canvasImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure generateMirrorSpriteMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure mirrorJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   function getColorRangeInterface (This : in out ImageToolJFrame) return ColorRangeInterface_Access;
   function getMaxBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxBlueJTextField (This : in out ImageToolJFrame; maxBlueJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMaxGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxGreenJTextField (This : in out ImageToolJFrame; maxGreenJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMaxRedJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxRedJTextField (This : in out ImageToolJFrame; maxRedJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinBlueJTextField (This : in out ImageToolJFrame; minBlueJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinGreenJTextField (This : in out ImageToolJFrame; minGreenJTextField_Param : access JTextField_Package.JTextField'Class);
   function getMinRedJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinRedJTextField (This : in out ImageToolJFrame; minRedJTextField_Param : access JTextField_Package.JTextField'Class);

end org.allbinary.image.gui.ImageToolJFrame_Package;


