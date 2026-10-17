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
--  with java.awt.image.Raster_Package; use java.awt.image.Raster_Package;
--  with java.io.File_Package; use java.io.File_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImagePersistanceUtil_Package; use org.allbinary.media.image.ImagePersistanceUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.CreateIconImagesJPanel_Package is

   package CanvasStrings_Package renames org.allbinary.graphics.displayable.CanvasStrings_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package ImagePersistanceUtil_Package renames org.allbinary.media.image.ImagePersistanceUtil_Package;
   package ImageProcessorInput_Package renames org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ImageUtil_Package renames org.allbinary.media.image.ImageUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type CreateIconImagesJPanel is tagged;
   type CreateIconImagesJPanel_Access is access all CreateIconImagesJPanel'Class;
   type CreateIconImagesJPanel_Access_Array is array (Natural range <>) of CreateIconImagesJPanel_Access;
   type CreateIconImagesJPanel_Access_Array_Access is access all CreateIconImagesJPanel_Access_Array;

   type CreateIconImagesJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      aboveJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out CreateIconImagesJPanel'Class; imageProcessorInput : ImageProcessorInput_Access);
   function Create (imageProcessorInput : ImageProcessorInput_Access) return CreateIconImagesJPanel_Access;
   procedure process (This : in out CreateIconImagesJPanel);
   function getImageProcessorInput (This : in out CreateIconImagesJPanel) return ImageProcessorInput_Access;
   procedure getImageProcessorInput (This : in out CreateIconImagesJPanel);
   procedure setImageProcessorInput (This : in out CreateIconImagesJPanel; imageProcessorInput : ImageProcessorInput_Access);
   procedure initComponents (This : in out CreateIconImagesJPanel);
   procedure aboveJButtonActionPerformed (This : in out CreateIconImagesJPanel; evt : ActionEvent_Access);

end org.allbinary.image.gui.CreateIconImagesJPanel_Package;


