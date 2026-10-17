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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageJ2SERotationUtil_Package; use org.allbinary.media.image.ImageJ2SERotationUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.RotationSpriteImageJPanel_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ImageJ2SERotationUtil_Package renames org.allbinary.media.image.ImageJ2SERotationUtil_Package;
   package ImageProcessorInput_Package renames org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ImageStrings_Package renames org.allbinary.media.image.ImageStrings_Package;
   package CommonPhoneStrings_Package renames org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type RotationSpriteImageJPanel is tagged;
   type RotationSpriteImageJPanel_Access is access all RotationSpriteImageJPanel'Class;
   type RotationSpriteImageJPanel_Access_Array is array (Natural range <>) of RotationSpriteImageJPanel_Access;
   type RotationSpriteImageJPanel_Access_Array_Access is access all RotationSpriteImageJPanel_Access_Array;

   type RotationSpriteImageJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageStrings : ImageStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      result : BufferedImage_Access;
      generateJButton : JButton_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jPanel1 : JPanel_Access;
      jPanel2 : JPanel_Access;
      jPanel3 : JPanel_Access;
      totalAngleJComboBox : JComboBox_Access;
      totalFramesJComboBox : JComboBox_Access;
      writeOverOriginalJCheckBox : JCheckBox_Access;
   end record;

   procedure Initialize (This : in out RotationSpriteImageJPanel'Class; imageProcessorInput : ImageProcessorInput_Access);
   function Create (imageProcessorInput : ImageProcessorInput_Access) return RotationSpriteImageJPanel_Access;
   procedure process (This : in out RotationSpriteImageJPanel);
   procedure initComponents (This : in out RotationSpriteImageJPanel);
   procedure generateJButtonActionPerformed (This : in out RotationSpriteImageJPanel; evt : ActionEvent_Access);
   procedure totalAngleJComboBoxActionPerformed (This : in out RotationSpriteImageJPanel; evt : ActionEvent_Access);
   function getImageProcessorInput (This : in out RotationSpriteImageJPanel) return ImageProcessorInput_Access;
   procedure getImageProcessorInput (This : in out RotationSpriteImageJPanel);
   procedure setImageProcessorInput (This : in out RotationSpriteImageJPanel; imageProcessorInput : ImageProcessorInput_Access);

end org.allbinary.image.gui.RotationSpriteImageJPanel_Package;


