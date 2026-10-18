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
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImagePersistanceUtil_Package; use org.allbinary.media.image.ImagePersistanceUtil_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package body org.allbinary.image.gui.CreateIconImagesJPanel_Package is

   package File_Package renames Standard.java.io.File_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ImagePersistanceUtil_Package renames Standard.org.allbinary.media.image.ImagePersistanceUtil_Package;
   package ImageUtil_Package renames Standard.org.allbinary.media.image.ImageUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out CreateIconImagesJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.aboveJButton := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CreateIconImagesJPanel'Class; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
      numberStringArray : Unbounded_String_Array_Access;
      index : Integer;
      araster : Raster_Access;
   begin
        JPanel_Package.Initialize (This);
        Initialize_Fields (This);
        CreateIconImagesJPanel'Class (This).initComponents;
        This.imageProcessorInput := imageProcessorInput;
        numberStringArray := new Unbounded_String_Array'(0 .. (101) - 1 => Null_Unbounded_String);
        numberStringArray (0) := To_Unbounded_String (Java_Image (-(1)));
        for index in 1 .. (100) - 1 loop
            numberStringArray (index) := To_Unbounded_String (Java_Image (index));
        end loop;
        araster := This.imageProcessorInput.getBufferedImageArray (0).getAlphaRaster;
        if (araster) = (null) then
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("there is no Alpha channel!!!!!!!!!")));
        else
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Alpha channel found !")));
        end if;
   end Initialize;

   function Create (imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) return CreateIconImagesJPanel_Access is
      This : constant CreateIconImagesJPanel_Access := new CreateIconImagesJPanel;
   begin
      CreateIconImagesJPanel_Package.Initialize (This.all, imageProcessorInput_Param);
      return This;
   end Create;

   procedure process (This : in out CreateIconImagesJPanel) is
   begin
        Thread_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        imageUtil : ImageUtil_Access;
--        stringMaker : StringMaker_Access;
--        imageProcessorInput : ImageProcessorInput_Access;
--        files : File_Access_Array_Access;
--        iconWidthList : BasicArrayList_Access;
--        iconHeightList : BasicArrayList_Access;
--        ANDROID : Unbounded_String;
--        IOS : Unbounded_String;
--        size : Integer;
--        width : Integer;
--        height : Integer;
--        generatedBufferedImageArray : BufferedImage_Access_Array_Access;
--        imagePersistanceUtil : ImagePersistanceUtil_Access;
--        filePath : Unbounded_String;
--        endIndex : Integer;
--        path : Unbounded_String;
--        newFilePath : Unbounded_String;
--        index : Integer;
--        index2 : Integer;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  begin
--                      imageUtil := ImageUtil_Package.getInstance;
--                      stringMaker := StringMaker_Package.Create;
--                      imageProcessorInput := CreateIconImagesJPanel'Class (This).getImageProcessorInput;
--                      files := imageProcessorInput.getFiles;
--                      iconWidthList := BasicArrayList_Access (BasicArrayListD_Package.Create);
--                      iconHeightList := BasicArrayList_Access (BasicArrayListD_Package.Create);
--                      iconWidthList.add (864);
--                      iconHeightList.add (864);
--                      ANDROID := To_Unbounded_String ("android-icon-");
--                      IOS := To_Unbounded_String ("ios-icon-");
--                      size := iconWidthList.size;
--                      width := 0;
--                      height := 0;
--                      for index2 in 0 .. (size) - 1 loop
--                          width := (Integer (iconWidthList.get (index2))).intValue;
--                          height := (Integer (iconHeightList.get (index2))).intValue;
--                          generatedBufferedImageArray := imageUtil.createBufferedImage3 (imageProcessorInput.getBufferedImageArray, width, height, True);
--                          imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
--                          for index in 0 .. (generatedBufferedImageArray'Length) - 1 loop
--                              filePath := files (index).getAbsolutePath;
--                              endIndex := Java_Last_Index_Of (filePath, Java_Image ('\'));
--                              path := Unbounded_Slice (filePath, (0) + 1, (endIndex) + (1));
--                              stringMaker.delete (0, stringMaker.length);
--                              stringMaker.append (path).append (ANDROID).appendint (width).append (CanvasStrings_Package.getInstance.U_PNG);
--                              newFilePath := stringMaker.toString;
--                              imagePersistanceUtil.saveWithBatik (AbFile_Package.createAbFile (newFilePath), generatedBufferedImageArray (index));
--                              stringMaker.delete (0, stringMaker.length);
--                              stringMaker.append (path).append (IOS).appendint (width).append (CanvasStrings_Package.getInstance.U_PNG);
--                              newFilePath := stringMaker.toString;
--                              imagePersistanceUtil.saveWithBatik (AbFile_Package.createAbFile (newFilePath), generatedBufferedImageArray (index));
--                          end loop;
--                      end loop;
--                      CreateIconImagesJPanel'Class (This).getParent.repaint;
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (This.commonStrings.EXCEPTION_Id, CreateIconImagesJPanel_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
.start;
   end process;

   function getImageProcessorInput (This : in out CreateIconImagesJPanel) return ImageProcessorInput_Access is
   begin
        return This.imageProcessorInput;
   end getImageProcessorInput;

   procedure setImageProcessorInput (This : in out CreateIconImagesJPanel; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is
      imageProcessorInput : constant ImageProcessorInput_Access := ImageProcessorInput_Access (imageProcessorInput_Param);
   begin
        This.imageProcessorInput := imageProcessorInput;
   end setImageProcessorInput;

   procedure initComponents (This : in out CreateIconImagesJPanel) is
      layout : GroupLayout_Access;
   begin
        This.aboveJButton := JButton_Package.Create;
        This.aboveJButton.setText (To_Unbounded_String ("Process"));
        This.aboveJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  CreateIconImagesJPanel'Class (This).aboveJButtonActionPerformed (evt);
--     end actionPerformed;
);
        layout := GroupLayout_Package.Create (CreateIconImagesJPanel_Access'(This'Unchecked_Access));
        CreateIconImagesJPanel'Class (This).setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addComponent (This.aboveJButton).addGap (0, 335, Short_Integer'Last)));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (layout.createSequentialGroup.addContainerGap.addComponent (This.aboveJButton).addContainerGap (286, Short_Integer'Last)));
   end initComponents;

   procedure aboveJButtonActionPerformed (This : in out CreateIconImagesJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        CreateIconImagesJPanel'Class (This).process;
   end aboveJButtonActionPerformed;

end org.allbinary.image.gui.CreateIconImagesJPanel_Package;


