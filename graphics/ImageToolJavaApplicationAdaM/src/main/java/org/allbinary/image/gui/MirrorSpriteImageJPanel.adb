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


package body org.allbinary.image.gui.MirrorSpriteImageJPanel_Package is

   procedure Initialize_Fields (This : in out MirrorSpriteImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageStrings := ImageStrings_Package.getInstance;
      
      This.result := null;
      This.generateJButton := null;
      This.horizontalJCheckBox := null;
      This.imageHeightIsFrameSizeJCheckBox := null;
      This.jLabel2 := null;
      This.jLayeredPane1 := null;
      This.jPanel1 := null;
      This.jPanel2 := null;
      This.jPanel3 := null;
      This.verticleJCheckBox := null;
      This.writeOverOriginalJCheckBox := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MirrorSpriteImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        This.logUtil.putF (To_Unbounded_String ("Starting"), MirrorSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return MirrorSpriteImageJPanel_Access is
      This : constant MirrorSpriteImageJPanel_Access := new MirrorSpriteImageJPanel;
   begin
      MirrorSpriteImageJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out MirrorSpriteImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        generatedBufferedImageArray : BufferedImage_Access_Array_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        bufferedImageArray : BufferedImage_Access_Array_Access;
--        file : File_Access;
--        filePath : Unbounded_String;
--        extensionIndex : Integer;
--        isWritten : Boolean;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      generatedBufferedImageArray := null;
--                      imageProcessorInput := This.getImageProcessorInput;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      for index in 0 .. (bufferedImageArray'Length) - 1 loop
--                          generatedBufferedImageArray := MirrorImageUtil_Package.getInstance.getImages (bufferedImageArray (index), This.verticleJCheckBox.isSelected, This.horizontalJCheckBox.isSelected);
--                          This.result := BufferedImageUtil2_Package.getInstance.createSpriteImage (generatedBufferedImageArray);
--                          This.getParent.repaint;
--                          file := imageProcessorInput.getFiles (index);
--                          if not (This.writeOverOriginalJCheckBox.isSelected) then
--                              filePath := file.getAbsolutePath;
--                              extensionIndex := (Index (filePath, To_String (This.imageStrings.PNG_EXTENSION)) - 1);
--                              filePath := Unbounded_Slice (filePath, (0) + 1, extensionIndex) & To_Unbounded_String ("_mirror") & Java_Image (This.imageStrings.PNG_EXTENSION);
--                              logUtil.putF (To_Unbounded_String ("Renamed File: ") & filePath, MirrorSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
--                              file := File_Package.Create (filePath);
--                          end if;
--                          isWritten := ImageIO_Package.write (RenderedImage_Access (This.result), This.imageStrings.PNG, file);
--                          logUtil.putF (To_Unbounded_String ("File: ") & Java_Image (file) & To_Unbounded_String (" Wrote: ") & Java_Image (isWritten), MirrorSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
--                      end loop;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, MirrorSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   procedure initComponents (This : in out MirrorSpriteImageJPanel) is
      jPanel1Layout : GroupLayout_Access;
      jPanel2Layout : GroupLayout_Access;
      jPanel3Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.jLayeredPane1 := JLayeredPane_Package.Create;
        This.jPanel1 := JPanel_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure paint (This : in out ; graphics_Param : access Graphics_Package.Graphics'Class) is
--        graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
--     begin
--                  if (This.result) /= (null) then
--                      graphics.drawImage (This.result, 0, 0, This.result.getWidth (null), This.result.getHeight (null), null);
--                  end if;
--     end paint;
;
        This.jPanel2 := JPanel_Package.Create;
        This.imageHeightIsFrameSizeJCheckBox := JCheckBox_Package.Create;
        This.horizontalJCheckBox := JCheckBox_Package.Create;
        This.verticleJCheckBox := JCheckBox_Package.Create;
        This.writeOverOriginalJCheckBox := JCheckBox_Package.Create;
        This.generateJButton := JButton_Package.Create;
        This.jPanel3 := JPanel_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 507, Short_Package.MAX_VALUE));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 230, Short_Package.MAX_VALUE));
        This.imageHeightIsFrameSizeJCheckBox.setSelected (True);
        This.imageHeightIsFrameSizeJCheckBox.setText (To_Unbounded_String ("Image Height Is Frame Size"));
        This.imageHeightIsFrameSizeJCheckBox.setEnabled (False);
        This.imageHeightIsFrameSizeJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.imageHeightIsFrameSizeJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.horizontalJCheckBox.setSelected (True);
        This.horizontalJCheckBox.setText (To_Unbounded_String ("Horizontal"));
        This.horizontalJCheckBox.setEnabled (False);
        This.verticleJCheckBox.setText (To_Unbounded_String ("Verticle"));
        This.verticleJCheckBox.setEnabled (False);
        This.writeOverOriginalJCheckBox.setText (To_Unbounded_String ("Write Over Original"));
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createSequentialGroup.addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).add (This.verticleJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.UNRELATED).add (This.horizontalJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.imageHeightIsFrameSizeJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.writeOverOriginalJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.generateJButton)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createSequentialGroup.add (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.imageHeightIsFrameSizeJCheckBox, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).add (This.horizontalJCheckBox).add (This.verticleJCheckBox).add (This.writeOverOriginalJCheckBox).add (This.generateJButton, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 25, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE)).addContainerGap));
        This.jLabel2.setText (To_Unbounded_String ("Results:"));
        jPanel3Layout := GroupLayout_Package.Create (This.jPanel3);
        This.jPanel3.setLayout (jPanel3Layout);
        jPanel3Layout.setHorizontalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel3Layout.createSequentialGroup.add (This.jLabel2).addContainerGap (448, Short_Package.MAX_VALUE)));
        jPanel3Layout.setVerticalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (This.jLabel2));
        layout := GroupLayout_Package.Create (MirrorSpriteImageJPanel_Access'(This'Unchecked_Access));
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup.addContainerGap.add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addContainerGap).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).add (layout.createSequentialGroup.add (This.jPanel2, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
        layout.setVerticalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (layout.createSequentialGroup.add (This.jPanel2, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 25, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure generateJButtonActionPerformed (This : in out MirrorSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.process;
   end generateJButtonActionPerformed;

   procedure imageHeightIsFrameSizeJCheckBoxActionPerformed (This : in out MirrorSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end imageHeightIsFrameSizeJCheckBoxActionPerformed;

   function getImageProcessorInput (This : in out MirrorSpriteImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out MirrorSpriteImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

end org.allbinary.image.gui.MirrorSpriteImageJPanel_Package;


