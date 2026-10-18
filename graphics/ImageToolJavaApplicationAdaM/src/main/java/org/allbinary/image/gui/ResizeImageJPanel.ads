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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.ResizeImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ResizeImageJPanel is tagged;
   type ResizeImageJPanel_Access is access all ResizeImageJPanel'Class;
   type ResizeImageJPanel_Access_Array is array (Natural range <>) of ResizeImageJPanel_Access;
   type ResizeImageJPanel_Access_Array_Access is access all ResizeImageJPanel_Access_Array;
   type ResizeImageJPanel_Access_Array_Access_Array is array (Natural range <>) of ResizeImageJPanel_Access_Array_Access;
   type ResizeImageJPanel_Access_Array_Access_Array_Access is access all ResizeImageJPanel_Access_Array_Access_Array;

   type ResizeImageJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      aboveJButton : JButton_Access;
      adjustFor16AboveJButton : JButton_Access;
      adjustFor16BelowJButton : JButton_Access;
      floatPercentJTextField : JTextField_Access;
      jComboBox1 : JComboBox_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jTextField1 : JTextField_Access;
      jTextField2 : JTextField_Access;
      updateJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out ResizeImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return ResizeImageJPanel_Access;
   procedure process (This : in out ResizeImageJPanel);
   procedure update (This : in out ResizeImageJPanel);
   procedure updateFor16Above (This : in out ResizeImageJPanel);
   procedure updateFor16Below (This : in out ResizeImageJPanel);
   function getImageProcessorInput (This : in out ResizeImageJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out ResizeImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   procedure initComponents (This : in out ResizeImageJPanel);
   procedure aboveJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure updateJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure adjustFor16AboveJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure adjustFor16BelowJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.image.gui.ResizeImageJPanel_Package;


