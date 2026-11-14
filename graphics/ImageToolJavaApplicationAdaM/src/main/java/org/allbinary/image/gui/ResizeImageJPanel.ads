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

with AllBinary_Java;
limited with org.allbinary.image.gui.ResizeImageJPanel_Package;
package org.allbinary.image.gui.ResizeImageJPanel_Package_References is
   type ResizeImageJPanel_Access is access all org.allbinary.image.gui.ResizeImageJPanel_Package.ResizeImageJPanel'Class;
   type ResizeImageJPanel_Access_Array is array (Natural range <>) of ResizeImageJPanel_Access;
   type ResizeImageJPanel_Access_Array_Access is access all ResizeImageJPanel_Access_Array;
   type ResizeImageJPanel_Access_Array_Access_Array is array (Natural range <>) of ResizeImageJPanel_Access_Array_Access;
   type ResizeImageJPanel_Access_Array_Access_Array_Access is access all ResizeImageJPanel_Access_Array_Access_Array;
   type ResizeImageJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResizeImageJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : ResizeImageJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResizeImageJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResizeImageJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResizeImageJPanel_Access_Array_Access is (if Value /= null and then Value.all in ResizeImageJPanel_Access_Array_Object'Class then ResizeImageJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type ResizeImageJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResizeImageJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResizeImageJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResizeImageJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResizeImageJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResizeImageJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResizeImageJPanel_Access_Array_Access_Array_Object'Class then ResizeImageJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.gui.ResizeImageJPanel_Package_References;

with org.allbinary.image.gui.ResizeImageJPanel_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.DefaultComboBoxModel_Package; use javax.swing.DefaultComboBoxModel_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JComboBox_Package; use javax.swing.JComboBox_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;

package org.allbinary.image.gui.ResizeImageJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageProcessorInput_Package renames Standard.org.allbinary.media.image.ImageProcessorInput_Package;
   package ImageProcessorInputCompositeInterface_Package renames Standard.org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
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


   subtype ResizeImageJPanel_Access is org.allbinary.image.gui.ResizeImageJPanel_Package_References.ResizeImageJPanel_Access;
   function "=" (Left, Right : ResizeImageJPanel_Access) return Boolean renames org.allbinary.image.gui.ResizeImageJPanel_Package_References."=";
   subtype ResizeImageJPanel_Access_Array is org.allbinary.image.gui.ResizeImageJPanel_Package_References.ResizeImageJPanel_Access_Array;
   function "=" (Left, Right : ResizeImageJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.ResizeImageJPanel_Package_References."=";
   subtype ResizeImageJPanel_Access_Array_Access is org.allbinary.image.gui.ResizeImageJPanel_Package_References.ResizeImageJPanel_Access_Array_Access;
   function "=" (Left, Right : ResizeImageJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ResizeImageJPanel_Package_References."=";
   function Java_Box (Value : ResizeImageJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ResizeImageJPanel_Package_References.Java_Box;
   function Java_Unbox_ResizeImageJPanel_Access_Array (Value : access Java_Object'Class) return ResizeImageJPanel_Access_Array_Access renames org.allbinary.image.gui.ResizeImageJPanel_Package_References.Java_Unbox_ResizeImageJPanel_Access_Array;
   subtype ResizeImageJPanel_Access_Array_Access_Array is org.allbinary.image.gui.ResizeImageJPanel_Package_References.ResizeImageJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ResizeImageJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ResizeImageJPanel_Package_References."=";
   subtype ResizeImageJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.ResizeImageJPanel_Package_References.ResizeImageJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResizeImageJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ResizeImageJPanel_Package_References."=";
   function Java_Box (Value : ResizeImageJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ResizeImageJPanel_Package_References.Java_Box;
   function Java_Unbox_ResizeImageJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return ResizeImageJPanel_Access_Array_Access_Array_Access renames org.allbinary.image.gui.ResizeImageJPanel_Package_References.Java_Unbox_ResizeImageJPanel_Access_Array_Access_Array;

   type ResizeImageJPanel is new Java_Object and ImageProcessorInputCompositeInterface with record
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


