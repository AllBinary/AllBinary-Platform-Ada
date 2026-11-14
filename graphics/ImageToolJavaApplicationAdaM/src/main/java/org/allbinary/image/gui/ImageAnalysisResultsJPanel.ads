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

with AllBinary_Java;
limited with org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package;
package org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References is
   type ImageAnalysisResultsJPanel_Access is access all org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package.ImageAnalysisResultsJPanel'Class;
   type ImageAnalysisResultsJPanel_Access_Array is array (Natural range <>) of ImageAnalysisResultsJPanel_Access;
   type ImageAnalysisResultsJPanel_Access_Array_Access is access all ImageAnalysisResultsJPanel_Access_Array;
   type ImageAnalysisResultsJPanel_Access_Array_Access_Array is array (Natural range <>) of ImageAnalysisResultsJPanel_Access_Array_Access;
   type ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access is access all ImageAnalysisResultsJPanel_Access_Array_Access_Array;
   type ImageAnalysisResultsJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysisResultsJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysisResultsJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysisResultsJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysisResultsJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysisResultsJPanel_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysisResultsJPanel_Access_Array_Object'Class then ImageAnalysisResultsJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type ImageAnalysisResultsJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysisResultsJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysisResultsJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysisResultsJPanel_Access_Array_Access_Array_Object'Class then ImageAnalysisResultsJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References;

with org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
with org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References;
--  with javax.swing.DefaultComboBoxModel_Package; use javax.swing.DefaultComboBoxModel_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JComboBox_Package; use javax.swing.JComboBox_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;

package org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package is

   package ImageAnalysisResults_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
   package Reference_Types is
   subtype ImageAnalysisResults_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access;
   use type ImageAnalysisResults_Access;
   subtype ImageAnalysisResults_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array;
   use type ImageAnalysisResults_Access_Array;
   subtype ImageAnalysisResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access;
   use type ImageAnalysisResults_Access_Array_Access;
   subtype ImageAnalysisResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array;
   use type ImageAnalysisResults_Access_Array_Access_Array;
   subtype ImageAnalysisResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array_Access;
   use type ImageAnalysisResults_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageAnalysisResultsJPanel_Access is org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.ImageAnalysisResultsJPanel_Access;
   function "=" (Left, Right : ImageAnalysisResultsJPanel_Access) return Boolean renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References."=";
   subtype ImageAnalysisResultsJPanel_Access_Array is org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.ImageAnalysisResultsJPanel_Access_Array;
   function "=" (Left, Right : ImageAnalysisResultsJPanel_Access_Array) return Boolean renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References."=";
   subtype ImageAnalysisResultsJPanel_Access_Array_Access is org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.ImageAnalysisResultsJPanel_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysisResultsJPanel_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References."=";
   function Java_Box (Value : ImageAnalysisResultsJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysisResultsJPanel_Access_Array (Value : access Java_Object'Class) return ImageAnalysisResultsJPanel_Access_Array_Access renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.Java_Unbox_ImageAnalysisResultsJPanel_Access_Array;
   subtype ImageAnalysisResultsJPanel_Access_Array_Access_Array is org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.ImageAnalysisResultsJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ImageAnalysisResultsJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References."=";
   subtype ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References."=";
   function Java_Box (Value : ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysisResultsJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access renames org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package_References.Java_Unbox_ImageAnalysisResultsJPanel_Access_Array_Access_Array;

   type ImageAnalysisResultsJPanel is new Java_Object with record
      avgBlueJTextField : JTextField_Access;
      avgGreenJTextField : JTextField_Access;
      avgRedJTextField : JTextField_Access;
      jComboBox1 : JComboBox_Access;
      jLabel1 : JLabel_Access;
      jLabel10 : JLabel_Access;
      jLabel11 : JLabel_Access;
      jLabel12 : JLabel_Access;
      jLabel13 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jLabel4 : JLabel_Access;
      jLabel5 : JLabel_Access;
      jLabel6 : JLabel_Access;
      jLabel7 : JLabel_Access;
      jLabel8 : JLabel_Access;
      jLabel9 : JLabel_Access;
      matchingPixelsJTextField : JTextField_Access;
      maxBlueJTextField : JTextField_Access;
      maxGreenJTextField : JTextField_Access;
      maxRedJTextField : JTextField_Access;
      minBlueJTextField : JTextField_Access;
      minGreenJTextField : JTextField_Access;
      minRedJTextField : JTextField_Access;
      percentMatchingJTextField : JTextField_Access;
      totalPixelsJTextField : JTextField_Access;
   end record;

   procedure Initialize (This : in out ImageAnalysisResultsJPanel'Class; imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access);
   function Create (imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access) return ImageAnalysisResultsJPanel_Access;
   procedure initComponents (This : in out ImageAnalysisResultsJPanel);
   procedure updateImageColorRangeResults (This : in out ImageAnalysisResultsJPanel; imageAnalysisResults_Param : access ImageAnalysisResults_Package.ImageAnalysisResults'Class);

end org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package;


