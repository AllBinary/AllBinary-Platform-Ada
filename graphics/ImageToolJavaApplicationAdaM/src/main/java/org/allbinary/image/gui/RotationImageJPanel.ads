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

limited with org.allbinary.image.gui.RotationImageJPanel_Package;
package org.allbinary.image.gui.RotationImageJPanel_Package_References is
   type RotationImageJPanel_Access is access all org.allbinary.image.gui.RotationImageJPanel_Package.RotationImageJPanel'Class;
   type RotationImageJPanel_Access_Array is array (Natural range <>) of RotationImageJPanel_Access;
   type RotationImageJPanel_Access_Array_Access is access all RotationImageJPanel_Access_Array;
   type RotationImageJPanel_Access_Array_Access_Array is array (Natural range <>) of RotationImageJPanel_Access_Array_Access;
   type RotationImageJPanel_Access_Array_Access_Array_Access is access all RotationImageJPanel_Access_Array_Access_Array;
end org.allbinary.image.gui.RotationImageJPanel_Package_References;

with org.allbinary.image.gui.RotationImageJPanel_Package_References;
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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
limited with org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.RotationImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessedVisitor_Package renames Standard.org.allbinary.media.image.ImageProcessedVisitor_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageStrings_Package renames Standard.org.allbinary.media.image.ImageStrings_Package;
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
   subtype ImageStrings_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access;
   use type ImageStrings_Access;
   subtype ImageStrings_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array;
   use type ImageStrings_Access_Array;
   subtype ImageStrings_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access;
   use type ImageStrings_Access_Array_Access;
   subtype ImageStrings_Access_Array_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array;
   use type ImageStrings_Access_Array_Access_Array;
   subtype ImageStrings_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array_Access;
   use type ImageStrings_Access_Array_Access_Array_Access;
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


   subtype RotationImageJPanel_Access is org.allbinary.image.gui.RotationImageJPanel_Package_References.RotationImageJPanel_Access;
   function "=" (Left, Right : RotationImageJPanel_Access) return Boolean renames org.allbinary.image.gui.RotationImageJPanel_Package_References."=";
   subtype RotationImageJPanel_Access_Array is org.allbinary.image.gui.RotationImageJPanel_Package_References.RotationImageJPanel_Access_Array;
   function "=" (Left, Right : RotationImageJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.RotationImageJPanel_Package_References."=";
   subtype RotationImageJPanel_Access_Array_Access is org.allbinary.image.gui.RotationImageJPanel_Package_References.RotationImageJPanel_Access_Array_Access;
   function "=" (Left, Right : RotationImageJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.RotationImageJPanel_Package_References."=";
   subtype RotationImageJPanel_Access_Array_Access_Array is org.allbinary.image.gui.RotationImageJPanel_Package_References.RotationImageJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : RotationImageJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.RotationImageJPanel_Package_References."=";
   subtype RotationImageJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.RotationImageJPanel_Package_References.RotationImageJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationImageJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.RotationImageJPanel_Package_References."=";

   type RotationImageJPanel is new JPanel and ImageProcessedVisitor with record
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
      writeOverOriginalJCheckBox : JCheckBox_Access;
   end record;

   procedure Initialize (This : in out RotationImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return RotationImageJPanel_Access;
   procedure process (This : in out RotationImageJPanel);
   procedure initComponents (This : in out RotationImageJPanel);
   procedure generateJButtonActionPerformed (This : in out RotationImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure totalAngleJComboBoxActionPerformed (This : in out RotationImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   function getImageProcessorInput (This : in out RotationImageJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out RotationImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   procedure visit (This : in out RotationImageJPanel; generatedBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; name : Unbounded_String; index : Integer);

end org.allbinary.image.gui.RotationImageJPanel_Package;


