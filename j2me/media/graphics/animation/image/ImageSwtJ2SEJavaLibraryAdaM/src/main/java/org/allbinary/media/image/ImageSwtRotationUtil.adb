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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.eclipse.swt.SWT_Package; use org.eclipse.swt.SWT_Package;
with org.eclipse.swt.graphics.GC_Package; use org.eclipse.swt.graphics.GC_Package;
with org.eclipse.swt.graphics.GC_Package_References;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.eclipse.swt.graphics.Image_Package; use org.eclipse.swt.graphics.Image_Package;
with org.eclipse.swt.graphics.Image_Package_References;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.eclipse.swt.widgets.Button_Package;
with org.eclipse.swt.widgets.Canvas_Package;
with org.eclipse.swt.graphics.Color_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.eclipse.swt.widgets.Composite_Package;
with org.eclipse.swt.widgets.Control_Package;
with org.eclipse.swt.widgets.Decorations_Package;
with org.eclipse.swt.graphics.Device_Package;
with org.eclipse.swt.widgets.Display_Package;
with org.eclipse.swt.events.DragDetectEvent_Package;
with org.eclipse.swt.events.DragDetectListener_Package;
with org.eclipse.swt.graphics.Drawable_Package;
with org.eclipse.swt.widgets.Event_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.eclipse.swt.graphics.Font_Package;
with org.eclipse.swt.graphics.FontMetrics_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.media.image.ImageUtil_Package;
with org.eclipse.swt.events.KeyEvent_Package;
with org.eclipse.swt.events.KeyListener_Package;
with org.eclipse.swt.widgets.Layout_Package;
with org.eclipse.swt.widgets.Listener_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.eclipse.swt.widgets.Menu_Package;
with org.eclipse.swt.events.MouseEvent_Package;
with org.eclipse.swt.events.MouseListener_Package;
with org.eclipse.swt.events.MouseMoveListener_Package;
with org.eclipse.swt.events.MouseWheelListener_Package;
with org.allbinary.logic.NullUtil_Package;
with org.eclipse.swt.events.PaintEvent_Package;
with org.eclipse.swt.events.PaintListener_Package;
with org.eclipse.swt.graphics.PaletteData_Package;
with org.eclipse.swt.graphics.Point_Package;
with org.eclipse.swt.graphics.RGB_Package;
with org.eclipse.swt.graphics.RGBA_Package;
with org.eclipse.swt.graphics.Rectangle_Package;
with org.eclipse.swt.graphics.Resource_Package;
with org.eclipse.swt.internal.SWTEventObject_Package;
with org.eclipse.swt.widgets.Scrollable_Package;
with org.eclipse.swt.events.SelectionEvent_Package;
with org.eclipse.swt.events.SelectionListener_Package;
with org.eclipse.swt.widgets.Shell_Package;
with org.eclipse.swt.events.ShellEvent_Package;
with org.eclipse.swt.events.ShellListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.eclipse.swt.graphics.Transform_Package;
with org.eclipse.swt.events.TypedEvent_Package;
with org.eclipse.swt.widgets.Widget_Package;

package body org.allbinary.media.image.ImageSwtRotationUtil_Package is

   package SWT_Package renames Standard.org.eclipse.swt.SWT_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   function "=" (Left, Right : Features_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   function "=" (Left, Right : Features_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   function "=" (Left, Right : Features_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype GameFeatureFactory_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access;
   function "=" (Left, Right : GameFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
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
   subtype GC_Access is org.eclipse.swt.graphics.GC_Package_References.GC_Access;
   function "=" (Left, Right : GC_Access) return Boolean renames org.eclipse.swt.graphics.GC_Package_References."=";
   subtype GC_Access_Array is org.eclipse.swt.graphics.GC_Package_References.GC_Access_Array;
   function "=" (Left, Right : GC_Access_Array) return Boolean renames org.eclipse.swt.graphics.GC_Package_References."=";
   subtype GC_Access_Array_Access is org.eclipse.swt.graphics.GC_Package_References.GC_Access_Array_Access;
   function "=" (Left, Right : GC_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.GC_Package_References."=";
   subtype GC_Access_Array_Access_Array is org.eclipse.swt.graphics.GC_Package_References.GC_Access_Array_Access_Array;
   function "=" (Left, Right : GC_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.graphics.GC_Package_References."=";
   subtype GC_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.GC_Package_References.GC_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GC_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.GC_Package_References."=";
   subtype Image_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames org.eclipse.swt.graphics.Image_Package_References."=";
   subtype Image_Access_Array is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames org.eclipse.swt.graphics.Image_Package_References."=";
   subtype Image_Access_Array_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.graphics.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Image_Package_References."=";
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
   procedure Initialize_Fields (This : in out ImageSwtRotationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
      This.gameFeatureFactory := GameFeatureFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.NO_COPY := To_Unbounded_String ("SWT should not copy images after initial loading as the alpha is not honored");
   end Initialize_Fields;


   function getInstance return ImageSwtRotationUtil_Access is
   begin
        return ImageSwtRotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageSwtRotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageSwtRotationUtil_Access is
      This : constant ImageSwtRotationUtil_Access := new ImageSwtRotationUtil;
   begin
      ImageSwtRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageSwtRotationUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return bufferedImage;
        end if;
        return bufferedImage;
   end getRotatedImage;

   function getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : constant Image_Access := Image_Access (newBufferedImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageSwtRotationUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return bufferedImage;
        end if;
        return bufferedImage;
   end getRotatedImage2;

   function rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access is
      originalSwtImage : constant Image_Access := Image_Access (originalSwtImage_Param);
      newSwtImage : constant Image_Access := Image_Access (newSwtImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        return ImageSwtRotationUtil'Class (This).getRotatedImage2 (originalSwtImage, newSwtImage, gc, Float (totalAngle));
   end rotateImage;

   function getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newSwtImage : constant Image_Access := Image_Access (newSwtImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        return ImageSwtRotationUtil'Class (This).getRotatedImage2 (bufferedImage, newSwtImage, gc, Float (totalAngle));
   end getRotatedImageSWT;

   function getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) return Image_Access_Array_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      bufferedImageArray : Image_Access_Array_Access;
      angle : Integer;
      size : Integer;
      index : Integer;
   begin
        bufferedImageArray := new Image_Access_Array'(0 .. (numberOfFrames) - 1 => null);
        angle := 0;
        size := bufferedImageArray'Length;
        for index in 0 .. (size) - 1 loop
            angle := (((totalAngle) / (size))) * (index);
            bufferedImageArray (index) := ImageSwtRotationUtil'Class (This).getRotatedImage (bufferedImage, angle);
        end loop;
        return bufferedImageArray;
   end getRotatedImages;

   function createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access) return Image_Access is
      columns : Integer;
      rows : Integer;
      size : Integer;
      firstBufferedImage : Image_Access;
      imageData : ImageData_Access;
      bufferedImage : Image_Access;
      gc : GC_Access;
      columnIndex : Integer;
      rowIndex : Integer;
      nextBufferedImage : Image_Access;
      index : Integer;
   begin
        columns := 9;
        rows := 0;
        size := bufferedImageArray'Length;
        if (size) < (columns) then
            columns := size;
        end if;
        rows := ((size) / (columns));
        if ((size) rem (columns)) /= (0) then
            rows := rows + 1;
        end if;
        firstBufferedImage := bufferedImageArray (0);
        imageData := firstBufferedImage.getImageData;
        bufferedImage := This.imageUtil.create ((imageData.width) * (columns), (imageData.height) * (rows));
        gc := GC_Package.Create (bufferedImage);
        gc.setAntialias (SWT_Package.ON);
        gc.setInterpolation (SWT_Package.HIGH);
        columnIndex := 0;
        rowIndex := 0;
        nextBufferedImage := null;
        for index in 0 .. (size) - 1 loop
            if (((index) / (9)) /= (0)) and then (((index) rem (9)) = (0)) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
            nextBufferedImage := bufferedImageArray (index);
            imageData := nextBufferedImage.getImageData;
            gc.drawImage (bufferedImage, 0, 0, bufferedImage.getBounds.width, bufferedImage.getBounds.height, (imageData.width) * (columnIndex), (imageData.height) * (rowIndex), imageData.width, imageData.height);
            columnIndex := columnIndex + 1;
        end loop;
        gc.dispose;
        return bufferedImage;
   end createSpriteImage;

   procedure getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImage (bufferedImage_Param => bufferedImage_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImage;

   procedure getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImage2 (bufferedImage_Param => bufferedImage_Param, newBufferedImage_Param => newBufferedImage_Param, gc_Param => gc_Param, angle => angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImage2;

   procedure rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).rotateImage (originalSwtImage_Param => originalSwtImage_Param, newSwtImage_Param => newSwtImage_Param, gc_Param => gc_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImage;

   procedure getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImageSWT (bufferedImage_Param => bufferedImage_Param, newSwtImage_Param => newSwtImage_Param, gc_Param => gc_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImageSWT;

   procedure getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageSwtRotationUtil'Class (This).getRotatedImages (bufferedImage_Param => bufferedImage_Param, numberOfFrames => numberOfFrames, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImages;

   procedure createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).createSpriteImage (bufferedImageArray => bufferedImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSpriteImage;

begin
   null;
   instance := ImageSwtRotationUtil_Package.Create;

end org.allbinary.media.image.ImageSwtRotationUtil_Package;


