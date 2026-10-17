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


package body org.allbinary.media.image.ImageUnifierUtil_Package is

   procedure Initialize_Fields (This : in out ImageUnifierUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageUnifierUtil_Access is
   begin
        return ImageUnifierUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageUnifierUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageUnifierUtil_Access is
      This : constant ImageUnifierUtil_Access := new ImageUnifierUtil;
   begin
      ImageUnifierUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getDefaultConfiguration (This : in out ImageUnifierUtil) return GraphicsConfiguration_Access is
      ge : GraphicsEnvironment_Access;
      gd : GraphicsDevice_Access;
   begin
        ge := GraphicsEnvironment_Package.getLocalGraphicsEnvironment;
        gd := ge.getDefaultScreenDevice;
        return gd.getDefaultConfiguration;
   end getDefaultConfiguration;

   function getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties : ImageUnifierProperties_Access) return BufferedImage_Access is
      newBufferedImage : BufferedImage_Access;
      commonLabels : CommonLabels_Access;
      g : Graphics2D_Access;
      columnIndex : Integer;
      rowIndex : Integer;
      x : Integer;
      y : Integer;
      totalColumnsMinusOne : Integer;
      index : Integer;
   begin
        newBufferedImage := This.imageUtil.create (imageUnifierProperties.getWidth, imageUnifierProperties.getHeight);
        commonLabels := CommonLabels_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Setting Image - ") & Java_Image (commonLabels.WIDTH_LABEL) & Java_Image (newBufferedImage.getWidth) & Java_Image (commonLabels.HEIGHT_LABEL) & Java_Image (newBufferedImage.getHeight), This'Unchecked_Access, To_Unbounded_String ("getImage"));
        g := newBufferedImage.createGraphics;
        columnIndex := 0;
        rowIndex := 0;
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            x := (imageUnifierProperties.getImageUnifierCell.getWidth.intValue) * (Java_Post_Increment (columnIndex));
            y := (imageUnifierProperties.getImageUnifierCell.getHeight.intValue) * (rowIndex);
            This.logUtil.putF (To_Unbounded_String ("Adding Image: ") & Java_Image (index) & To_Unbounded_String (" x: ") & Java_Image (x) & To_Unbounded_String (" y: ") & Java_Image (y), This'Unchecked_Access, To_Unbounded_String ("getImage"));
            g.drawImage (bufferedImageArray (index), x, y, imageUnifierProperties.getImageUnifierCell.getWidth.intValue, imageUnifierProperties.getImageUnifierCell.getHeight.intValue, null);
            totalColumnsMinusOne := ((imageUnifierProperties.getColumns.intValue) - (1));
            if (columnIndex) > (totalColumnsMinusOne) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
        end loop;
        g.dispose;
        return newBufferedImage;
   end getImage;

   procedure getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties : ImageUnifierProperties_Access) is
      Java_Result : constant BufferedImage_Access := ImageUnifierUtil'Class (This).getImage (bufferedImageArray, imageUnifierProperties);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

begin
   null;
   instance := ImageUnifierUtil_Package.Create;

end org.allbinary.media.image.ImageUnifierUtil_Package;


