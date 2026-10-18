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


package body org.allbinary.image.gui.ResizeImageJPanel_Package is

   procedure Initialize_Fields (This : in out ResizeImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.aboveJButton := null;
      This.adjustFor16AboveJButton := null;
      This.adjustFor16BelowJButton := null;
      This.floatPercentJTextField := null;
      This.jComboBox1 := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jTextField1 := null;
      This.jTextField2 := null;
      This.updateJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ResizeImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
      numberStringArray : Unbounded_String_Array_Access;
      index : Integer;
      araster : Raster_Access;
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        ResizeImageJPanel'Class (This).initComponents;
        This.imageProcessorInput := imageProcessorInput;
        numberStringArray := new Unbounded_String_Array'(0 .. (101) - 1 => Null_Unbounded_String);
        numberStringArray (0) := To_Unbounded_String (Java_Image (-(1)));
        for index in 1 .. (100) - 1 loop
            numberStringArray (index) := To_Unbounded_String (Java_Image (index));
        end loop;
        This.jComboBox1.setModel (DefaultComboBoxModel_Package.Create (numberStringArray));
        araster := This.imageProcessorInput.getBufferedImageArray (0).getAlphaRaster;
        if (araster) = (null) then
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("there is no Alpha channel!!!!!!!!!")));
        else
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Alpha channel found !")));
        end if;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return ResizeImageJPanel_Access is
      This : constant ResizeImageJPanel_Access := new ResizeImageJPanel;
   begin
      ResizeImageJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out ResizeImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        imageUtil : ImageUtil_Access;
--        percent : Integer;
--        percentAsFloat : Float;
--        imageProcessorInput : ImageProcessorInput_Access;
--        files : File_Access_Array_Access;
--        generatedBufferedImageArray : BufferedImage_Access_Array_Access;
--        width : Integer;
--        height : Integer;
--        araster : Raster_Access;
--        imagePersistanceUtil : ImagePersistanceUtil_Access;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      imageUtil := ImageUtil_Package.getInstance;
--                      percent := To_Unbounded_String (Java_Image (Java_Unbox (This.jComboBox1.getSelectedItem)));
--                      percentAsFloat := Float'Value (To_String (This.floatPercentJTextField.getText));
--                      imageProcessorInput := ResizeImageJPanel'Class (This).getImageProcessorInput;
--                      files := imageProcessorInput.getFiles;
--                      generatedBufferedImageArray := null;
--                      if (percentAsFloat.intValue) /= (-(1)) then
--                          generatedBufferedImageArray := imageUtil.createBufferedImage2 (imageProcessorInput.getBufferedImageArray, percentAsFloat, True);
--                      elsif (percent.intValue) /= (-(1)) then
--                          generatedBufferedImageArray := imageUtil.createBufferedImageForResize (imageProcessorInput.getBufferedImageArray, percent, True);
--                      else
--                          width := To_Unbounded_String (Java_Image (Java_Unbox (This.jTextField1.getText)));
--                          height := To_Unbounded_String (Java_Image (Java_Unbox (This.jTextField2.getText)));
--                          generatedBufferedImageArray := imageUtil.createBufferedImage3 (imageProcessorInput.getBufferedImageArray, width, height, True);
--                      end if;
--                      araster := generatedBufferedImageArray (0).getAlphaRaster;
--                      if (araster) = (null) then
--                          Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("No Alpha Channel In Result")));
--                      else
--                          Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Found Alpha Channel In Result")));
--                      end if;
--                      imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
--                      for index in 0 .. (generatedBufferedImageArray'Length) - 1 loop
--                          imagePersistanceUtil.saveWithBatik (FileWrapperUtil_Package.wrapFile (files (index)), generatedBufferedImageArray (index));
--                      end loop;
--                      ResizeImageJPanel'Class (This).getParent.repaint;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, ResizeImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   procedure update (This : in out ResizeImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        size : Integer;
--        bufferedImageArray : BufferedImage_Access_Array_Access;
--        bufferedImage : BufferedImage_Access;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      imageProcessorInput := ResizeImageJPanel'Class (This).getImageProcessorInput;
--                      size := imageProcessorInput.getBufferedImageArray'Length;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      bufferedImage := null;
--                      for index in 0 .. (size) - 1 loop
--                          bufferedImage := bufferedImageArray (0);
--                          This.jTextField1.setText (To_Unbounded_String (Java_Image (bufferedImage.getWidth)));
--                          This.jTextField2.setText (To_Unbounded_String (Java_Image (bufferedImage.getHeight)));
--                      end loop;
--                      ResizeImageJPanel'Class (This).getParent.repaint;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, ResizeImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end update;

   procedure updateFor16Above (This : in out ResizeImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        size : Integer;
--        bufferedImageArray : BufferedImage_Access_Array_Access;
--        bufferedImage : BufferedImage_Access;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      imageProcessorInput := ResizeImageJPanel'Class (This).getImageProcessorInput;
--                      size := imageProcessorInput.getBufferedImageArray'Length;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      bufferedImage := null;
--                      for index in 0 .. (size) - 1 loop
--                          bufferedImage := bufferedImageArray (0);
--                          This.jTextField1.setText (To_Unbounded_String (Java_Image (((bufferedImage.getWidth) / (16)) * (16))));
--                          This.jTextField2.setText (To_Unbounded_String (Java_Image (((bufferedImage.getHeight) / (16)) * (16))));
--                      end loop;
--                      ResizeImageJPanel'Class (This).getParent.repaint;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, ResizeImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end updateFor16Above;

   procedure updateFor16Below (This : in out ResizeImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        size : Integer;
--        bufferedImageArray : BufferedImage_Access_Array_Access;
--        bufferedImage : BufferedImage_Access;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      imageProcessorInput := ResizeImageJPanel'Class (This).getImageProcessorInput;
--                      size := imageProcessorInput.getBufferedImageArray'Length;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      bufferedImage := null;
--                      for index in 0 .. (size) - 1 loop
--                          bufferedImage := bufferedImageArray (0);
--                          This.jTextField1.setText (To_Unbounded_String (Java_Image ((((((bufferedImage.getWidth) / (16))) + (1))) * (16))));
--                          This.jTextField2.setText (To_Unbounded_String (Java_Image ((((((bufferedImage.getHeight) / (16))) + (1))) * (16))));
--                      end loop;
--                      ResizeImageJPanel'Class (This).getParent.repaint;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, ResizeImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end updateFor16Below;

   function getImageProcessorInput (This : in out ResizeImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out ResizeImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   procedure initComponents (This : in out ResizeImageJPanel) is
      layout : GroupLayout_Access;
   begin
        This.jLabel1 := JLabel_Package.Create;
        This.jComboBox1 := JComboBox_Package.Create;
        This.aboveJButton := JButton_Package.Create;
        This.jTextField1 := JTextField_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.jTextField2 := JTextField_Package.Create;
        This.updateJButton := JButton_Package.Create;
        This.floatPercentJTextField := JTextField_Package.Create;
        This.adjustFor16AboveJButton := JButton_Package.Create;
        This.adjustFor16BelowJButton := JButton_Package.Create;
        This.jLabel1.setText (To_Unbounded_String ("Percent:"));
        This.jComboBox1.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(To_Unbounded_String ("Item 1"), To_Unbounded_String ("Item 2"), To_Unbounded_String ("Item 3"), To_Unbounded_String ("Item 4"))));
        This.aboveJButton.setText (To_Unbounded_String ("Process"));
        This.aboveJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ResizeImageJPanel'Class (This).aboveJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel2.setText (To_Unbounded_String ("Width:"));
        This.jLabel3.setText (To_Unbounded_String ("Height:"));
        This.updateJButton.setText (To_Unbounded_String ("Update"));
        This.updateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ResizeImageJPanel'Class (This).updateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.floatPercentJTextField.setText (To_Unbounded_String ("-1.000000"));
        This.floatPercentJTextField.setMinimumSize (Dimension_Package.Create (120, 22));
        This.adjustFor16AboveJButton.setText (To_Unbounded_String ("Adjust for 16 Above"));
        This.adjustFor16AboveJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ResizeImageJPanel'Class (This).adjustFor16AboveJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.adjustFor16BelowJButton.setText (To_Unbounded_String ("Adjust for 16 Below"));
        This.adjustFor16BelowJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  ResizeImageJPanel'Class (This).adjustFor16BelowJButtonActionPerformed (evt);
--     end actionPerformed;
);
        layout := GroupLayout_Package.Create (ResizeImageJPanel_Access'(This'Unchecked_Access));
        ResizeImageJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.jLabel1).addComponent (This.jLabel2).addComponent (This.jLabel3)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING, False).addComponent (This.jComboBox1, 0, javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addComponent (This.jTextField1).addComponent (This.jTextField2)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.floatPercentJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.adjustFor16AboveJButton).addComponent (This.adjustFor16BelowJButton)).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)).addGroup (layout.createSequentialGroup.addComponent (This.updateJButton).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent (This.aboveJButton).addGap (0, 250, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel1).addComponent (This.jComboBox1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.floatPercentJTextField, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jTextField1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.jLabel2).addComponent (This.adjustFor16AboveJButton)).addPreferredGap (javax_Package.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.jLabel3).addComponent (This.jTextField2, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addComponent (This.adjustFor16BelowJButton)).addGap (18, 18, 18).addGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.BASELINE).addComponent (This.aboveJButton).addComponent (This.updateJButton)).addContainerGap (175, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure aboveJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ResizeImageJPanel'Class (This).process;
   end aboveJButtonActionPerformed;

   procedure updateJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ResizeImageJPanel'Class (This).update;
   end updateJButtonActionPerformed;

   procedure adjustFor16AboveJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ResizeImageJPanel'Class (This).updateFor16Above;
   end adjustFor16AboveJButtonActionPerformed;

   procedure adjustFor16BelowJButtonActionPerformed (This : in out ResizeImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        ResizeImageJPanel'Class (This).updateFor16Below;
   end adjustFor16BelowJButtonActionPerformed;

end org.allbinary.image.gui.ResizeImageJPanel_Package;


