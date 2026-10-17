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


package body org.allbinary.image.gui.CanvasImageJPanel_Package is

   procedure Initialize_Fields (This : in out CanvasImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.imageStrings := ImageStrings_Package.getInstance;
      
      This.result := null;
      This.generateJButton := null;
      This.heightReductionTextField := null;
      This.heightReductionTextField1 := null;
      This.jLabel4 := null;
      This.jLabel5 := null;
      This.jLabel6 := null;
      This.jLabel7 := null;
      This.jLabel8 := null;
      This.jPanel1 := null;
      This.jPanel2 := null;
      This.widthReductionTextField := null;
      This.widthReductionTextField1 := null;
      This.writeOverOriginalJCheckBox := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput'Class) is
      imageProcessorInput : ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        This.initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput'Class) return CanvasImageJPanel_Access is
      This : constant CanvasImageJPanel_Access := new CanvasImageJPanel;
   begin
      CanvasImageJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out CanvasImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        canvasTrimUtil : CanvasTrimUtil_Access;
--        canvasExpandUtil : CanvasExpandUtil_Access;
--        leftReduction : Integer;
--        topReduction : Integer;
--        widthReduction : Integer;
--        heightReduction : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      canvasTrimUtil := CanvasTrimUtil_Package.getInstance;
--                      canvasExpandUtil := CanvasExpandUtil_Package.getInstance;
--                      leftReduction := To_Unbounded_String (Java_Image (This.widthReductionTextField1.getText));
--                      topReduction := To_Unbounded_String (Java_Image (This.heightReductionTextField1.getText));
--                      widthReduction := To_Unbounded_String (Java_Image (This.widthReductionTextField.getText));
--                      heightReduction := To_Unbounded_String (Java_Image (This.heightReductionTextField.getText));
--                      if ((((leftReduction) <= (0)) or else ((topReduction) <= (0))) or else ((widthReduction) <= (0))) or else ((heightReduction) <= (0)) then
--                          canvasTrimUtil.process (This.getImageProcessorInput, -(leftReduction), -(topReduction), -(widthReduction), -(heightReduction), CanvasImageJPanel_Access'(This'Unchecked_Access));
--                      else
--                          canvasExpandUtil.process (This.getImageProcessorInput, leftReduction, topReduction, CanvasImageJPanel_Access'(This'Unchecked_Access));
--                      end if;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, CanvasImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   procedure initComponents (This : in out CanvasImageJPanel) is
      jPanel1Layout : GroupLayout_Access;
      jPanel2Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.writeOverOriginalJCheckBox := JCheckBox_Package.Create;
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
        This.generateJButton := JButton_Package.Create;
        This.jLabel4 := JLabel_Package.Create;
        This.jPanel2 := JPanel_Package.Create;
        This.jLabel5 := JLabel_Package.Create;
        This.widthReductionTextField := JTextField_Package.Create;
        This.jLabel6 := JLabel_Package.Create;
        This.heightReductionTextField := JTextField_Package.Create;
        This.widthReductionTextField1 := JTextField_Package.Create;
        This.jLabel7 := JLabel_Package.Create;
        This.jLabel8 := JLabel_Package.Create;
        This.heightReductionTextField1 := JTextField_Package.Create;
        This.writeOverOriginalJCheckBox.setSelected (True);
        This.writeOverOriginalJCheckBox.setText (To_Unbounded_String ("Write Over Original"));
        This.writeOverOriginalJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.writeOverOriginalJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 0, Short_Package.MAX_VALUE));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 196, Short_Package.MAX_VALUE));
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel4.setText (To_Unbounded_String ("Results:"));
        This.jLabel5.setText (To_Unbounded_String ("Right:"));
        This.widthReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.widthReductionTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel6.setText (To_Unbounded_String ("Bottom"));
        This.heightReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField1.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.widthReductionTextField1ActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel7.setText (To_Unbounded_String ("Top"));
        This.jLabel8.setText (To_Unbounded_String ("Left:"));
        This.heightReductionTextField1.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel2Layout.createSequentialGroup.addContainerGap.addComponent (This.jLabel8).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.widthReductionTextField1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 41, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel5).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.widthReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 41, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel7).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.heightReductionTextField1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 46, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel6).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.heightReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 46, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap (140, Short_Package.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (javax_Package.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup.addGap (0, 16, Short_Package.MAX_VALUE).addGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel6).addComponent (This.heightReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel8).addComponent (This.widthReductionTextField1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 22, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel7).addComponent (This.heightReductionTextField1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addGroup (jPanel2Layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel5).addComponent (This.widthReductionTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 22, javax_Package.swing.GroupLayout.PREFERRED_SIZE)))));
        layout := GroupLayout_Package.Create (CanvasImageJPanel_Access'(This'Unchecked_Access));
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addGap (78, 78, 78)).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel4).addGroup (layout.createSequentialGroup.addComponent (This.writeOverOriginalJCheckBox).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.generateJButton))).addGap (0, 0, Short_Package.MAX_VALUE))).addContainerGap));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.generateJButton).addComponent (This.writeOverOriginalJCheckBox)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jLabel4).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.jPanel1, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure writeOverOriginalJCheckBoxActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end writeOverOriginalJCheckBoxActionPerformed;

   procedure generateJButtonActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.process;
   end generateJButtonActionPerformed;

   procedure widthReductionTextFieldActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end widthReductionTextFieldActionPerformed;

   procedure widthReductionTextField1ActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end widthReductionTextField1ActionPerformed;

   function getImageProcessorInput (This : in out CanvasImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out CanvasImageJPanel; imageProcessorInput_Param : access ImageProcessorInput'Class) is
      imageProcessorInput : ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   --  throws IOException
   procedure visit (This : in out CanvasImageJPanel; generatedBufferedImage_Param : access BufferedImage'Class; name : Unbounded_String; index : Integer) is
      generatedBufferedImage : BufferedImage_Access := BufferedImage_Access (generatedBufferedImage_Param);
      file : File_Access;
      filePath : Unbounded_String;
      extensionIndex : Integer;
      isWritten : Boolean;
   begin
        This.logUtil.putF (This.commonStrings.VISIT, CanvasImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
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
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("File: ")).append (StringUtil_Package.getInstance.toString (file)).append (To_Unbounded_String (" Wrote: ")).appendboolean (isWritten).toString, CanvasImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end visit;

end org.allbinary.image.gui.CanvasImageJPanel_Package;


