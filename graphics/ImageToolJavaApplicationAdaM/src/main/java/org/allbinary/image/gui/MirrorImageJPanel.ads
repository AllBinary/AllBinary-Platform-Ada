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
--  with java.awt.image.RenderedImage_Package; use java.awt.image.RenderedImage_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.MirrorImageUtil_Package; use org.allbinary.media.image.MirrorImageUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;

package org.allbinary.image.gui.MirrorImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ImageStrings_Package renames Standard.org.allbinary.media.image.ImageStrings_Package;
   package MirrorImageUtil_Package renames Standard.org.allbinary.media.image.MirrorImageUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type MirrorImageJPanel is tagged;
   type MirrorImageJPanel_Access is access all MirrorImageJPanel'Class;
   type MirrorImageJPanel_Access_Array is array (Natural range <>) of MirrorImageJPanel_Access;
   type MirrorImageJPanel_Access_Array_Access is access all MirrorImageJPanel_Access_Array;

   type MirrorImageJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageStrings : ImageStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      result : BufferedImage_Access;
      buttonGroup : ButtonGroup_Access;
      generateJButton : JButton_Access;
      horizontalJCheckBox : JCheckBox_Access;
      jLabel2 : JLabel_Access;
      jLayeredPane1 : JLayeredPane_Access;
      jPanel1 : JPanel_Access;
      jPanel2 : JPanel_Access;
      jPanel3 : JPanel_Access;
      renameJRadioButton : JRadioButton_Access;
      verticleJCheckBox : JCheckBox_Access;
      writeOverOriginalJRadioButton : JRadioButton_Access;
   end record;

   procedure Initialize (This : in out MirrorImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput'Class) return MirrorImageJPanel_Access;
   procedure process (This : in out MirrorImageJPanel);
   procedure initComponents (This : in out MirrorImageJPanel);
   procedure generateJButtonActionPerformed (This : in out MirrorImageJPanel; evt_Param : access ActionEvent'Class);
   procedure renameJRadioButtonActionPerformed (This : in out MirrorImageJPanel; evt_Param : access ActionEvent'Class);
   function getImageProcessorInput (This : in out MirrorImageJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out MirrorImageJPanel; imageProcessorInput_Param : access ImageProcessorInput'Class);

end org.allbinary.image.gui.MirrorImageJPanel_Package;


