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

limited with org.allbinary.image.gui.ImageUnifierJPanel_Package;
package org.allbinary.image.gui.ImageUnifierJPanel_Package_References is
   type ImageUnifierJPanel_Access is access all org.allbinary.image.gui.ImageUnifierJPanel_Package.ImageUnifierJPanel'Class;
   type ImageUnifierJPanel_Access_Array is array (Natural range <>) of ImageUnifierJPanel_Access;
   type ImageUnifierJPanel_Access_Array_Access is access all ImageUnifierJPanel_Access_Array;
   type ImageUnifierJPanel_Access_Array_Access_Array is array (Natural range <>) of ImageUnifierJPanel_Access_Array_Access;
   type ImageUnifierJPanel_Access_Array_Access_Array_Access is access all ImageUnifierJPanel_Access_Array_Access_Array;
end org.allbinary.image.gui.ImageUnifierJPanel_Package_References;

with org.allbinary.image.gui.ImageUnifierJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
limited with org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
limited with org.allbinary.media.image.ImageUnifierProperties_Package;
with org.allbinary.media.image.ImageUnifierProperties_Package_References;
limited with org.allbinary.media.image.ImagesRatioUtil_Package;
with org.allbinary.media.image.ImagesRatioUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;
limited with org.allbinary.image.gui.ImageIconUnique_Package;
with org.allbinary.image.gui.ImageIconUnique_Package_References;
limited with org.allbinary.image.gui.JLabel_Package;
with org.allbinary.image.gui.JLabel_Package_References;

package org.allbinary.image.gui.ImageUnifierJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
   package ImageStrings_Package renames Standard.org.allbinary.media.image.ImageStrings_Package;
   package ImageUnifierProperties_Package renames Standard.org.allbinary.media.image.ImageUnifierProperties_Package;
   package ImagesRatioUtil_Package renames Standard.org.allbinary.media.image.ImagesRatioUtil_Package;
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
   subtype ImageUnifierProperties_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access;
   use type ImageUnifierProperties_Access;
   subtype ImageUnifierProperties_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array;
   use type ImageUnifierProperties_Access_Array;
   subtype ImageUnifierProperties_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access;
   use type ImageUnifierProperties_Access_Array_Access;
   subtype ImageUnifierProperties_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array;
   use type ImageUnifierProperties_Access_Array_Access_Array;
   subtype ImageUnifierProperties_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array_Access;
   use type ImageUnifierProperties_Access_Array_Access_Array_Access;
   subtype ImagesRatioUtil_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access;
   use type ImagesRatioUtil_Access;
   subtype ImagesRatioUtil_Access_Array is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array;
   use type ImagesRatioUtil_Access_Array;
   subtype ImagesRatioUtil_Access_Array_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access;
   use type ImagesRatioUtil_Access_Array_Access;
   subtype ImagesRatioUtil_Access_Array_Access_Array is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access_Array;
   use type ImagesRatioUtil_Access_Array_Access_Array;
   subtype ImagesRatioUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access_Array_Access;
   use type ImagesRatioUtil_Access_Array_Access_Array_Access;
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
   subtype ImageIconUnique_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access;
   use type ImageIconUnique_Access;
   subtype ImageIconUnique_Access_Array is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array;
   use type ImageIconUnique_Access_Array;
   subtype ImageIconUnique_Access_Array_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access;
   use type ImageIconUnique_Access_Array_Access;
   subtype ImageIconUnique_Access_Array_Access_Array is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access_Array;
   use type ImageIconUnique_Access_Array_Access_Array;
   subtype ImageIconUnique_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access_Array_Access;
   use type ImageIconUnique_Access_Array_Access_Array_Access;
   subtype JLabel_Access is org.allbinary.image.gui.JLabel_Package_References.JLabel_Access;
   use type JLabel_Access;
   subtype JLabel_Access_Array is org.allbinary.image.gui.JLabel_Package_References.JLabel_Access_Array;
   use type JLabel_Access_Array;
   subtype JLabel_Access_Array_Access is org.allbinary.image.gui.JLabel_Package_References.JLabel_Access_Array_Access;
   use type JLabel_Access_Array_Access;
   subtype JLabel_Access_Array_Access_Array is org.allbinary.image.gui.JLabel_Package_References.JLabel_Access_Array_Access_Array;
   use type JLabel_Access_Array_Access_Array;
   subtype JLabel_Access_Array_Access_Array_Access is org.allbinary.image.gui.JLabel_Package_References.JLabel_Access_Array_Access_Array_Access;
   use type JLabel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageUnifierJPanel_Access is org.allbinary.image.gui.ImageUnifierJPanel_Package_References.ImageUnifierJPanel_Access;
   function "=" (Left, Right : ImageUnifierJPanel_Access) return Boolean renames org.allbinary.image.gui.ImageUnifierJPanel_Package_References."=";
   subtype ImageUnifierJPanel_Access_Array is org.allbinary.image.gui.ImageUnifierJPanel_Package_References.ImageUnifierJPanel_Access_Array;
   function "=" (Left, Right : ImageUnifierJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.ImageUnifierJPanel_Package_References."=";
   subtype ImageUnifierJPanel_Access_Array_Access is org.allbinary.image.gui.ImageUnifierJPanel_Package_References.ImageUnifierJPanel_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageUnifierJPanel_Package_References."=";
   subtype ImageUnifierJPanel_Access_Array_Access_Array is org.allbinary.image.gui.ImageUnifierJPanel_Package_References.ImageUnifierJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUnifierJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ImageUnifierJPanel_Package_References."=";
   subtype ImageUnifierJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageUnifierJPanel_Package_References.ImageUnifierJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageUnifierJPanel_Package_References."=";

   type ImageUnifierJPanel is new JPanel and ImageProcessorInputCompositeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageStrings : ImageStrings_Access;
      imagesRatioUtil : ImagesRatioUtil_Access;
      imageProcessorInput : ImageProcessorInput_Access;
      icon : ImageIconUnique_Access_Array_Access;
      imageUnifierProperties : ImageUnifierProperties_Access;
      result : BufferedImage_Access;
      isImageFillIn : Boolean;
      avgRatioJTextField : JTextField_Access;
      cellHeightJTextField : JTextField_Access;
      cellRatioJTextField : JTextField_Access;
      cellWidthJTextField : JTextField_Access;
      columnsJTextField : JTextField_Access;
      downJButton : JButton_Access;
      fudgeItJButton : JButton_Access;
      imageJList : JList_Access;
      jButton1 : JButton_Access;
      jButton2 : JButton_Access;
      jButtonOrder : JButton_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jLabel4 : JLabel_Access;
      jLabel5 : JLabel_Access;
      jLabel6 : JLabel_Access;
      jPanel1 : JPanel_Access;
      jScrollPane1 : JScrollPane_Access;
      jScrollPane2 : JScrollPane_Access;
      rowsJTextField : JTextField_Access;
      upJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out ImageUnifierJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);
   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return ImageUnifierJPanel_Access;
   procedure init (This : in out ImageUnifierJPanel);
   procedure updateImage (This : in out ImageUnifierJPanel);
   procedure updateImageWithFudgedImages (This : in out ImageUnifierJPanel);
   procedure updateImage (This : in out ImageUnifierJPanel; tempBufferedImageArray : BufferedImage_Access_Array_Access);
   procedure updateOnPropertiesChange (This : in out ImageUnifierJPanel);
   procedure initComponents (This : in out ImageUnifierJPanel);
   procedure jButton2ActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure columnsJTextFieldKeyPressed (This : in out ImageUnifierJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure columnsJTextFieldKeyTyped (This : in out ImageUnifierJPanel; evt_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure columnsJTextFieldPropertyChange (This : in out ImageUnifierJPanel; evt_Param : access PropertyChangeEvent_Package.PropertyChangeEvent'Class);
   procedure fudgeItJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure cellHeightJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure cellWidthJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure columnsJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure rowsJTextFieldActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure jButton1ActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure downJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure upJButtonActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure jButtonOrderActionPerformed (This : in out ImageUnifierJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   function getImageProcessorInput (This : in out ImageUnifierJPanel) return ImageProcessorInput_Access;
   procedure setImageProcessorInput (This : in out ImageUnifierJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class);

end org.allbinary.image.gui.ImageUnifierJPanel_Package;


