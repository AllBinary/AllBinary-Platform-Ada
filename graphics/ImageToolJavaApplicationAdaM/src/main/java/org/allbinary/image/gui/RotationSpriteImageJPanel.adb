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


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageJ2SERotationUtil_Package; use org.allbinary.media.image.ImageJ2SERotationUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.gui.RotationSpriteImageJPanel_Package is

   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   function "=" (Left, Right : ImageProcessorInput_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   function "=" (Left, Right : ImageProcessorInput_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInput_Package_References."=";
   subtype ImageStrings_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access;
   function "=" (Left, Right : ImageStrings_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array;
   function "=" (Left, Right : ImageStrings_Access_Array) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access;
   function "=" (Left, Right : ImageStrings_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access_Array is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array;
   function "=" (Left, Right : ImageStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype ImageStrings_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageStrings_Package_References.ImageStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageStrings_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out RotationSpriteImageJPanel'Class) is
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
      This.totalFramesJComboBox := null;
      This.writeOverOriginalJCheckBox := null;
   end Initialize_Fields;


   procedure Initialize (This : in out RotationSpriteImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        RotationSpriteImageJPanel'Class (This).initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return RotationSpriteImageJPanel_Access is
      This : constant RotationSpriteImageJPanel_Access := new RotationSpriteImageJPanel;
   begin
      RotationSpriteImageJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out RotationSpriteImageJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        generatedBufferedImageArray : BufferedImage_Access_Array_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        bufferedImageArray : BufferedImage_Access_Array_Access;
--        totalFrames : Integer;
--        totalAngle : Integer;
--        file : File_Access;
--        filePath : Unbounded_String;
--        extensionIndex : Integer;
--        isWritten : Boolean;
--        index : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      generatedBufferedImageArray := null;
--                      imageProcessorInput := RotationSpriteImageJPanel'Class (This).getImageProcessorInput;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      for index in 0 .. (bufferedImageArray'Length) - 1 loop
--                          totalFrames := Integer (Java_Unbox (This.totalFramesJComboBox.getSelectedItem));
--                          totalAngle := Integer (Java_Unbox (This.totalAngleJComboBox.getSelectedItem));
--                          generatedBufferedImageArray := ImageJ2SERotationUtil_Package.getInstance.getRotatedImages (bufferedImageArray (index), totalFrames, totalAngle);
--                          This.result := ImageJ2SERotationUtil_Package.getInstance.createSpriteImage (generatedBufferedImageArray);
--                          RotationSpriteImageJPanel'Class (This).getParent.repaint;
--                          file := imageProcessorInput.getFiles (index);
--                          if not (This.writeOverOriginalJCheckBox.isSelected) then
--                              filePath := file.getAbsolutePath;
--                              extensionIndex := Java_Index_Of (filePath, Java_Image (This.imageStrings.PNG_EXTENSION));
--                              filePath := StringMaker_Package.Create.append (Unbounded_Slice (filePath, (0) + 1, extensionIndex)).append (CommonSeps_Package.getInstance.UNDERSCORE).append (To_Unbounded_String ("sprite")).append (This.imageStrings.PNG_EXTENSION).toString;
--                              logUtil.putF (To_Unbounded_String ("New File Path: ") & filePath, RotationSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
--                              file := File_Package.Create (filePath);
--                          end if;
--                          isWritten := ImageIO_Package.write (RenderedImage_Access (This.result), This.imageStrings.PNG, file);
--                          logUtil.putF (To_Unbounded_String ("File: ") & Java_Image (file) & To_Unbounded_String (" Wrote: ") & Java_Image (isWritten), RotationSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
--                      end loop;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, RotationSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   procedure initComponents (This : in out RotationSpriteImageJPanel) is
      jPanel1Layout : GroupLayout_Access;
      jPanel2Layout : GroupLayout_Access;
      jPanel3Layout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
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
        This.totalFramesJComboBox := JComboBox_Package.Create;
        This.jLabel1 := JLabel_Package.Create;
        This.generateJButton := JButton_Package.Create;
        This.totalAngleJComboBox := JComboBox_Package.Create;
        This.jLabel3 := JLabel_Package.Create;
        This.writeOverOriginalJCheckBox := JCheckBox_Package.Create;
        This.jPanel3 := JPanel_Package.Create;
        This.jLabel2 := JLabel_Package.Create;
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 436, Short_Integer'Last));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (0, 227, Short_Integer'Last));
        This.totalFramesJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(CommonPhoneStrings_Package.getInstance.FOUR, CommonPhoneStrings_Package.getInstance.NINE, To_Unbounded_String ("18"), To_Unbounded_String ("20"), To_Unbounded_String ("36"))));
        This.jLabel1.setText (To_Unbounded_String ("Total Frames:"));
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  RotationSpriteImageJPanel'Class (This).generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.totalAngleJComboBox.setModel (DefaultComboBoxModel_Package.Create (new Unbounded_String_Array'(To_Unbounded_String ("360"), To_Unbounded_String ("90"))));
        This.totalAngleJComboBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  RotationSpriteImageJPanel'Class (This).totalAngleJComboBoxActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel3.setText (To_Unbounded_String ("Total Angle:"));
        This.writeOverOriginalJCheckBox.setText (To_Unbounded_String ("Write Over Original"));
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createSequentialGroup.add (8, 8, 8).add (This.jLabel1).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.totalFramesJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jLabel3).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.totalAngleJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.writeOverOriginalJCheckBox).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.generateJButton).addContainerGap (org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel2Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.BASELINE).add (This.jLabel1).add (This.totalFramesJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.generateJButton).add (This.totalAngleJComboBox, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add (This.jLabel3).add (This.writeOverOriginalJCheckBox)));
        This.jLabel2.setText (To_Unbounded_String ("Results:"));
        jPanel3Layout := GroupLayout_Package.Create (This.jPanel3);
        This.jPanel3.setLayout (jPanel3Layout);
        jPanel3Layout.setHorizontalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (jPanel3Layout.createSequentialGroup.add (This.jLabel2).addContainerGap (377, Short_Integer'Last)));
        jPanel3Layout.setVerticalGroup (jPanel3Layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (This.jLabel2));
        layout := GroupLayout_Package.Create (RotationSpriteImageJPanel_Access'(This'Unchecked_Access));
        RotationSpriteImageJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (org_Package.jdesktop.layout.GroupLayout.TRAILING, This.jPanel2, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last).add (layout.createSequentialGroup.addContainerGap.add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last).addContainerGap).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last));
        layout.setVerticalGroup (layout.createParallelGroup (org_Package.jdesktop.layout.GroupLayout.LEADING).add (layout.createSequentialGroup.add (This.jPanel2, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.UNRELATED).add (This.jPanel3, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap (org_Package.jdesktop.layout.LayoutStyle.RELATED).add (This.jPanel1, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org_Package.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
   end initComponents;

   procedure generateJButtonActionPerformed (This : in out RotationSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        RotationSpriteImageJPanel'Class (This).process;
   end generateJButtonActionPerformed;

   procedure totalAngleJComboBoxActionPerformed (This : in out RotationSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end totalAngleJComboBoxActionPerformed;

   function getImageProcessorInput (This : in out RotationSpriteImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out RotationSpriteImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

end org.allbinary.image.gui.RotationSpriteImageJPanel_Package;


