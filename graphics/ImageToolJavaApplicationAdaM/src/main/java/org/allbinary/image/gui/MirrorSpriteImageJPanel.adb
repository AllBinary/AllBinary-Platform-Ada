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
with org.allbinary.media.image.BufferedImageUtil2_Package; use org.allbinary.media.image.BufferedImageUtil2_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
with org.allbinary.media.image.MirrorImageUtil_Package; use org.allbinary.media.image.MirrorImageUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.jdesktop.layout.GroupLayout_Package; use org.jdesktop.layout.GroupLayout_Package;
with org.jdesktop.layout.LayoutStyle_Package; use org.jdesktop.layout.LayoutStyle_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.gui.MirrorSpriteImageJPanel_Package is

   package GroupLayout_Package renames Standard.org.jdesktop.layout.GroupLayout_Package;
   package LayoutStyle_Package renames Standard.org.jdesktop.layout.LayoutStyle_Package;
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
        null;
        Initialize_Fields (This);
        This.logUtil.putF (To_Unbounded_String ("Starting"), MirrorSpriteImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        MirrorSpriteImageJPanel'Class (This).initComponents;
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
--                      imageProcessorInput := MirrorSpriteImageJPanel'Class (This).getImageProcessorInput;
--                      bufferedImageArray := imageProcessorInput.getBufferedImageArray;
--                      for index in 0 .. (bufferedImageArray'Length) - 1 loop
--                          generatedBufferedImageArray := MirrorImageUtil_Package.getInstance.getImages (bufferedImageArray (index), This.verticleJCheckBox.isSelected, This.horizontalJCheckBox.isSelected);
--                          This.result := BufferedImageUtil2_Package.getInstance.createSpriteImage (generatedBufferedImageArray);
--                          MirrorSpriteImageJPanel'Class (This).getParent.repaint;
--                          file := imageProcessorInput.getFiles (index);
--                          if not (This.writeOverOriginalJCheckBox.isSelected) then
--                              filePath := file.getAbsolutePath;
--                              extensionIndex := Java_Index_Of (filePath, Java_Image (This.imageStrings.PNG_EXTENSION));
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
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (GroupLayout_Package.LEADING).add (0, 507, Short_Integer'Last));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (GroupLayout_Package.LEADING).add (0, 230, Short_Integer'Last));
        This.imageHeightIsFrameSizeJCheckBox.setSelected (True);
        This.imageHeightIsFrameSizeJCheckBox.setText (To_Unbounded_String ("Image Height Is Frame Size"));
        This.imageHeightIsFrameSizeJCheckBox.setEnabled (False);
        This.imageHeightIsFrameSizeJCheckBox.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  MirrorSpriteImageJPanel'Class (This).imageHeightIsFrameSizeJCheckBoxActionPerformed (evt);
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
--                  MirrorSpriteImageJPanel'Class (This).generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.LEADING).add (jPanel2Layout.createSequentialGroup.addContainerGap (GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).add (This.verticleJCheckBox).addPreferredGap (LayoutStyle_Package.UNRELATED).add (This.horizontalJCheckBox).addPreferredGap (LayoutStyle_Package.RELATED).add (This.imageHeightIsFrameSizeJCheckBox).addPreferredGap (LayoutStyle_Package.RELATED).add (This.writeOverOriginalJCheckBox).addPreferredGap (LayoutStyle_Package.RELATED).add (This.generateJButton)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.LEADING).add (jPanel2Layout.createSequentialGroup.add (jPanel2Layout.createParallelGroup (GroupLayout_Package.BASELINE).add (This.imageHeightIsFrameSizeJCheckBox, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).add (This.horizontalJCheckBox).add (This.verticleJCheckBox).add (This.writeOverOriginalJCheckBox).add (This.generateJButton, GroupLayout_Package.PREFERRED_SIZE, 25, GroupLayout_Package.PREFERRED_SIZE)).addContainerGap));
        This.jLabel2.setText (To_Unbounded_String ("Results:"));
        jPanel3Layout := GroupLayout_Package.Create (This.jPanel3);
        This.jPanel3.setLayout (jPanel3Layout);
        jPanel3Layout.setHorizontalGroup (jPanel3Layout.createParallelGroup (GroupLayout_Package.LEADING).add (jPanel3Layout.createSequentialGroup.add (This.jLabel2).addContainerGap (448, Short_Integer'Last)));
        jPanel3Layout.setVerticalGroup (jPanel3Layout.createParallelGroup (GroupLayout_Package.LEADING).add (This.jLabel2));
        layout := GroupLayout_Package.Create (MirrorSpriteImageJPanel_Access'(This'Unchecked_Access));
        MirrorSpriteImageJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (GroupLayout_Package.LEADING).add (GroupLayout_Package.TRAILING, layout.createSequentialGroup.addContainerGap.add (This.jPanel3, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).addContainerGap).add (This.jPanel1, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).add (layout.createSequentialGroup.add (This.jPanel2, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE).addContainerGap (GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last)));
        layout.setVerticalGroup (layout.createParallelGroup (GroupLayout_Package.LEADING).add (layout.createSequentialGroup.add (This.jPanel2, GroupLayout_Package.PREFERRED_SIZE, 25, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.RELATED).add (This.jPanel3, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.RELATED).add (This.jPanel1, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last)));
   end initComponents;

   procedure generateJButtonActionPerformed (This : in out MirrorSpriteImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        MirrorSpriteImageJPanel'Class (This).process;
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


