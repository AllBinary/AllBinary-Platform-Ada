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
with org.allbinary.media.image.CanvasExpandUtil_Package; use org.allbinary.media.image.CanvasExpandUtil_Package;
with org.allbinary.media.image.CanvasTrimUtil_Package; use org.allbinary.media.image.CanvasTrimUtil_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.CanvasImageJPanel_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CanvasExpandUtil_Package renames org.allbinary.media.image.CanvasExpandUtil_Package;
   package CanvasTrimUtil_Package renames org.allbinary.media.image.CanvasTrimUtil_Package;
   package ImageProcessedVisitor_Package renames org.allbinary.media.image.ImageProcessedVisitor_Package;
   package ImageProcessorInput_Package renames org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageStrings_Package renames org.allbinary.media.image.ImageStrings_Package;
   package CommonPhoneStrings_Package renames org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CanvasImageJPanel is tagged;
   type CanvasImageJPanel_Access is access all CanvasImageJPanel'Class;
   type CanvasImageJPanel_Access_Array is array (Natural range <>) of CanvasImageJPanel_Access;
   type CanvasImageJPanel_Access_Array_Access is access all CanvasImageJPanel_Access_Array;

   type CanvasImageJPanel is new JPanel and ImageProcessedVisitor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      imageStrings : ImageStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      result : BufferedImage_Access;
      generateJButton : JButton_Access;
      heightReductionTextField : JTextField_Access;
      heightReductionTextField1 : JTextField_Access;
      jLabel4 : JLabel_Access;
      jLabel5 : JLabel_Access;
      jLabel6 : JLabel_Access;
      jLabel7 : JLabel_Access;
      jLabel8 : JLabel_Access;
      jPanel1 : JPanel_Access;
      jPanel2 : JPanel_Access;
      widthReductionTextField : JTextField_Access;
      widthReductionTextField1 : JTextField_Access;
      writeOverOriginalJCheckBox : JCheckBox_Access;
   end record;

   procedure Initialize (This : in out CanvasImageJPanel'Class; imageProcessorInput : ImageProcessorInput_Access);
   function Create (imageProcessorInput : ImageProcessorInput_Access) return CanvasImageJPanel_Access;
   procedure process (This : in out CanvasImageJPanel);
   procedure initComponents (This : in out CanvasImageJPanel);
   procedure writeOverOriginalJCheckBoxActionPerformed (This : in out CanvasImageJPanel; evt : ActionEvent_Access);
   procedure generateJButtonActionPerformed (This : in out CanvasImageJPanel; evt : ActionEvent_Access);
   procedure widthReductionTextFieldActionPerformed (This : in out CanvasImageJPanel; evt : ActionEvent_Access);
   procedure widthReductionTextField1ActionPerformed (This : in out CanvasImageJPanel; evt : ActionEvent_Access);
   function getImageProcessorInput (This : in out CanvasImageJPanel) return ImageProcessorInput_Access;
   procedure getImageProcessorInput (This : in out CanvasImageJPanel);
   procedure setImageProcessorInput (This : in out CanvasImageJPanel; imageProcessorInput : ImageProcessorInput_Access);
   procedure visit (This : in out CanvasImageJPanel; generatedBufferedImage : BufferedImage_Access; name : Unbounded_String; index : Integer);

end org.allbinary.image.gui.CanvasImageJPanel_Package;


