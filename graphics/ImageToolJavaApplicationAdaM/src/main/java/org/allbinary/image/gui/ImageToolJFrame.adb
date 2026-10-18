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


with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ImageAnalysis_Package; use org.allbinary.media.image.analysis.ImageAnalysis_Package;
with org.allbinary.media.image.analysis.ImageAnalysisResults_Package; use org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.image.gui.ImageUnifierJPanel_Package; use org.allbinary.image.gui.ImageUnifierJPanel_Package;
with org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package; use org.allbinary.image.gui.ImageAnalysisResultsJPanel_Package;
with org.allbinary.image.gui.RotationSpriteImageJPanel_Package; use org.allbinary.image.gui.RotationSpriteImageJPanel_Package;
with org.allbinary.image.gui.SpriteSplitterImageJPanel_Package; use org.allbinary.image.gui.SpriteSplitterImageJPanel_Package;
with org.allbinary.image.gui.RotationImageJPanel_Package; use org.allbinary.image.gui.RotationImageJPanel_Package;
with org.allbinary.image.gui.ResizeImageJPanel_Package; use org.allbinary.image.gui.ResizeImageJPanel_Package;
with org.allbinary.image.gui.CreateIconImagesJPanel_Package; use org.allbinary.image.gui.CreateIconImagesJPanel_Package;
with org.allbinary.image.gui.CanvasImageJPanel_Package; use org.allbinary.image.gui.CanvasImageJPanel_Package;
with org.allbinary.image.gui.MirrorSpriteImageJPanel_Package; use org.allbinary.image.gui.MirrorSpriteImageJPanel_Package;
with org.allbinary.image.gui.MirrorImageJPanel_Package; use org.allbinary.image.gui.MirrorImageJPanel_Package;

package body org.allbinary.image.gui.ImageToolJFrame_Package is

   package ColorRange_Package renames Standard.org.allbinary.media.image.analysis.ColorRange_Package;
   package ImageAnalysis_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysis_Package;
   package ImageAnalysisResults_Package renames Standard.org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out ImageToolJFrame'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.imageProcessorInput := null;
      This.analysisActionJDialog := null;
      This.analyzeJMenuItem := null;
      This.blueJLabel := null;
      This.colorRangeJLabel := null;
      This.createStripImageJMenuItem := null;
      This.fileJMenu := null;
      This.generateSpriteSplitterMenuItem := null;
      This.generateRotationMenuItem := null;
      This.generateMirrorSpriteMenuItem := null;
      This.generateRotationSpriteJMenuItem := null;
      This.greenJLabel := null;
      This.jPanel1 := null;
      This.mainJMenuBar := null;
      This.maxBlueJTextField := null;
      This.maxGreenJTextField := null;
      This.maxJLabel := null;
      This.maxRedJTextField := null;
      This.minBlueJTextField := null;
      This.minGreenJTextField := null;
      This.minJLabel := null;
      This.minRedJTextField := null;
      This.mirrorJMenuItem := null;
      This.okJButton := null;
      This.openImageJMenuItem := null;
      This.processingJMenu := null;
      This.redJLabel := null;
      This.scaleImagesJMenuItem := null;
      This.canvasImagesJMenuItem := null;
      This.createIconImagesJMenuItem := null;
      This.titleJLabel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageToolJFrame'Class) is
      commonPhoneStrings : CommonPhoneStrings_Access;
   begin
      JFrame_Package.Initialize (This);
      Initialize_Fields (This);
        ImageToolJFrame'Class (This).initComponents;
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        ImageToolJFrame'Class (This).setSize (640, 480);
        ImageToolJFrame'Class (This).getMaxRedJTextField.setText (To_Unbounded_String ("255"));
        ImageToolJFrame'Class (This).getMaxGreenJTextField.setText (To_Unbounded_String ("255"));
        ImageToolJFrame'Class (This).getMaxBlueJTextField.setText (To_Unbounded_String ("255"));
        ImageToolJFrame'Class (This).getMinRedJTextField.setText (commonPhoneStrings.ZERO);
        ImageToolJFrame'Class (This).getMinGreenJTextField.setText (commonPhoneStrings.ZERO);
        ImageToolJFrame'Class (This).getMinBlueJTextField.setText (commonPhoneStrings.ZERO);
        This.fileJDialog := FileJDialog_Package.Create;
        This.fileJDialog.addFinishedListener (ImageToolJFrame_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return ImageToolJFrame_Access is
      This : constant ImageToolJFrame_Access := new ImageToolJFrame;
   begin
      ImageToolJFrame_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out ImageToolJFrame) is
      analysisActionJDialogLayout : GroupLayout_Access;
   begin
        This.analysisActionJDialog := JDialog_Package.Create;
        This.titleJLabel := JLabel_Package.Create;
        This.colorRangeJLabel := JLabel_Package.Create;
        This.redJLabel := JLabel_Package.Create;
        This.minJLabel := JLabel_Package.Create;
        This.maxJLabel := JLabel_Package.Create;
        This.greenJLabel := JLabel_Package.Create;
        This.blueJLabel := JLabel_Package.Create;
        This.minRedJTextField := JTextField_Package.Create;
        This.maxRedJTextField := JTextField_Package.Create;
        This.maxGreenJTextField := JTextField_Package.Create;
        This.minBlueJTextField := JTextField_Package.Create;
        This.maxBlueJTextField := JTextField_Package.Create;
        This.okJButton := JButton_Package.Create;
        This.minGreenJTextField := JTextField_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.mainJMenuBar := JMenuBar_Package.Create;
        This.fileJMenu := JMenu_Package.Create;
        This.openImageJMenuItem := JMenuItem_Package.Create;
        This.processingJMenu := JMenu_Package.Create;
        This.analyzeJMenuItem := JMenuItem_Package.Create;
        This.generateSpriteSplitterMenuItem := JMenuItem_Package.Create;
        This.generateRotationMenuItem := JMenuItem_Package.Create;
        This.generateMirrorSpriteMenuItem := JMenuItem_Package.Create;
        This.generateRotationSpriteJMenuItem := JMenuItem_Package.Create;
        This.createStripImageJMenuItem := JMenuItem_Package.Create;
        This.mirrorJMenuItem := JMenuItem_Package.Create;
        This.scaleImagesJMenuItem := JMenuItem_Package.Create;
        This.canvasImagesJMenuItem := JMenuItem_Package.Create;
        This.createIconImagesJMenuItem := JMenuItem_Package.Create;
        This.analysisActionJDialog.setMinimumSize (Dimension_Package.Create (350, 250));
        This.titleJLabel.setText (To_Unbounded_String ("              Color At Action Options            "));
        This.colorRangeJLabel.setText (To_Unbounded_String ("Color Range"));
        This.redJLabel.setText (To_Unbounded_String ("Red:"));
        This.minJLabel.setText (To_Unbounded_String ("Minimum"));
        This.maxJLabel.setText (To_Unbounded_String ("Maximum"));
        This.greenJLabel.setText (To_Unbounded_String ("Green:"));
        This.blueJLabel.setText (To_Unbounded_String ("Blue:"));
        This.okJButton.setText (To_Unbounded_String ("OK"));
        This.okJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).okJButtonActionPerformed (evt);
--     end actionPerformed;
);
        analysisActionJDialogLayout := GroupLayout_Package.Create (This.analysisActionJDialog.getContentPane);
        This.analysisActionJDialog.getContentPane.setLayout (analysisActionJDialogLayout);
        analysisActionJDialogLayout.setHorizontalGroup (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (analysisActionJDialogLayout.createSequentialGroup.addContainerGap.add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (analysisActionJDialogLayout.createSequentialGroup.add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (This.blueJLabel).add (This.greenJLabel).add (This.redJLabel).add (This.colorRangeJLabel)).add (29, 29, 29).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, This.minJLabel, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 58, Short_Integer'Last).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING, False).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.minBlueJTextField).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.minGreenJTextField).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.minRedJTextField, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 42, Short_Integer'Last).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.okJButton))).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING).add (org_Package.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup.add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING, False).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.maxRedJTextField).add (org_Package.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup.add (1, 1, 1).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (This.maxBlueJTextField).add (This.maxGreenJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 43, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED, 17, Short_Integer'Last)).add (org_Package.jdesktop.layout.GroupLayout.LEADING, This.maxJLabel, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 61, Short_Integer'Last)).addContainerGap).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, analysisActionJDialogLayout.createSequentialGroup.add (This.titleJLabel).add (25, 25, 25)))));
        analysisActionJDialogLayout.setVerticalGroup (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (analysisActionJDialogLayout.createSequentialGroup.add (This.titleJLabel).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.minJLabel).add (This.colorRangeJLabel).add (This.maxJLabel)).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING).add (This.redJLabel).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.minRedJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.maxRedJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING).add (This.greenJLabel).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.minGreenJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.maxGreenJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.TRAILING).add (This.blueJLabel).add (analysisActionJDialogLayout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.minBlueJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.maxBlueJTextField, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).add (16, 16, 16).add (This.okJButton).addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
        ImageToolJFrame'Class (This).setDefaultCloseOperation (javax_Package.swing.WindowConstants.EXIT_ON_CLOSE);
        ImageToolJFrame'Class (This).getContentPane.setLayout (GridLayout_Package.Create (1, 0));
        This.jPanel1.setLayout (GridLayout_Package.Create (1, 0));
        ImageToolJFrame'Class (This).getContentPane.add (This.jPanel1);
        This.fileJMenu.setText (To_Unbounded_String ("File"));
        This.fileJMenu.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).fileJMenuActionPerformed (evt);
--     end actionPerformed;
);
        This.openImageJMenuItem.setText (To_Unbounded_String ("Open"));
        This.openImageJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).openImageJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.fileJMenu.add (This.openImageJMenuItem);
        This.mainJMenuBar.add (This.fileJMenu);
        This.processingJMenu.setText (To_Unbounded_String ("Processing"));
        This.processingJMenu.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).processingJMenuActionPerformed (evt);
--     end actionPerformed;
);
        This.analyzeJMenuItem.setText (To_Unbounded_String ("Image Analyze"));
        This.analyzeJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).analyzeJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.analyzeJMenuItem);
        This.generateMirrorSpriteMenuItem.setText (To_Unbounded_String ("Mirror Sprite Generator"));
        This.generateMirrorSpriteMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).generateMirrorSpriteMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.generateMirrorSpriteMenuItem);
        This.generateRotationSpriteJMenuItem.setText (To_Unbounded_String ("Rotation Sprite Generator"));
        This.generateRotationSpriteJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).generateRotationSpriteJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.generateRotationSpriteJMenuItem);
        This.generateSpriteSplitterMenuItem.setText (To_Unbounded_String ("Sprite Splitter Generator"));
        This.generateSpriteSplitterMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).generateSpriteSplitterMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.generateSpriteSplitterMenuItem);
        This.generateRotationMenuItem.setText (To_Unbounded_String ("Rotate Image Generator"));
        This.generateRotationMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).generateRotationMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.generateRotationMenuItem);
        This.createStripImageJMenuItem.setText (To_Unbounded_String ("Multi Image Unifier"));
        This.createStripImageJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).createStripImageJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.createStripImageJMenuItem);
        This.mirrorJMenuItem.setText (To_Unbounded_String ("Mirror Image(s)"));
        This.mirrorJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).mirrorJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.mirrorJMenuItem);
        This.scaleImagesJMenuItem.setText (To_Unbounded_String ("Scale Image(s)"));
        This.scaleImagesJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).scaleImagesJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.scaleImagesJMenuItem);
        This.canvasImagesJMenuItem.setText (To_Unbounded_String ("Canvas Image(s)"));
        This.canvasImagesJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).canvasImagesJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.canvasImagesJMenuItem);
        This.createIconImagesJMenuItem.setText (To_Unbounded_String ("Create Icon Image(s)"));
        This.createIconImagesJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ImageToolJFrame'Class (This).createIconsJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.createIconImagesJMenuItem);
        This.mainJMenuBar.add (This.processingJMenu);
        ImageToolJFrame'Class (This).setJMenuBar (This.mainJMenuBar);
        ImageToolJFrame'Class (This).pack;
   end initComponents;

   procedure createStripImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      imageUnifierJPanel : ImageUnifierJPanel_Access;
   begin
        begin
            imageUnifierJPanel := ImageUnifierJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (imageUnifierJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := imageUnifierJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("createStripImageJMenuItemActionPerformed"), e);
                end;
        end;
   end createStripImageJMenuItemActionPerformed;

   procedure okJButtonActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("okJButtonActionPerformed"));
            imageAnalysisResultsArray := ImageAnalysis_Package.getInstance.process (This.imageProcessorInput.getBufferedImageArray, ImageToolJFrame'Class (This).getColorRangeInterface);
            This.jPanel1.removeAll;
            This.jPanel1.add (ImageAnalysisResultsJPanel_Package.Create (imageAnalysisResultsArray));
            This.jPanel1.updateUI;
            This.analysisActionJDialog.setVisible (False);
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("okJButtonActionPerformed"), e);
                end;
        end;
   end okJButtonActionPerformed;

   procedure processingJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end processingJMenuActionPerformed;

   procedure openImageJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("openImageJMenuItemActionPerformed"));
            This.fileJDialog.setVisible (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("openImageJMenuItemActionPerformed"), e);
                end;
        end;
   end openImageJMenuItemActionPerformed;

   procedure onFiles (This : in out ImageToolJFrame; files : File_Access_Array_Access) is
      bufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Reading ") & Java_Image (files'Length) & To_Unbounded_String (" files."), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onFiles"));
            Arrays_Package.sort (files, Comparator_Package.Create  --  Java anonymous class body: implement it as a named type
--                  
--     function compare (This : in out ; file1_Param : access File_Package.File'Class; file2_Param : access File_Package.File'Class) return Integer is
--        file1 : constant File_Access := File_Access (file1_Param);
--        file2 : constant File_Access := File_Access (file2_Param);
--        fileNameIndexValue1 : Integer;
--        fileNameIndexValue2 : Integer;
--     begin
--                      fileNameIndexValue1 := ImageToolJFrame'Class (This).extractIndexNumberIfAnyFromFileName (file1.getName);
--                      fileNameIndexValue2 := ImageToolJFrame'Class (This).extractIndexNumberIfAnyFromFileName (file2.getName);
--                      return (fileNameIndexValue1) - (fileNameIndexValue2);
--          return 0;
--     end compare;
--                  
--     function extractIndexNumberIfAnyFromFileName (This : in out ; name : Unbounded_String) return Integer is
--        i : Integer;
--        start : Integer;
--        end_Id : Integer;
--        number : Unbounded_String;
--     begin
--                      i := 0;
--                      begin
--                          start := (Java_Last_Index_Of (name, Java_Image ('_'))) + (1);
--                          end_Id := Java_Last_Index_Of (name, Java_Image ('.'));
--                          number := Unbounded_Slice (name, (start) + 1, end_Id);
--                          i := Integer'Value (To_String (number));
--                      exception
--                          when Java_Occurrence : others =>
--                              declare
--                                  e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                              begin
--                          i := 0;
--                              end;
--                      end;
--                      return i;
--          return 0;
--     end extractIndexNumberIfAnyFromFileName;
);
            bufferedImageArray := new BufferedImage_Access_Array'(0 .. (files'Length) - 1 => null);
            for index in 0 .. (files'Length) - 1 loop
                bufferedImageArray (index) := ImageIO_Package.read (files (index));
                if (bufferedImageArray (index)) = (null) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to read file: ") & Java_Image (files (index).getPath)));
                end if;
            end loop;
            This.imageProcessorInput := ImageProcessorInput_Package.Create (files, bufferedImageArray);
            This.fileJDialog.setVisible (False);
            if (ImageToolJFrame_Package.imageProcessorInputCompositeInterface) /= (null) then
                ImageToolJFrame_Package.imageProcessorInputCompositeInterface.setImageProcessorInput (This.imageProcessorInput);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onFiles"), e);
                end;
        end;
   end onFiles;

   procedure fileJMenuActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end fileJMenuActionPerformed;

   procedure analyzeJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("analyzeJMenuItemActionPerformed"));
            This.analysisActionJDialog.setVisible (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("analyzeJMenuItemActionPerformed"), e);
                end;
        end;
   end analyzeJMenuItemActionPerformed;

   procedure generateRotationSpriteJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      spriteImageJPanel : RotationSpriteImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationSpriteJMenuItemActionPerformed"));
            spriteImageJPanel := RotationSpriteImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (spriteImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := spriteImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationSpriteJMenuItemActionPerformed"), e);
                end;
        end;
   end generateRotationSpriteJMenuItemActionPerformed;

   procedure generateSpriteSplitterMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      imageJPanel : SpriteSplitterImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationSpriteJMenuItemActionPerformed"));
            imageJPanel := SpriteSplitterImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (imageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := imageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationMenuItemActionPerformed"), e);
                end;
        end;
   end generateSpriteSplitterMenuItemActionPerformed;

   procedure generateRotationMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      rotationImageJPanel : RotationImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationSpriteJMenuItemActionPerformed"));
            rotationImageJPanel := RotationImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (rotationImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := rotationImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateRotationMenuItemActionPerformed"), e);
                end;
        end;
   end generateRotationMenuItemActionPerformed;

   procedure scaleImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      resizeImageJPanel : ResizeImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("scaleImagesJMenuItemActionPerformed"));
            resizeImageJPanel := ResizeImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (resizeImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := resizeImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("scaleImagesJMenuItemActionPerformed"), e);
                end;
        end;
   end scaleImagesJMenuItemActionPerformed;

   procedure createIconsJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      createIconImagesJPanel : CreateIconImagesJPanel_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("createIconsJMenuItemActionPerformed"));
            createIconImagesJPanel := CreateIconImagesJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (createIconImagesJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := createIconImagesJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("scaleImagesJMenuItemActionPerformed"), e);
                end;
        end;
   end createIconsJMenuItemActionPerformed;

   procedure canvasImagesJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      resizeImageJPanel : CanvasImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("canvasImagesJMenuItemActionPerformed"));
            resizeImageJPanel := CanvasImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (resizeImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := resizeImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("scaleImagesJMenuItemActionPerformed"), e);
                end;
        end;
   end canvasImagesJMenuItemActionPerformed;

   procedure generateMirrorSpriteMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      spriteImageJPanel : MirrorSpriteImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateMirrorSpriteJMenuItemActionPerformed"));
            spriteImageJPanel := MirrorSpriteImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (spriteImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := spriteImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateMirrorSpriteJMenuItemActionPerformed"), e);
                end;
        end;
   end generateMirrorSpriteMenuItemActionPerformed;

   procedure mirrorJMenuItemActionPerformed (This : in out ImageToolJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      mirrorImageJPanel : MirrorImageJPanel_Access;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateMirrorJMenuItemActionPerformed"));
            mirrorImageJPanel := MirrorImageJPanel_Package.Create (This.imageProcessorInput);
            This.jPanel1.removeAll;
            This.jPanel1.add (mirrorImageJPanel);
            This.jPanel1.updateUI;
            ImageToolJFrame_Package.imageProcessorInputCompositeInterface := mirrorImageJPanel;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageToolJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("generateMirrorJMenuItemActionPerformed"), e);
                end;
        end;
   end mirrorJMenuItemActionPerformed;

   function getColorRangeInterface (This : in out ImageToolJFrame) return ColorRangeInterface_Access is
      colorRangeInterface : ColorRangeInterface_Access;
   begin
        colorRangeInterface := ColorRangeInterface_Access (ColorRange_Package.Create);
        colorRangeInterface.setMinRed (ImageToolJFrame'Class (This).getMinRedJTextField.getText.intValue);
        colorRangeInterface.setMaxRed (ImageToolJFrame'Class (This).getMaxRedJTextField.getText.intValue);
        colorRangeInterface.setMinGreen (ImageToolJFrame'Class (This).getMinGreenJTextField.getText.intValue);
        colorRangeInterface.setMaxGreen (ImageToolJFrame'Class (This).getMaxGreenJTextField.getText.intValue);
        colorRangeInterface.setMinBlue (ImageToolJFrame'Class (This).getMinBlueJTextField.getText.intValue);
        colorRangeInterface.setMaxBlue (ImageToolJFrame'Class (This).getMaxBlueJTextField.getText.intValue);
        return colorRangeInterface;
   end getColorRangeInterface;

   function getMaxBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.maxBlueJTextField;
   end getMaxBlueJTextField;

   procedure setMaxBlueJTextField (This : in out ImageToolJFrame; maxBlueJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxBlueJTextField : constant JTextField_Access := JTextField_Access (maxBlueJTextField_Param);
   begin
        This.maxBlueJTextField := This.maxBlueJTextField;
   end setMaxBlueJTextField;

   function getMaxGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.maxGreenJTextField;
   end getMaxGreenJTextField;

   procedure setMaxGreenJTextField (This : in out ImageToolJFrame; maxGreenJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxGreenJTextField : constant JTextField_Access := JTextField_Access (maxGreenJTextField_Param);
   begin
        This.maxGreenJTextField := This.maxGreenJTextField;
   end setMaxGreenJTextField;

   function getMaxRedJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.maxRedJTextField;
   end getMaxRedJTextField;

   procedure setMaxRedJTextField (This : in out ImageToolJFrame; maxRedJTextField_Param : access JTextField_Package.JTextField'Class) is
      maxRedJTextField : constant JTextField_Access := JTextField_Access (maxRedJTextField_Param);
   begin
        This.maxRedJTextField := This.maxRedJTextField;
   end setMaxRedJTextField;

   function getMinBlueJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.minBlueJTextField;
   end getMinBlueJTextField;

   procedure setMinBlueJTextField (This : in out ImageToolJFrame; minBlueJTextField_Param : access JTextField_Package.JTextField'Class) is
      minBlueJTextField : constant JTextField_Access := JTextField_Access (minBlueJTextField_Param);
   begin
        This.minBlueJTextField := This.minBlueJTextField;
   end setMinBlueJTextField;

   function getMinGreenJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.minGreenJTextField;
   end getMinGreenJTextField;

   procedure setMinGreenJTextField (This : in out ImageToolJFrame; minGreenJTextField_Param : access JTextField_Package.JTextField'Class) is
      minGreenJTextField : constant JTextField_Access := JTextField_Access (minGreenJTextField_Param);
   begin
        This.minGreenJTextField := This.minGreenJTextField;
   end setMinGreenJTextField;

   function getMinRedJTextField (This : in out ImageToolJFrame) return JTextField_Access is
   begin
        return This.minRedJTextField;
   end getMinRedJTextField;

   procedure setMinRedJTextField (This : in out ImageToolJFrame; minRedJTextField_Param : access JTextField_Package.JTextField'Class) is
      minRedJTextField : constant JTextField_Access := JTextField_Access (minRedJTextField_Param);
   begin
        This.minRedJTextField := This.minRedJTextField;
   end setMinRedJTextField;

begin
   null;
   imageProcessorInputCompositeInterface := null;

end org.allbinary.image.gui.ImageToolJFrame_Package;


