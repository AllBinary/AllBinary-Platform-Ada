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
with org.allbinary.media.image.analysis.ImageAnalysisResults_Package; use org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
with org.allbinary.image.gui.JPanel_Package; use org.allbinary.image.gui.JPanel_Package;

package org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package is

   package ImageAnalysisResults_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysisResults_Package;

   type ImageAnalysisResultsJPanel is tagged;
   type ImageAnalysisResultsJPanel_Access is access all ImageAnalysisResultsJPanel'Class;
   type ImageAnalysisResultsJPanel_Access_Array is array (Natural range <>) of ImageAnalysisResultsJPanel_Access;
   type ImageAnalysisResultsJPanel_Access_Array_Access is access all ImageAnalysisResultsJPanel_Access_Array;
   type ImageAnalysisResultsJPanel_Access_Array_Access_Array is array (Natural range <>) of ImageAnalysisResultsJPanel_Access_Array_Access;
   type ImageAnalysisResultsJPanel_Access_Array_Access_Array_Access is access all ImageAnalysisResultsJPanel_Access_Array_Access_Array;

   type ImageAnalysisResultsJPanel is new JPanel with record
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


