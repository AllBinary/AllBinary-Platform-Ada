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


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.image.CanvasExpandUtil_Package; use org.allbinary.media.image.CanvasExpandUtil_Package;
with org.allbinary.media.image.CanvasTrimUtil_Package; use org.allbinary.media.image.CanvasTrimUtil_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;
with org.allbinary.media.image.ImageStrings_Package; use org.allbinary.media.image.ImageStrings_Package;
with org.allbinary.media.image.ImageStrings_Package_References;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.image.gui.Graphics_Package; use org.allbinary.image.gui.Graphics_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.gui.CanvasImageJPanel_Package is

   package File_Package renames Standard.java.io.File_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
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


   procedure Initialize (This : in out CanvasImageJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        null;
        Initialize_Fields (This);
        CanvasImageJPanel'Class (This).initComponents;
        This.imageProcessorInput := imageProcessorInput;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return CanvasImageJPanel_Access is
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
--                      leftReduction := Integer (This.widthReductionTextField1.getText);
--                      topReduction := Integer (This.heightReductionTextField1.getText);
--                      widthReduction := Integer (This.widthReductionTextField.getText);
--                      heightReduction := Integer (This.heightReductionTextField.getText);
--                      if ((((leftReduction) <= (0)) or else ((topReduction) <= (0))) or else ((widthReduction) <= (0))) or else ((heightReduction) <= (0)) then
--                          canvasTrimUtil.process (CanvasImageJPanel'Class (This).getImageProcessorInput, -(leftReduction), -(topReduction), -(widthReduction), -(heightReduction), CanvasImageJPanel_Access'(This'Unchecked_Access));
--                      else
--                          canvasExpandUtil.process (CanvasImageJPanel'Class (This).getImageProcessorInput, leftReduction, topReduction, CanvasImageJPanel_Access'(This'Unchecked_Access));
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
--     procedure paint (This : in out ; graphics_Param : access Graphics_Package.Graphics'Class) is
--        graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  CanvasImageJPanel'Class (This).writeOverOriginalJCheckBoxActionPerformed (evt);
--     end actionPerformed;
);
        jPanel1Layout := GroupLayout_Package.Create (This.jPanel1);
        This.jPanel1.setLayout (jPanel1Layout);
        jPanel1Layout.setHorizontalGroup (jPanel1Layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGap (0, 0, Short_Integer'Last));
        jPanel1Layout.setVerticalGroup (jPanel1Layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGap (0, 196, Short_Integer'Last));
        This.generateJButton.setText (To_Unbounded_String ("Generate"));
        This.generateJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  CanvasImageJPanel'Class (This).generateJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel4.setText (To_Unbounded_String ("Results:"));
        This.jLabel5.setText (To_Unbounded_String ("Right:"));
        This.widthReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  CanvasImageJPanel'Class (This).widthReductionTextFieldActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel6.setText (To_Unbounded_String ("Bottom"));
        This.heightReductionTextField.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField1.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        This.widthReductionTextField1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  CanvasImageJPanel'Class (This).widthReductionTextField1ActionPerformed (evt);
--     end actionPerformed;
);
        This.jLabel7.setText (To_Unbounded_String ("Top"));
        This.jLabel8.setText (To_Unbounded_String ("Left:"));
        This.heightReductionTextField1.setText (CommonPhoneStrings_Package.getInstance.ZERO);
        jPanel2Layout := GroupLayout_Package.Create (This.jPanel2);
        This.jPanel2.setLayout (jPanel2Layout);
        jPanel2Layout.setHorizontalGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (jPanel2Layout.createSequentialGroup.addContainerGap.addComponent (This.jLabel8).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.widthReductionTextField1, GroupLayout_Package.PREFERRED_SIZE, 41, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.jLabel5).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.widthReductionTextField, GroupLayout_Package.PREFERRED_SIZE, 41, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.jLabel7).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.heightReductionTextField1, GroupLayout_Package.PREFERRED_SIZE, 46, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.jLabel6).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.heightReductionTextField, GroupLayout_Package.PREFERRED_SIZE, 46, GroupLayout_Package.PREFERRED_SIZE).addContainerGap (140, Short_Integer'Last)));
        jPanel2Layout.setVerticalGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (GroupLayout_Package.Alignment.TRAILING, jPanel2Layout.createSequentialGroup.addGap (0, 16, Short_Integer'Last).addGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.BASELINE).addComponent (This.jLabel6).addComponent (This.heightReductionTextField, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE)).addGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.BASELINE).addComponent (This.jLabel8).addComponent (This.widthReductionTextField1, GroupLayout_Package.PREFERRED_SIZE, 22, GroupLayout_Package.PREFERRED_SIZE).addComponent (This.jLabel7).addComponent (This.heightReductionTextField1, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE)).addGroup (jPanel2Layout.createParallelGroup (GroupLayout_Package.Alignment.BASELINE).addComponent (This.jLabel5).addComponent (This.widthReductionTextField, GroupLayout_Package.PREFERRED_SIZE, 22, GroupLayout_Package.PREFERRED_SIZE)))));
        layout := GroupLayout_Package.Create (CanvasImageJPanel_Access'(This'Unchecked_Access));
        CanvasImageJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last).addGap (78, 78, 78)).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addComponent (This.jPanel1, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last)).addGroup (layout.createSequentialGroup.addGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addComponent (This.jLabel4).addGroup (layout.createSequentialGroup.addComponent (This.writeOverOriginalJCheckBox).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.generateJButton))).addGap (0, 0, Short_Integer'Last))).addContainerGap));
        layout.setVerticalGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.jPanel2, GroupLayout_Package.PREFERRED_SIZE, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.PREFERRED_SIZE).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addGroup (layout.createParallelGroup (GroupLayout_Package.Alignment.LEADING).addComponent (This.generateJButton).addComponent (This.writeOverOriginalJCheckBox)).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.jLabel4).addPreferredGap (LayoutStyle_Package.ComponentPlacement.RELATED).addComponent (This.jPanel1, GroupLayout_Package.DEFAULT_SIZE, GroupLayout_Package.DEFAULT_SIZE, Short_Integer'Last)));
   end initComponents;

   procedure writeOverOriginalJCheckBoxActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end writeOverOriginalJCheckBoxActionPerformed;

   procedure generateJButtonActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        CanvasImageJPanel'Class (This).process;
   end generateJButtonActionPerformed;

   procedure widthReductionTextFieldActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end widthReductionTextFieldActionPerformed;

   procedure widthReductionTextField1ActionPerformed (This : in out CanvasImageJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end widthReductionTextField1ActionPerformed;

   function getImageProcessorInput (This : in out CanvasImageJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out CanvasImageJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   --  throws IOException
   procedure visit (This : in out CanvasImageJPanel; generatedBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; name : Unbounded_String; index : Integer) is
      generatedBufferedImage : constant BufferedImage_Access := BufferedImage_Access (generatedBufferedImage_Param);
      file : File_Access;
      filePath : Unbounded_String;
      extensionIndex : Integer;
      isWritten : Boolean;
   begin
        This.logUtil.putF (This.commonStrings.VISIT, CanvasImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
        This.result := generatedBufferedImage;
        CanvasImageJPanel'Class (This).getParent.repaint;
        file := This.imageProcessorInput.getFiles (index);
        if not (This.writeOverOriginalJCheckBox.isSelected) then
            filePath := file.getAbsolutePath;
            extensionIndex := Java_Index_Of (filePath, Java_Image (This.imageStrings.PNG_EXTENSION));
            filePath := StringMaker_Package.Create.append (Unbounded_Slice (filePath, (0) + 1, extensionIndex)).append (This.commonSeps.UNDERSCORE).append (name).append (This.imageStrings.PNG_EXTENSION).toString;
            file := File_Package.Create (filePath);
        end if;
        isWritten := ImageIO_Package.write (RenderedImage_Access (This.result), This.imageStrings.PNG, file);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("File: ")).append (StringUtil_Package.getInstance.toString (file)).append (To_Unbounded_String (" Wrote: ")).appendboolean (isWritten).toString, CanvasImageJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end visit;

end org.allbinary.image.gui.CanvasImageJPanel_Package;


