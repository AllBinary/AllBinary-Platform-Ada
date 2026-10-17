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


package body org.allbinary.image.gui.SpriteSplitterImageJPanel_Package is

   procedure Initialize_Fields (This : in out SpriteSplitterImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.imageStrings := ImageStrings_Package.getInstance;
      
      This.result := null;
      This.generateJButton := null;
      This.heightReductionTextField := null;
      This.increaseHeightTextField := null;
      This.increaseWidthTextField := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jLabel4 := null;
      This.jLabel5 := null;
      This.jLabel6 := null;
      This.jLabel7 := null;
      This.jLabel8 := null;
      This.jPanel1 := null;
      This.jPanel2 := null;
      This.spriteTypeJComboBox := null;
      This.totalAnimationsJComboBox := null;
      This.totalFramesJComboBox := null;
      This.widthReductionTextField := null;
      This.writeOverOriginalJCheckBox := null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpriteSplitterImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput'Class) is
      imageProcessorInput : ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        This.initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput'Class) return SpriteSplitterImageJPanel_Access is
      This : constant SpriteSplitterImageJPanel_Access := new SpriteSplitterImageJPanel;
   begin
      SpriteSplitterImageJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out SpriteSplitterImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        spriteSplitterUtil : SpriteSplitterUtil_Access;
--        spriteType : Unbounded_String;
--        totalFrames : Integer;
--        totalAnimations : Integer;
--        widthReduction : Integer;
--        heightReduction : Integer;
--        increaseWidth : Integer;
--        increaseHeight : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      spriteSplitterUtil := SpriteSplitterUtil_Package.getInstance;
--                      spriteType := Unbounded_String (This.spriteTypeJComboBox.getSelectedItem);
--                      totalFrames := To_Unbounded_String (Java_Image (Unbounded_String (This.totalFramesJComboBox.getSelectedItem)));
--                      totalAnimations := To_Unbounded_String (Java_Image (Unbounded_String (This.totalAnimationsJComboBox.getSelectedItem)));
--                      widthReduction := To_Unbounded_String (Java_Image (This.widthReductionTextField.getText));
--                      heightReduction := To_Unbounded_String (Java_Image (This.heightReductionTextField.getText));
--                      increaseWidth := To_Unbounded_String (Java_Image (This.increaseWidthTextField.getText));
--                      increaseHeight := To_Unbounded_String (Java_Image (This.increaseHeightTextField.getText));
--                      spriteSplitterUtil.process (This.getImageProcessorInput, totalFrames, totalAnimations, widthReduction, heightReduction, increaseWidth, increaseHeight, spriteType, SpriteSplitterImageJPanel_Access'(This'Unchecked_Access));
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, SpriteSplitterImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   procedure initComponents (This : in out SpriteSplitterImageJPanel) is
      size : Integer;
      animationStringArray2 : Unbounded_String_Array_Access;
      index : Integer;
      animationStringArray : Unbounded_String_Array_Access;
      jPanel1Layout : GroupLayout_Access;
      jPanel2Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.writeOverOriginalJCheckBox := JCheckBox_Package.Create;
        This.widthReductionTextField := JTextField_Package.Create;
        This.jLabel5 := JLabel_Package.Create;
        This.jPanel1 := JPanel_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure paint (This : in out ; graphics_Param : access Graphics'Class) is
--        graphics : Graphics_Access := Graphics_Access (graphics_Param);
--     begin
--                  if (This.result) /= (null) then
--                      graphics.drawImage (This.result, 0, 0, This.result.getWidth (null), This.result.getHeight (null), null);
--                  end if;
--     end paint;
;
        This.jLabel4 := JLabel_Package.Create;
        This.jLabel6 := JLabel_Package.Create;
        This.heightReductionTextField := JTextField_Package.Create;
        This.generateJButton := JButton_Package.Create;
        This.jPanel2 := JPanel_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.totalFramesJComboBox := JComboBox_Package.Create;
        size := 70;
        animationStringArray2 := new Unbounded_String_Array'(0 .. ((size) - (1)) - 1 => Null_Unbounded_String);
        for index in 1 .. (size) - 1 loop
            animationStringArray2 ((index) - (1)) := To_Unbounded_String (Java_Image (index));
        end loop;
        This.totalFramesJComboBox.setModel (DefaultComboBoxModel_Package.Create (animationStringArray2));
        This.jLabel2 := JLabel_Package.Create;
        This.totalAnimationsJComboBox := JComboBox_Package.Create;
        animationStringArray := new Unbounded_String_Array'(0 .. ((size) - (1)) - 1 => Null_Unbounded_String);
        for index in 1 .. (size) - 1 loop
            animationStringArray ((index) - (1)) := To_Unbounded_String (Java_Image (index));
        end loop;
        This.totalAnimationsJComboBox.setModel (DefaultComboBoxModel_Package.Create (animationStringArray));
        This.jLabel3 := JLabel_Package.Create;
        This.spriteTypeJComboBox := JComboBox_Package.Create;
        This.spriteTypeJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(org_Package.allbinary.media.image.SpriteSplitterUtil.getInstance.DIRECTIONAL_ANIMATIONS, org_Package.allbinary.media.image.SpriteSplitterUtil.getInstance.HORIZONTAL_ANIMATIONS, org_Package.allbinary.media.image.SpriteSplitterUtil.getInstance.HORIZONTAL_SPRITE)));
        This.jLabel7 := JLabel_Package.Create;
        This.increaseWidthTextField := JTextField_Package.Create;
        This.jLabel8 := JLabel_Package.Create;
        This.increaseHeightTextField := JTextField_Package.Create;
        This.writeOverOriginalJCheckBox.setText (To_Unbounded_String ("Write Over Original"));
        This.writeOverOriginalJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.writeOverOriginalJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.widthReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.widthReductionTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel5.setText (To_Unbounded_String ("Less Width:"));
        This.jLabel4.setText (To_Unbounded_String ("Results:"));
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addComponent (This.jLabel4).addGap (0, 0, Short_Package.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel1Layout.createSequentialGroup.addComponent (This.jLabel4).addGap (0, 184, Short_Package.MAX_VALUE)));
        This.jLabel6.setText (To_Unbounded_String ("Less Height:"));
        This.heightReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel1.setText (To_Unbounded_String ("Row Total:"));
        This.totalFramesJComboBox.setSelectedIndex (1);
        This.totalFramesJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.totalFramesJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("Column Total :"));
        This.totalAnimationsJComboBox.setSelectedIndex (3);
        This.totalAnimationsJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.totalAnimationsJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel3.setText (To_Unbounded_String ("Type:"));
        This.spriteTypeJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.spriteTypeJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup.addContainerGap.addComponent (This.jLabel1).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.totalFramesJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 48, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel2).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.totalAnimationsJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 39, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel3).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.spriteTypeJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 172, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel2Layout.createSequentialGroup.addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.totalFramesJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel2).addComponent (This.totalAnimationsJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel3).addComponent (This.spriteTypeJComboBox, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE))));
        This.jLabel7.setText (To_Unbounded_String ("More Width:"));
        This.increaseWidthTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.increaseWidthTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.increaseWidthTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel8.setText (To_Unbounded_String ("More Height:"));
        This.increaseHeightTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        layout := GroupLayout_Package.Create (SpriteSplitterImageJPanel_Access'(This'Unchecked_Access));
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 415, Short_Package.MAX_VALUE).addGap (78, 78, 78)).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.writeOverOriginalJCheckBox).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.generateJButton)).addGroup (layout.createSequentialGroup.addComponent (This.jLabel5).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.widthReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 41, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel6).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.heightReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 46, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel7).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.increaseWidthTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 41, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel8).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.increaseHeightTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 46, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addGap (0, 0, Short_Package.MAX_VALUE))).addContainerGap));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel7).addComponent (This.increaseWidthTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 22, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel8).addComponent (This.increaseHeightTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel5).addComponent (This.widthReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 22, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel6).addComponent (This.heightReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.writeOverOriginalJCheckBox).addComponent (This.generateJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure writeOverOriginalJCheckBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end writeOverOriginalJCheckBoxActionPerformed;

   procedure generateJButtonActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.process;
   end generateJButtonActionPerformed;

   procedure spriteTypeJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
      spriteSplitterUtil : SpriteSplitterUtil_Access;
   begin
        spriteSplitterUtil := SpriteSplitterUtil_Package.getInstance;
        This.jLabel1.setText (spriteSplitterUtil.ANIMATIONS_LABELS (This.spriteTypeJComboBox.getSelectedIndex));
        This.jLabel2.setText (spriteSplitterUtil.ANIMATIONS_LABELS ((This.spriteTypeJComboBox.getSelectedIndex) + (1)));
   end spriteTypeJComboBoxActionPerformed;

   procedure totalAnimationsJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end totalAnimationsJComboBoxActionPerformed;

   procedure totalFramesJComboBoxActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end totalFramesJComboBoxActionPerformed;

   procedure widthReductionTextFieldActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end widthReductionTextFieldActionPerformed;

   procedure increaseWidthTextFieldActionPerformed (This : in out SpriteSplitterImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end increaseWidthTextFieldActionPerformed;

   function getImageProcessorInput (This : in out SpriteSplitterImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out SpriteSplitterImageJPanel; imageProcessorInput_Param : access ImageProcessorInput'Class) is
      imageProcessorInput : ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   --  throws IOException
   procedure visit (This : in out SpriteSplitterImageJPanel; generatedBufferedImage_Param : access BufferedImage'Class; name : Unbounded_String; index : Integer) is
      generatedBufferedImage : BufferedImage_Access := BufferedImage_Access (generatedBufferedImage_Param);
      file : File_Access;
      filePath : Unbounded_String;
      extensionIndex : Integer;
      isWritten : Boolean;
   begin
        This.logUtil.putF (This.commonStrings.VISIT, SpriteSplitterImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
        This.result := generatedBufferedImage;
        This.getParent.repaint;
        file := This.imageProcessorInput.getFiles (index);
        if not (This.writeOverOriginalJCheckBox.isSelected) then
            filePath := file.getAbsolutePath;
            extensionIndex := (Index (filePath, To_String (This.imageStrings.PNG_EXTENSION)) - 1);
            filePath := StringMaker_Package.Create.append (Unbounded_Slice (filePath, (0) + 1, extensionIndex)).append (This.commonSeps.UNDERSCORE).append (name).append (This.imageStrings.PNG_EXTENSION).toString;
            file := File_Package.Create (filePath);
        end if;
        isWritten := ImageIO_Package.write (RenderedImage_Access (This.result), This.imageStrings.PNG, file);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("File: ")).append (StringUtil_Package.getInstance.toString (file)).append (To_Unbounded_String (" Wrote: ")).appendboolean (isWritten).toString, SpriteSplitterImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end visit;

end org.allbinary.image.gui.SpriteSplitterImageJPanel_Package;


