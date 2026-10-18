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


package body org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package is

   procedure Initialize_Fields (This : in out ImageAnalysisResultsJPanel'Class) is
   begin
      null;
      This.avgBlueJTextField := null;
      This.avgGreenJTextField := null;
      This.avgRedJTextField := null;
      This.jComboBox1 := null;
      This.jLabel1 := null;
      This.jLabel10 := null;
      This.jLabel11 := null;
      This.jLabel12 := null;
      This.jLabel13 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jLabel4 := null;
      This.jLabel5 := null;
      This.jLabel6 := null;
      This.jLabel7 := null;
      This.jLabel8 := null;
      This.jLabel9 := null;
      This.matchingPixelsJTextField := null;
      This.maxBlueJTextField := null;
      This.maxGreenJTextField := null;
      This.maxRedJTextField := null;
      This.minBlueJTextField := null;
      This.minGreenJTextField := null;
      This.minRedJTextField := null;
      This.percentMatchingJTextField := null;
      This.totalPixelsJTextField := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnalysisResultsJPanel'Class; imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access) is
      imageAnalysisResults : ImageAnalysisResults_Access;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        ImageAnalysisResultsJPanel'Class (This).initComponents;
        imageAnalysisResults := imageAnalysisResultsArray (0);
        ImageAnalysisResultsJPanel'Class (This).updateImageColorRangeResults (imageAnalysisResults);
   end Initialize;

   function Create (imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access) return ImageAnalysisResultsJPanel_Access is
      This : constant ImageAnalysisResultsJPanel_Access := new ImageAnalysisResultsJPanel;
   begin
      ImageAnalysisResultsJPanel_Package.Initialize (This.all, imageAnalysisResultsArray);
      return This;
   end Create;

   procedure initComponents (This : in out ImageAnalysisResultsJPanel) is
      layout : GroupLayout_Access;
   begin
        This.jLabel1 := JLabel_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.percentMatchingJTextField := JTextField_Package.Create;
        This.totalPixelsJTextField := JTextField_Package.Create;
        This.matchingPixelsJTextField := JTextField_Package.Create;
        This.jComboBox1 := JComboBox_Package.Create;
        This.jLabel4 := JLabel_Package.Create;
        This.jLabel5 := JLabel_Package.Create;
        This.jLabel6 := JLabel_Package.Create;
        This.jLabel7 := JLabel_Package.Create;
        This.avgRedJTextField := JTextField_Package.Create;
        This.avgGreenJTextField := JTextField_Package.Create;
        This.avgBlueJTextField := JTextField_Package.Create;
        This.minGreenJTextField := JTextField_Package.Create;
        This.jLabel8 := JLabel_Package.Create;
        This.jLabel9 := JLabel_Package.Create;
        This.jLabel10 := JLabel_Package.Create;
        This.minRedJTextField := JTextField_Package.Create;
        This.minBlueJTextField := JTextField_Package.Create;
        This.jLabel11 := JLabel_Package.Create;
        This.jLabel12 := JLabel_Package.Create;
        This.jLabel13 := JLabel_Package.Create;
        This.maxRedJTextField := JTextField_Package.Create;
        This.maxGreenJTextField := JTextField_Package.Create;
        This.maxBlueJTextField := JTextField_Package.Create;
        This.jLabel1.setText (To_Unbounded_String ("Matching Pixels:"));
        This.jLabel2.setText (To_Unbounded_String ("Total Pixels:"));
        This.jLabel3.setText (To_Unbounded_String ("Percent Matching:"));
        This.percentMatchingJTextField.setEditable (False);
        This.totalPixelsJTextField.setEditable (False);
        This.matchingPixelsJTextField.setEditable (False);
        This.jComboBox1.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(0 => CommonPhoneStrings_Package.getInstance.ONE)));
        This.jComboBox1.setEnabled (False);
        This.jLabel4.setText (To_Unbounded_String ("Image:"));
        This.jLabel5.setText (To_Unbounded_String ("Average Red:"));
        This.jLabel6.setText (To_Unbounded_String ("Average Green:"));
        This.jLabel7.setText (To_Unbounded_String ("Average Blue:"));
        This.avgRedJTextField.setEditable (False);
        This.avgGreenJTextField.setEditable (False);
        This.avgBlueJTextField.setEditable (False);
        This.minGreenJTextField.setEditable (False);
        This.jLabel8.setText (To_Unbounded_String ("Min Red:"));
        This.jLabel9.setText (To_Unbounded_String ("Min Green:"));
        This.jLabel10.setText (To_Unbounded_String ("Min Blue:"));
        This.minRedJTextField.setEditable (False);
        This.minBlueJTextField.setEditable (False);
        This.jLabel11.setText (To_Unbounded_String ("Max Red:"));
        This.jLabel12.setText (To_Unbounded_String ("Max Green:"));
        This.jLabel13.setText (To_Unbounded_String ("Max Blue:"));
        This.maxRedJTextField.setEditable (False);
        This.maxGreenJTextField.setEditable (False);
        This.maxBlueJTextField.setEditable (False);
        layout := GroupLayout_Package.Create (ImageAnalysisResultsJPanel_Access'(This'Unchecked_Access));
        ImageAnalysisResultsJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel3).addComponent (This.jLabel2).addComponent (This.jLabel1).addComponent (This.jLabel5).addComponent (This.jLabel6).addComponent (This.jLabel7).addComponent (This.jLabel4)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jComboBox1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 81, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.avgBlueJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE).addComponent (This.avgGreenJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE).addComponent (This.avgRedJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE).addComponent (This.totalPixelsJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE).addComponent (This.percentMatchingJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE).addComponent (This.matchingPixelsJTextField, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 81, Short_Package.MAX_VALUE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel12).addComponent (This.jLabel13).addComponent (This.jLabel8).addComponent (This.jLabel9).addComponent (This.jLabel10).addComponent (This.jLabel11)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.minRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.maxGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.minGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.minBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.maxRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.maxBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 82, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap (18, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel4).addComponent (This.jComboBox1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.matchingPixelsJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel8).addComponent (This.minRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel2).addComponent (This.totalPixelsJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel9).addComponent (This.minGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel3).addComponent (This.percentMatchingJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel10).addComponent (This.minBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel5).addComponent (This.avgRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel11).addComponent (This.maxRedJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel6).addComponent (This.avgGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.maxGreenJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel12)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel7).addComponent (This.avgBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel13).addComponent (This.maxBlueJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE))));
   end initComponents;

   procedure updateImageColorRangeResults (This : in out ImageAnalysisResultsJPanel; imageAnalysisResults_Param : access ImageAnalysisResults_Package.ImageAnalysisResults'Class) is
      imageAnalysisResults : constant ImageAnalysisResults_Access := ImageAnalysisResults_Access (imageAnalysisResults_Param);
      imageColorRangeResults : ImageColorRangeResults_Access;
      imageColorResults : ImageColorResults_Access;
   begin
        imageColorRangeResults := imageAnalysisResults.getImageColorRangeResults;
        This.matchingPixelsJTextField.setText (imageColorRangeResults.getMatchingPixelsChecked.toString);
        This.totalPixelsJTextField.setText (imageColorRangeResults.getTotalPixelsChecked.toString);
        This.percentMatchingJTextField.setText (imageColorRangeResults.getPercent.toString);
        imageColorResults := imageAnalysisResults.getImageColorResults;
        This.avgRedJTextField.setText (imageColorResults.getColorAverage.getAvgRed.toString);
        This.avgGreenJTextField.setText (imageColorResults.getColorAverage.getAvgGreen.toString);
        This.avgBlueJTextField.setText (imageColorResults.getColorAverage.getAvgBlue.toString);
        This.minRedJTextField.setText (imageColorResults.getColorRange.getMinRed.toString);
        This.minGreenJTextField.setText (imageColorResults.getColorRange.getMinGreen.toString);
        This.minBlueJTextField.setText (imageColorResults.getColorRange.getMinBlue.toString);
        This.maxRedJTextField.setText (imageColorResults.getColorRange.getMaxRed.toString);
        This.maxGreenJTextField.setText (imageColorResults.getColorRange.getMaxGreen.toString);
        This.maxBlueJTextField.setText (imageColorResults.getColorRange.getMaxBlue.toString);
   end updateImageColorRangeResults;

end org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package;


