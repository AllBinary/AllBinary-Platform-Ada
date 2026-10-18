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
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.MirrorSpriteImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ImageStrings_Package renames Standard.org.allbinary.media.image.ImageStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type MirrorSpriteImageJPanel is tagged;
   type MirrorSpriteImageJPanel_Access is access all MirrorSpriteImageJPanel'Class;
   type MirrorSpriteImageJPanel_Access_Array is array (Natural range <>) of MirrorSpriteImageJPanel_Access;
   type MirrorSpriteImageJPanel_Access_Array_Access is access all MirrorSpriteImageJPanel_Access_Array;
   type MirrorSpriteImageJPanel_Access_Array_Access_Array is array (Natural range <>) of MirrorSpriteImageJPanel_Access_Array_Access;
   type MirrorSpriteImageJPanel_Access_Array_Access_Array_Access is access all MirrorSpriteImageJPanel_Access_Array_Access_Array;

   type MirrorSpriteImageJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageStrings : ImageStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      result : BufferedImage_Access;
      generateJButton : JButton_Access;
      horizontalJCheckBox : JCheckBox_Access;
      imageHeightIsFrameSizeJCheckBox : JCheckBox_Access;
      jLabel2 : JLabel_Access;
      jLayeredPane1 : JLayeredPane_Access;
      jPanel1 : JPanel_Access;
      jPanel2 : JPanel_Access;
      jPanel3 : JPanel_Access;
      verticleJCheckBox : JCheckBox_Access;
      writeOverOriginalJCheckBox : JCheckBox_Access;
   end record;

   procedure Initialize (This : in out MirrorSpriteImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return MirrorSpriteImageJPanel_Access;
   procedure process (This : in out MirrorSpriteImageJPanel);
   procedure initComponents (This : in out MirrorSpriteImageJPanel);
   procedure generateJButtonActionPerformed (This : in out MirrorSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure imageHeightIsFrameSizeJCheckBoxActionPerformed (This : in out MirrorSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   function getImageProcessorInput (This : in out MirrorSpriteImageJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out MirrorSpriteImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);

end org.allbinary.image.gui.MirrorSpriteImageJPanel_Package;


