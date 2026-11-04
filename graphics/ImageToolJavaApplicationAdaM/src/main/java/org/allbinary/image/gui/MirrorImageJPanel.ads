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

limited with org.allbinary.image.gui.MirrorImageJPanel_Package;
package org.allbinary.image.gui.MirrorImageJPanel_Package_References is
   type MirrorImageJPanel_Access is access all org.allbinary.image.gui.MirrorImageJPanel_Package.MirrorImageJPanel'Class;
   type MirrorImageJPanel_Access_Array is array (Natural range <>) of MirrorImageJPanel_Access;
   type MirrorImageJPanel_Access_Array_Access is access all MirrorImageJPanel_Access_Array;
   type MirrorImageJPanel_Access_Array_Access_Array is array (Natural range <>) of MirrorImageJPanel_Access_Array_Access;
   type MirrorImageJPanel_Access_Array_Access_Array_Access is access all MirrorImageJPanel_Access_Array_Access_Array;
end org.allbinary.image.gui.MirrorImageJPanel_Package_References;

with org.allbinary.image.gui.MirrorImageJPanel_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
limited with org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.MirrorImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
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


   subtype MirrorImageJPanel_Access is org.allbinary.image.gui.MirrorImageJPanel_Package_References.MirrorImageJPanel_Access;
   function "=" (Left, Right : MirrorImageJPanel_Access) return Boolean renames org.allbinary.image.gui.MirrorImageJPanel_Package_References."=";
   subtype MirrorImageJPanel_Access_Array is org.allbinary.image.gui.MirrorImageJPanel_Package_References.MirrorImageJPanel_Access_Array;
   function "=" (Left, Right : MirrorImageJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.MirrorImageJPanel_Package_References."=";
   subtype MirrorImageJPanel_Access_Array_Access is org.allbinary.image.gui.MirrorImageJPanel_Package_References.MirrorImageJPanel_Access_Array_Access;
   function "=" (Left, Right : MirrorImageJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.MirrorImageJPanel_Package_References."=";
   subtype MirrorImageJPanel_Access_Array_Access_Array is org.allbinary.image.gui.MirrorImageJPanel_Package_References.MirrorImageJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : MirrorImageJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.MirrorImageJPanel_Package_References."=";
   subtype MirrorImageJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.MirrorImageJPanel_Package_References.MirrorImageJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MirrorImageJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.MirrorImageJPanel_Package_References."=";

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

   procedure Initialize (This : in out MirrorImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return MirrorImageJPanel_Access;
   procedure process (This : in out MirrorImageJPanel);
   procedure initComponents (This : in out MirrorImageJPanel);
   procedure generateJButtonActionPerformed (This : in out MirrorImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure renameJRadioButtonActionPerformed (This : in out MirrorImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   function getImageProcessorInput (This : in out MirrorImageJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out MirrorImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);

end org.allbinary.image.gui.MirrorImageJPanel_Package;


