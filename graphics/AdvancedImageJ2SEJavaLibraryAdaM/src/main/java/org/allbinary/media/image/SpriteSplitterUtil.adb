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


package body org.allbinary.media.image.SpriteSplitterUtil_Package is

   procedure Initialize_Fields (This : in out SpriteSplitterUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.ANIMATIONS_LABELS := new Unbounded_String_Array'(To_Unbounded_String ("Row Total:"), To_Unbounded_String ("Column Total:"), To_Unbounded_String ("Column Total:"), To_Unbounded_String ("Row Total:"), To_Unbounded_String ("Column Total:"), To_Unbounded_String ("Row Total:"));
      This.DIRECTIONAL_ANIMATIONS := To_Unbounded_String ("Directional DLRU");
      This.HORIZONTAL_ANIMATIONS := To_Unbounded_String ("Horizontal Animations");
      This.HORIZONTAL_SPRITE := To_Unbounded_String ("Horizontal A=R=Y F=C=X");
      This.ROW_NAME := new Unbounded_String_Array'(To_Unbounded_String ("idle"), To_Unbounded_String ("walk"), To_Unbounded_String ("attack"), To_Unbounded_String ("defeat"));
      This.U_ROW := To_Unbounded_String ("_row");
   end Initialize_Fields;

   procedure Initialize (This : in out SpriteSplitterUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpriteSplitterUtil_Access is
      This : constant SpriteSplitterUtil_Access := new SpriteSplitterUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return SpriteSplitterUtil_Access is
   begin
        return SpriteSplitterUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure process (This : in out SpriteSplitterUtil; imageProcessorInput : ImageProcessorInput_Access; totalFrames : Integer; totalAnimations : Integer; widthReduction : Integer; heightReduction : Integer; increaseWidth : Integer; increaseHeight : Integer; spriteType : Unbounded_String; visitor : ImageProcessedVisitor_Access) is
      bufferedImage : BufferedImage_Access;
      generatedBufferedImageArray : BufferedImage_Access_Array_Access_Array_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      totalFrames2 : Integer;
      cellHeight : Integer;
      cellWidth : Integer;
      columns : Integer;
      rows : Integer;
      nameEnding : Unbounded_String;
      x : Integer;
      y : Integer;
      index3 : Integer;
      index2 : Integer;
      imageUnifierProperties : ImageUnifierProperties_Access;
      imageUnifierCell : ImageUnifierCell_Access;
      tempBufferedImageArray : BufferedImage_Access_Array_Access;
      generatedBufferedImage : BufferedImage_Access;
      imageUtil : ImageUtil_Access;
      index : Integer;
   begin
        bufferedImage := null;
        generatedBufferedImageArray := null;
        bufferedImageArray := imageProcessorInput.getBufferedImageArray;
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            bufferedImage := bufferedImageArray (index);
            This.logUtil.putF (spriteType, This'Unchecked_Access, This.commonStrings.RUN);
            if (spriteType) = (This.HORIZONTAL_SPRITE) then
                cellHeight := (bufferedImage.getHeight) / (totalAnimations);
                cellWidth := (bufferedImage.getWidth) / (totalFrames);
                columns := totalFrames;
                rows := totalAnimations;
                generatedBufferedImageArray := new BufferedImage_Access_Array_Access_Array'(0 .. (rows) - 1 => new BufferedImage_Access_Array'(0 .. (columns) - 1 => null));
                This.logUtil.putF (To_Unbounded_String ("Processing Individual Cells columns: ") & Java_Image (columns) & To_Unbounded_String (" rows: ") & Java_Image (rows), This'Unchecked_Access, This.commonStrings.RUN);
                This.logUtil.putF (To_Unbounded_String ("Processing Individual Cells cellHeight: ") & Java_Image (cellHeight) & To_Unbounded_String (" cellWidth: ") & Java_Image (cellWidth), This'Unchecked_Access, This.commonStrings.RUN);
                imageUtil := ImageUtil_Package.getInstance;
                nameEnding := Null_Unbounded_String;
                x := 0;
                y := 0;
                for index2 in 0 .. (rows) - 1 loop
                    y := (cellHeight) * (index2);
                    for index3 in 0 .. (columns) - 1 loop
                        x := (cellWidth) * (index3);
                        generatedBufferedImageArray (index2) (index3) := bufferedImage.getSubimage ((x) + (widthReduction), (y) + (heightReduction), (cellWidth) - (((widthReduction) * (2))), (cellHeight) - (((heightReduction) * (2))));
                        if ((increaseWidth) /= (0)) or else ((increaseHeight) /= (0)) then
                            generatedBufferedImageArray (index2) (index3) := imageUtil.createBufferedImageAllowTranslate (generatedBufferedImageArray (index2) (index3), (cellWidth) + (increaseWidth), (cellHeight) + (increaseHeight), False, True);
                        end if;
                        nameEnding := StringMaker_Package.Create.appendint (index2).append (This.commonSeps.UNDERSCORE).appendint (index3).toString;
                        visitor.visit (generatedBufferedImageArray (index2) (index3), nameEnding, index);
                    end loop;
                end loop;
                This.logUtil.putF (To_Unbounded_String ("Processing Rows from Cells"), This'Unchecked_Access, This.commonStrings.RUN);
                imageUnifierProperties := ImageUnifierProperties_Package.Create;
                imageUnifierProperties.setRows (To_Unbounded_String (Java_Image (1)));
                imageUnifierProperties.setColumns (To_Unbounded_String (Java_Image (columns)));
                imageUnifierCell := ImageUnifierCell_Package.Create (To_Unbounded_String (Java_Image ((cellWidth) - (((2) * (widthReduction))))), To_Unbounded_String (Java_Image ((cellHeight) - (((2) * (heightReduction))))));
                imageUnifierProperties.setImageUnifierCell (imageUnifierCell);
                for index2 in 0 .. (rows) - 1 loop
                    y := (cellHeight) * (index2);
                    tempBufferedImageArray := new BufferedImage_Access_Array'(0 .. (columns) - 1 => null);
                    for index3 in 0 .. (columns) - 1 loop
                        tempBufferedImageArray (index3) := generatedBufferedImageArray (index2) (index3);
                        nameEnding := StringMaker_Package.Create.appendint (index2).append (This.commonSeps.UNDERSCORE).appendint (1).append (This.U_ROW).toString;
                    end loop;
                    generatedBufferedImage := ImageUnifierUtil_Package.getInstance.getImage (tempBufferedImageArray, imageUnifierProperties);
                    visitor.visit (generatedBufferedImage, nameEnding, index);
                end loop;
            elsif (spriteType) = (This.HORIZONTAL_ANIMATIONS) then
                null;
            elsif (spriteType) = (This.DIRECTIONAL_ANIMATIONS) then
                totalFrames2 := 4;
                cellHeight := (bufferedImage.getHeight) / (totalFrames2);
                cellWidth := (bufferedImage.getWidth) / (totalAnimations);
                columns := totalAnimations;
                rows := totalFrames2;
                generatedBufferedImageArray := new BufferedImage_Access_Array_Access_Array'(0 .. (rows) - 1 => new BufferedImage_Access_Array'(0 .. (columns) - 1 => null));
                This.logUtil.putF (To_Unbounded_String ("Processing Individual Cells for each Direction"), This'Unchecked_Access, This.commonStrings.RUN);
                nameEnding := Null_Unbounded_String;
                x := 0;
                y := 0;
                for index2 in 0 .. (rows) - 1 loop
                    y := (cellHeight) * (index2);
                    for index3 in 0 .. (columns) - 1 loop
                        x := (cellWidth) * (index3);
                        generatedBufferedImageArray (index2) (index3) := bufferedImage.getSubimage ((x) + (widthReduction), (y) + (heightReduction), (cellWidth) - (((widthReduction) * (2))), (cellHeight) - (((heightReduction) * (2))));
                        if ((increaseWidth) /= (0)) or else ((increaseHeight) /= (0)) then
                            generatedBufferedImageArray (index2) (index3) := ImageUtil_Package.getInstance.createBufferedImageAllowTranslate (generatedBufferedImageArray (index2) (index3), (cellWidth) + (increaseWidth), (cellHeight) + (increaseHeight), False, True);
                        end if;
                        nameEnding := StringMaker_Package.Create.append (This.commonStrings.DIRECTION_NAME (index2)).append (This.commonSeps.UNDERSCORE).appendint (index3).toString;
                        visitor.visit (generatedBufferedImageArray (index2) (index3), nameEnding, index);
                    end loop;
                end loop;
                imageUnifierProperties := ImageUnifierProperties_Package.Create;
                imageUnifierProperties.setRows (To_Unbounded_String (Java_Image (1)));
                imageUnifierProperties.setColumns (To_Unbounded_String (Java_Image (columns)));
                imageUnifierCell := ImageUnifierCell_Package.Create ((To_Unbounded_String (Java_Image ((cellWidth) - (((2) * (widthReduction)))))) + (increaseWidth), To_Unbounded_String (Java_Image (((cellHeight) - (((2) * (heightReduction)))) + (increaseHeight))));
                imageUnifierProperties.setImageUnifierCell (imageUnifierCell);
                This.logUtil.putF (To_Unbounded_String ("Processing Rows from Cells for each Direction"), This'Unchecked_Access, This.commonStrings.RUN);
                for index2 in 0 .. (rows) - 1 loop
                    y := (cellHeight) * (index2);
                    tempBufferedImageArray := new BufferedImage_Access_Array'(0 .. (columns) - 1 => null);
                    for index3 in 0 .. (columns) - 1 loop
                        tempBufferedImageArray (index3) := generatedBufferedImageArray (index2) (index3);
                        nameEnding := StringMaker_Package.Create.append (This.commonStrings.DIRECTION_NAME (index2)).append (This.commonSeps.UNDERSCORE).appendint (1).append (This.U_ROW).toString;
                    end loop;
                    generatedBufferedImage := ImageUnifierUtil_Package.getInstance.getImage (tempBufferedImageArray, imageUnifierProperties);
                    visitor.visit (generatedBufferedImage, nameEnding, index);
                end loop;
            end if;
        end loop;
   end process;

   procedure getInstance is
      Java_Result : constant SpriteSplitterUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := SpriteSplitterUtil_Package.Create;

end org.allbinary.media.image.SpriteSplitterUtil_Package;


