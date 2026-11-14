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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.eclipse.swt.graphics.GC_Package; use org.eclipse.swt.graphics.GC_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;
with org.allbinary.media.image.ImageSwtRotationUtil_Package; use org.allbinary.media.image.ImageSwtRotationUtil_Package;
with org.allbinary.media.image.ImageSwtRotationUtil_Package_References;
with org.eclipse.swt.graphics.Image_Package;
with org.eclipse.swt.graphics.Image_Package_References; use type org.eclipse.swt.graphics.Image_Package_References.Image_Access;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.eclipse.swt.widgets.Button_Package;
with org.eclipse.swt.widgets.Canvas_Package;
with org.eclipse.swt.graphics.Color_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
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
with javax.microedition.lcdui.Font_Package;
with org.eclipse.swt.graphics.FontMetrics_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.eclipse.swt.graphics.ImageData_Package;
with org.allbinary.media.image.ImageSwtRotationUtil_Package;
with org.allbinary.media.image.ImageUtil_Package;
with org.eclipse.swt.events.KeyEvent_Package;
with org.eclipse.swt.events.KeyListener_Package;
with org.eclipse.swt.widgets.Layout_Package;
with org.eclipse.swt.widgets.Listener_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.eclipse.swt.widgets.Menu_Package;
with org.eclipse.swt.events.MouseEvent_Package;
with org.eclipse.swt.events.MouseListener_Package;
with org.eclipse.swt.events.MouseMoveListener_Package;
with org.eclipse.swt.events.MouseWheelListener_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.eclipse.swt.events.PaintEvent_Package;
with org.eclipse.swt.events.PaintListener_Package;
with org.eclipse.swt.graphics.PaletteData_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.eclipse.swt.graphics.Point_Package;
with javax.microedition.lcdui.PostLoadImageProcessor_Package;
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

package body org.allbinary.media.image.ImageRotationUtil_Package is

   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package GC_Package renames Standard.org.eclipse.swt.graphics.GC_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
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
   subtype ImageSwtRotationUtil_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access;
   function "=" (Left, Right : ImageSwtRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageSwtRotationUtil_Package_References."=";
   subtype ImageSwtRotationUtil_Access_Array is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array;
   function "=" (Left, Right : ImageSwtRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageSwtRotationUtil_Package_References."=";
   subtype ImageSwtRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageSwtRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageSwtRotationUtil_Package_References."=";
   subtype ImageSwtRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageSwtRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageSwtRotationUtil_Package_References."=";
   subtype ImageSwtRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageSwtRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageSwtRotationUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageRotationUtil'Class) is
   begin
      null;
      This.imageSwtRotationUtil := ImageSwtRotationUtil_Package.getInstance;
      This.features := Features_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageRotationUtil_Access is
   begin
        return ImageRotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageRotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageRotationUtil_Access is
      This : constant ImageRotationUtil_Access := new ImageRotationUtil;
   begin
      ImageRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      originalImage2 : Image_Access;
      openGLESImage : OpenGLESImage_Access;
      originalSwtImage : org.eclipse.swt.graphics.Image_Package_References.Image_Access;
      gc : GC_Access;
      copySwtImage : org.eclipse.swt.graphics.Image_Package_References.Image_Access;
      swtImage : SwtMutableImage_Access;
   begin
        originalImage2 := originalImage;
        if This.features.isFeature (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            if (image.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (image));
                openGLESImage.openGLESImageProperties.angle := totalAngle;
                return;
            else
                PreLogUtil_Package.put (To_Unbounded_String ("OpenGL but image is: ") & Java_Image (image) & To_Unbounded_String (" type: ") & Java_Image (image.getType), ImageRotationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("rotateImage"));
            end if;
        end if;
        originalSwtImage := (org.eclipse.swt.graphics.Image_Package_References.Image_Access (originalImage2.getImage));
        gc := null;
        copySwtImage := null;
        if image.isMutable then
            swtImage := SwtMutableImage_Access (image);
            copySwtImage := org.eclipse.swt.graphics.Image_Package_References.Image_Access (swtImage.getImage);
            gc := swtImage.getGc;
            This.imageSwtRotationUtil.rotateImage (originalSwtImage, copySwtImage, gc, totalAngle);
        else
            PreLogUtil_Package.put (To_Unbounded_String ("No rotation for: ") & image.toString, ImageRotationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("rotateImage"));
        end if;
   end rotateImage;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return originalImage;
   end createRotatedImage;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage_Param => originalImage_Param, rotationInDegrees => rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


