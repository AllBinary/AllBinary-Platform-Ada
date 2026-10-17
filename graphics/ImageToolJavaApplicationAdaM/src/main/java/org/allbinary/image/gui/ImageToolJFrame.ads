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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.util.Arrays_Package; use java.util.Arrays_Package;
--  with java.util.Comparator_Package; use java.util.Comparator_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.gui.dialog.FileJDialog_Package; use org.allbinary.gui.dialog.FileJDialog_Package;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package; use org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ImageAnalysis_Package; use org.allbinary.media.image.analysis.ImageAnalysis_Package;
with org.allbinary.media.image.analysis.ImageAnalysisResults_Package; use org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JFrame_Package; use org.allbinary.image.gui.JFrame_Package;
with org.allbinary.image.gui.ImageUnifierJPanel_Package; use org.allbinary.image.gui.ImageUnifierJPanel_Package;
with org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package; use org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package;
with org.allbinary.image.gui.RotationSpriteImageJPanel_Package; use org.allbinary.image.gui.RotationSpriteImageJPanel_Package;
with org.allbinary.image.gui.SpriteSplitterImageJPanel_Package; use org.allbinary.image.gui.SpriteSplitterImageJPanel_Package;
with org.allbinary.image.gui.RotationImageJPanel_Package; use org.allbinary.image.gui.RotationImageJPanel_Package;
with org.allbinary.image.gui.ResizeImageJPanel_Package; use org.allbinary.image.gui.ResizeImageJPanel_Package;
with org.allbinary.image.gui.CreateIconImagesJPanel_Package; use org.allbinary.image.gui.CreateIconImagesJPanel_Package;
with org.allbinary.image.gui.CanvasImageJPanel_Package; use org.allbinary.image.gui.CanvasImageJPanel_Package;
with org.allbinary.image.gui.MirrorSpriteImageJPanel_Package; use org.allbinary.image.gui.MirrorSpriteImageJPanel_Package;
with org.allbinary.image.gui.MirrorImageJPanel_Package; use org.allbinary.image.gui.MirrorImageJPanel_Package;

package org.allbinary.image.gui.ImageToolJFrame_Package is

   package FileJDialog_Package renames Standard.org.allbinary.gui.dialog.FileJDialog_Package;
   package FileJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ColorRange_Package renames Standard.org.allbinary.media.image.analysis.ColorRange_Package;
   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package ImageAnalysis_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysis_Package;
   package ImageAnalysisResults_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageToolJFrame is tagged;
   type ImageToolJFrame_Access is access all ImageToolJFrame'Class;
   type ImageToolJFrame_Access_Array is array (Natural range <>) of ImageToolJFrame_Access;
   type ImageToolJFrame_Access_Array_Access is access all ImageToolJFrame_Access_Array;

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
   procedure createStripImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure okJButtonActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure processingJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure openImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure onFiles (This : in out ImageToolJFrame; files : File_Access_Array_Access);
   procedure fileJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure analyzeJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure generateRotationSpriteJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure generateSpriteSplitterMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure generateRotationMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure scaleImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure createIconsJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure canvasImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure generateMirrorSpriteMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   procedure mirrorJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent'Class);
   function getColorRangeInterface (This : in out ImageToolJFrame) return ColorRangeInterface_Access;
   function getMaxBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxBlueJTextField (This : in out ImageToolJFrame; maxBlueJTextField_Param : access JTextField'Class);
   function getMaxGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxGreenJTextField (This : in out ImageToolJFrame; maxGreenJTextField_Param : access JTextField'Class);
   function getMaxRedJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMaxRedJTextField (This : in out ImageToolJFrame; maxRedJTextField_Param : access JTextField'Class);
   function getMinBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinBlueJTextField (This : in out ImageToolJFrame; minBlueJTextField_Param : access JTextField'Class);
   function getMinGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinGreenJTextField (This : in out ImageToolJFrame; minGreenJTextField_Param : access JTextField'Class);
   function getMinRedJTextField (This : in out ImageToolJFrame) return JTextField_Access;
   procedure setMinRedJTextField (This : in out ImageToolJFrame; minRedJTextField_Param : access JTextField'Class);

end org.allbinary.image.gui.ImageToolJFrame_Package;


