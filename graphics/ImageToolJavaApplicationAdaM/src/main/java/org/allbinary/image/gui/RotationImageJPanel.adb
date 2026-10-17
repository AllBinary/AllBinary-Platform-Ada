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


package body org.allbinary.image.gui.RotationImageJPanel_Package is

   procedure Initialize_Fields (This : in out RotationImageJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageStrings := ImageStrings_Package.getInstance;
      
      This.result := null;
      This.generateJButton := null;
      This.jLabel1 := null;
      This.jLabel2 := null;
      This.jLabel3 := null;
      This.jPanel1 := null;
      This.jPanel2 := null;
      This.jPanel3 := null;
      This.totalAngleJComboBox := null;
      This.writeOverOriginalJCheckBox := null;
   end Initialize_Fields;


   procedure Initialize (This : in out RotationImageJPanel'Class; imageProcessorInput : ImageProcessorInput_Access) is
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        This.initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput : ImageProcessorInput_Access) return RotationImageJPanel_Access is
      This : constant RotationImageJPanel_Access := new RotationImageJPanel;
   begin
      Initialize (This.all, imageProcessorInput);
      return This;
   end Create;

   procedure process (This : in out RotationImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        angleAsString : Unbounded_String;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      angleAsString := Unbounded_String (This.totalAngleJComboBox.getSelectedItem);
--                      ImageArrayRotationUtil_Package.getInstance.process (This.getImageProcessorInput, angleAsString, This'Unchecked_Access);
--                  exception
--                      when e : others =>
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
--                  end;
--     end run;
.start;
   end process;

   procedure initComponents (This : in out RotationImageJPanel) is
      jPanel1Layout : GroupLayout_Access;
      jPanel2Layout : GroupLayout_Access;
      jPanel3Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.jPanel1 := JPanel_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure paint (This : in out ; graphics : Graphics_Access) is
--     begin
--                  if (This.result) /= (null) then
--                      graphics.drawImage (This.result, 0, 0, This.result.getWidth (null), This.result.getHeight (null), null);
--                  end if;
--     end paint;
;
        This.jPanel2 := JPanel_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.generateJButton := JButton_Package.Create;
        This.totalAngleJComboBox := JComboBox_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.writeOverOriginalJCheckBox := JCheckBox_Package.Create;
        This.jPanel3 := JPanel_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 436, Short_Package.MAX_VALUE));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 227, Short_Package.MAX_VALUE));
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.totalAngleJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(This.commonStrings.UP, This.commonStrings.DOWN, To_Unbounded_String ("-90"), To_Unbounded_String ("90"))));
        This.totalAngleJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt : ActionEvent_Access) is
--     begin
--                  This.totalAngleJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel3.setText (To_Unbounded_String ("Total Angle:"));
        This.writeOverOriginalJCheckBox.setText (To_Unbounded_String ("Write Over Original"));
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createSequentialGroup.add (8, 8, 8).add (This.jLabel1).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jLabel3).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.totalAngleJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.writeOverOriginalJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.generateJButton).addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.jLabel1).add (This.generateJButton).add (This.totalAngleJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.jLabel3).add (This.writeOverOriginalJCheckBox)));
        This.jLabel2.setText (To_Unbounded_String ("Results:"));
        jPanel3Layout := GroupLayout_Package.Create (This.jPanel3);
        This.jPanel3.setLayout (jPanel3Layout);
        jPanel3Layout.setHorizontalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel3Layout.createSequentialGroup.add (This.jLabel2).addContainerGap (377, Short_Package.MAX_VALUE)));
        jPanel3Layout.setVerticalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (This.jLabel2));
        layout := GroupLayout_Package.Create (This'Unchecked_Access);
        This.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, This.jPanel2, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).add (layout.createSequentialGroup.addContainerGap.add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE).addContainerGap).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE));
        layout.setVerticalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (layout.createSequentialGroup.add (This.jPanel2, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.UNRELATED).add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Package.MAX_VALUE)));
   end initComponents;

   procedure generateJButtonActionPerformed (This : in out RotationImageJPanel; evt : ActionEvent_Access) is
   begin
        This.process;
   end generateJButtonActionPerformed;

   procedure totalAngleJComboBoxActionPerformed (This : in out RotationImageJPanel; evt : ActionEvent_Access) is
   begin
        null;
   end totalAngleJComboBoxActionPerformed;

   function getImageProcessorInput (This : in out RotationImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out RotationImageJPanel; imageProcessorInput : ImageProcessorInput_Access) is
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   --  throws IOException
   procedure visit (This : in out RotationImageJPanel; generatedBufferedImage : BufferedImage_Access; name : Unbounded_String; index : Integer) is
      file : File_Access;
      filePath : Unbounded_String;
      extensionIndex : Integer;
      isWritten : Boolean;
   begin
        This.result := generatedBufferedImage;
        This.getParent.repaint;
        file := This.imageProcessorInput.getFiles (index);
        if not (This.writeOverOriginalJCheckBox.isSelected) then
            filePath := file.getAbsolutePath;
            extensionIndex := (Index (filePath, To_String (This.imageStrings.PNG_EXTENSION)) - 1);
            filePath := StringMaker_Package.Create.append (Unbounded_Slice (filePath, (0) + 1, extensionIndex)).append (CommonSeps_Package.getInstance.UNDERSCORE).append (name).append (This.imageStrings.PNG_EXTENSION).toString;
            file := File_Package.Create (filePath);
        end if;
        isWritten := ImageIO_Package.write (RenderedImage_Access (This.result), This.imageStrings.PNG, file);
        This.logUtil.putF (To_Unbounded_String ("File: ") & Java_Image (file) & To_Unbounded_String (" Wrote: ") & Java_Image (isWritten), This'Unchecked_Access, This.commonStrings.RUN);
   end visit;

   procedure getImageProcessorInput (This : in out RotationImageJPanel) is
      Java_Result : constant ImageProcessorInput_Access := RotationImageJPanel'Class (This).getImageProcessorInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageProcessorInput;

end org.allbinary.image.gui.RotationImageJPanel_Package;


