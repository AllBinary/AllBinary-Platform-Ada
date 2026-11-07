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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;
with org.allbinary.media.image.GraphicsEnvironment_Package; use org.allbinary.media.image.GraphicsEnvironment_Package;
with org.allbinary.media.image.GraphicsDevice_Package; use org.allbinary.media.image.GraphicsDevice_Package;
with org.allbinary.media.image.GraphicsConfiguration_Package; use org.allbinary.media.image.GraphicsConfiguration_Package;
with org.allbinary.media.image.GraphicsConfiguration_Package_References;
with org.allbinary.media.image.Graphics2D_Package; use org.allbinary.media.image.Graphics2D_Package;
with org.allbinary.media.image.ImageUnifierProperties_Package; use org.allbinary.media.image.ImageUnifierProperties_Package;
with org.allbinary.media.image.ImageUnifierProperties_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.media.image.ImageUnifierCell_Package;
with org.allbinary.media.image.ImageUnifierProperties_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageUnifierUtil_Package is

   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   subtype ImageUtil_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access;
   function "=" (Left, Right : ImageUtil_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array;
   function "=" (Left, Right : ImageUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access;
   function "=" (Left, Right : ImageUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype GraphicsConfiguration_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access;
   function "=" (Left, Right : GraphicsConfiguration_Access) return Boolean renames org.allbinary.media.image.GraphicsConfiguration_Package_References."=";
   subtype GraphicsConfiguration_Access_Array is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array;
   function "=" (Left, Right : GraphicsConfiguration_Access_Array) return Boolean renames org.allbinary.media.image.GraphicsConfiguration_Package_References."=";
   subtype GraphicsConfiguration_Access_Array_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access;
   function "=" (Left, Right : GraphicsConfiguration_Access_Array_Access) return Boolean renames org.allbinary.media.image.GraphicsConfiguration_Package_References."=";
   subtype GraphicsConfiguration_Access_Array_Access_Array is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.GraphicsConfiguration_Package_References."=";
   subtype GraphicsConfiguration_Access_Array_Access_Array_Access is org.allbinary.media.image.GraphicsConfiguration_Package_References.GraphicsConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.GraphicsConfiguration_Package_References."=";
   subtype ImageUnifierProperties_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access_Array is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   subtype ImageUnifierProperties_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUnifierProperties_Package_References.ImageUnifierProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUnifierProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUnifierProperties_Package_References."=";
   procedure Initialize_Fields (This : in out ImageUnifierUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageUnifierUtil_Access is
   begin
        return ImageUnifierUtil_Access (ImageUnifierUtil_Package.instance);
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

   function getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties_Param : access ImageUnifierProperties_Package.ImageUnifierProperties'Class) return BufferedImage_Access is
      imageUnifierProperties : constant ImageUnifierProperties_Access := ImageUnifierProperties_Access (imageUnifierProperties_Param);
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
        This.logUtil.putF (To_Unbounded_String ("Setting Image - ") & Java_Image (commonLabels.WIDTH_LABEL) & Java_Image (newBufferedImage.getWidth) & Java_Image (commonLabels.HEIGHT_LABEL) & Java_Image (newBufferedImage.getHeight), ImageUnifierUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImage"));
        g := newBufferedImage.createGraphics;
        columnIndex := 0;
        rowIndex := 0;
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            x := (Integer (imageUnifierProperties.getImageUnifierCell.getWidth)) * (Java_Post_Increment (columnIndex));
            y := (Integer (imageUnifierProperties.getImageUnifierCell.getHeight)) * (rowIndex);
            This.logUtil.putF (To_Unbounded_String ("Adding Image: ") & Java_Image (index) & To_Unbounded_String (" x: ") & Java_Image (x) & To_Unbounded_String (" y: ") & Java_Image (y), ImageUnifierUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImage"));
            g.drawImage (bufferedImageArray (index), x, y, Integer (imageUnifierProperties.getImageUnifierCell.getWidth), Integer (imageUnifierProperties.getImageUnifierCell.getHeight), null);
            totalColumnsMinusOne := ((Integer (imageUnifierProperties.getColumns)) - (1));
            if (columnIndex) > (totalColumnsMinusOne) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
        end loop;
        g.dispose;
        return newBufferedImage;
   end getImage;

   procedure getImage (This : in out ImageUnifierUtil; bufferedImageArray : BufferedImage_Access_Array_Access; imageUnifierProperties_Param : access ImageUnifierProperties_Package.ImageUnifierProperties'Class) is
      Java_Result : constant BufferedImage_Access := ImageUnifierUtil'Class (This).getImage (bufferedImageArray => bufferedImageArray, imageUnifierProperties_Param => imageUnifierProperties_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

begin
   null;
   instance := ImageUnifierUtil_Package.Create;

end org.allbinary.media.image.ImageUnifierUtil_Package;


