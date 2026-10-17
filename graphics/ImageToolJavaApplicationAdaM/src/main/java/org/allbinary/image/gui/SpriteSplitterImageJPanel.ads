-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.SpriteSplitterUtil_Package; use org.allbinary.media.image.SpriteSplitterUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.SpriteSplitterImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ImageProcessedVisitor_Package renames Standard.org.allbinary.media.image.ImageProcessedVisitor_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageStrings_Package renames Standard.org.allbinary.media.image.ImageStrings_Package;
   package SpriteSplitterUtil_Package renames Standard.org.allbinary.media.image.SpriteSplitterUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SpriteSplitterImageJPanel is tagged;
   type SpriteSplitterImageJPanel_Access is access all SpriteSplitterImageJPanel'Class;
   type SpriteSplitterImageJPanel_Access_Array is array (Natural range <>) of SpriteSplitterImageJPanel_Access;
   type SpriteSplitterImageJPanel_Access_Array_Access is access all SpriteSplitterImageJPanel_Access_Array;

   type SpriteSplitterImageJPanel is new JPanel and ImageProcessedVisitor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      imageStrings : ImageStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      result : BufferedImage_Access;
      generateJButton : JButton_Access;
      heightReductionTextField : JTextField_Access;
      increaseHeightTextField : JTextField_Access;
      increaseWidthTextField : JTextField_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jLabel4 : JLabel_Access;
      jLabel5 : JLabel_Access;
      jLabel6 : JLabel_Access;
      jLabel7 : JLabel_Access;
      jLabel8 : JLabel_Access;
      jPanel1 : JPanel_Access;
      jPanel2 : JPanel_Access;
      spriteTypeJComboBox : JComboBox_Access;
      totalAnimationsJComboBox : JComboBox_Access;
      totalFramesJComboBox : JComboBox_Access;
      widthReductionTextField : JTextField_Access;
      writeOverOriginalJCheckBox : JCheckBox_Access;
   end record;

   procedure Initialize (This : in out SpriteSplitterImageJPanel'Class; imageProcessorInput : ImageProcessorInput_Access);
   function Create (imageProcessorInput : ImageProcessorInput_Access) return SpriteSplitterImageJPanel_Access;
   procedure process (This : in out SpriteSplitterImageJPanel);
   procedure initComponents (This : in out SpriteSplitterImageJPanel);
   procedure writeOverOriginalJCheckBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure generateJButtonActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure spriteTypeJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure totalAnimationsJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure totalFramesJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure widthReductionTextFieldActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   procedure increaseWidthTextFieldActionPerformed (This : in out SpriteSplitterImageJPanel; evt : ActionEvent_Access);
   function getImageProcessorInput (This : in out SpriteSplitterImageJPanel) return ImageProcessorInput_Access;
   procedure getImageProcessorInput (This : in out SpriteSplitterImageJPanel);
   procedure setImageProcessorInput (This : in out SpriteSplitterImageJPanel; imageProcessorInput : ImageProcessorInput_Access);
   procedure visit (This : in out SpriteSplitterImageJPanel; generatedBufferedImage : BufferedImage_Access; name : Unbounded_String; index : Integer);

end org.allbinary.image.gui.SpriteSplitterImageJPanel_Package;


