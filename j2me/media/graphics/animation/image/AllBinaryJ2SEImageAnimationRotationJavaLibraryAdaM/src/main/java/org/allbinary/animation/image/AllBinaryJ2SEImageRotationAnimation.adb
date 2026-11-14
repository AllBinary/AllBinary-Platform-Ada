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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
with org.allbinary.media.image.ImageRotationUtil_Package; use org.allbinary.media.image.ImageRotationUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package_References;
with org.allbinary.animation.image.ModifierBaseProcessor_Package; use org.allbinary.animation.image.ModifierBaseProcessor_Package;
with org.allbinary.animation.image.ModifierBaseProcessor_Package_References;
with org.allbinary.animation.image.ScaleProcessor_Package; use org.allbinary.animation.image.ScaleProcessor_Package;
with org.allbinary.animation.image.ScaleBaseProcessor_Package; use org.allbinary.animation.image.ScaleBaseProcessor_Package;
with org.allbinary.animation.image.ScaleBaseProcessor_Package_References;
with org.allbinary.animation.image.SetColorProcessor_Package; use org.allbinary.animation.image.SetColorProcessor_Package;
with org.allbinary.animation.image.ChangeColorProcessor_Package; use org.allbinary.animation.image.ChangeColorProcessor_Package;
with org.allbinary.animation.image.AlphaProcessor_Package; use org.allbinary.animation.image.AlphaProcessor_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.animation.image.AlphaProcessor_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.eclipse.swt.widgets.Button_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.eclipse.swt.widgets.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.animation.image.ChangeColorProcessor_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.eclipse.swt.graphics.Color_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.eclipse.swt.widgets.Composite_Package;
with org.eclipse.swt.widgets.Control_Package;
with org.eclipse.swt.widgets.Decorations_Package;
with org.microemu.device.Device_Package;
with org.eclipse.swt.graphics.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with javax.microedition.lcdui.Display_Package;
with org.eclipse.swt.widgets.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.eclipse.swt.events.DragDetectEvent_Package;
with org.eclipse.swt.events.DragDetectListener_Package;
with org.eclipse.swt.graphics.Drawable_Package;
with javax.microedition.lcdui.Event_Package;
with org.eclipse.swt.widgets.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package;
with org.eclipse.swt.graphics.Font_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with org.eclipse.swt.graphics.FontMetrics_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.math.FrameUtil_Package;
with org.eclipse.swt.graphics.GC_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.eclipse.swt.graphics.ImageData_Package;
with org.allbinary.image.ImageFactory_Package;
with org.allbinary.media.image.ImageScaleUtil_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.media.image.ImageSwtRotationUtil_Package;
with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.eclipse.swt.events.KeyEvent_Package;
with org.eclipse.swt.events.KeyListener_Package;
with org.eclipse.swt.widgets.Layout_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.eclipse.swt.widgets.Listener_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.eclipse.swt.widgets.Menu_Package;
with org.allbinary.animation.image.ModifierBaseProcessor_Package;
with org.eclipse.swt.events.MouseEvent_Package;
with org.eclipse.swt.events.MouseListener_Package;
with org.eclipse.swt.events.MouseMoveListener_Package;
with org.eclipse.swt.events.MouseWheelListener_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.eclipse.swt.events.PaintEvent_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.eclipse.swt.events.PaintListener_Package;
with org.eclipse.swt.graphics.PaletteData_Package;
with org.eclipse.swt.graphics.Point_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.eclipse.swt.graphics.RGB_Package;
with org.eclipse.swt.graphics.RGBA_Package;
with org.eclipse.swt.graphics.Rectangle_Package;
with org.eclipse.swt.graphics.Resource_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.eclipse.swt.internal.SWTEventObject_Package;
with org.allbinary.animation.image.ScaleBaseProcessor_Package;
with org.allbinary.animation.image.ScaleProcessor_Package;
with javax.microedition.lcdui.Screen_Package;
with org.eclipse.swt.widgets.Scrollable_Package;
with org.eclipse.swt.events.SelectionEvent_Package;
with org.eclipse.swt.events.SelectionListener_Package;
with org.allbinary.animation.image.SetColorProcessor_Package;
with org.eclipse.swt.widgets.Shell_Package;
with org.eclipse.swt.events.ShellEvent_Package;
with org.eclipse.swt.events.ShellListener_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.eclipse.swt.graphics.Transform_Package;
with org.allbinary.TsUtil_Package;
with org.eclipse.swt.events.TypedEvent_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.eclipse.swt.widgets.Widget_Package;

package body org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
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
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageRotationUtil_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access;
   function "=" (Left, Right : ImageRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ModifierBaseProcessor_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access;
   function "=" (Left, Right : ModifierBaseProcessor_Access) return Boolean renames org.allbinary.animation.image.ModifierBaseProcessor_Package_References."=";
   subtype ModifierBaseProcessor_Access_Array is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array;
   function "=" (Left, Right : ModifierBaseProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.ModifierBaseProcessor_Package_References."=";
   subtype ModifierBaseProcessor_Access_Array_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access;
   function "=" (Left, Right : ModifierBaseProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ModifierBaseProcessor_Package_References."=";
   subtype ModifierBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ModifierBaseProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ModifierBaseProcessor_Package_References."=";
   subtype ModifierBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModifierBaseProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ModifierBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   subtype ScaleBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleBaseProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ScaleBaseProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryJ2SEImageRotationAnimation'Class) is
   begin
      null;
      This.imageRotationUtil := ImageRotationUtil_Package.getInstance;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      
      This.originalImageArray := new Image_Access_Array'(0 .. (1) - 1 => null);
      This.twoImages := new Image_Access_Array'(0 .. (2) - 1 => null);
      
      This.bufferedImageIndex := 0;
      This.lastScaleX := 1.0;
      This.lastScaleY := 1.0;
      This.scaleX := 1.0;
      This.scaleY := 1.0;
      This.maxScaleX := 0.0;
      This.maxScaleY := 0.0;
      This.alphaProcessor := ModifierBaseProcessor_Package.getInstance;
      This.setColorProcessor := ModifierBaseProcessor_Package.getInstance;
      This.changeColorProcessor := ModifierBaseProcessor_Package.getInstance;
      This.scaleProcessor := ScaleProcessor_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.realOriginalImage := originalImage;
        This.originalImageArray (0) := originalImage;
        This.imageToShow := image;
        This.twoImages (0) := image;
        This.twoImages (1) := ImageCopyUtil_Package.getInstance.createImageForRotation (image);
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryJ2SEImageRotationAnimation_Access is
      This : constant AllBinaryJ2SEImageRotationAnimation_Access := new AllBinaryJ2SEImageRotationAnimation;
   begin
      AllBinaryJ2SEImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((AllBinaryJ2SEImageRotationAnimation'Class (This).getBasicColorP) = (null)) or else ((AllBinaryJ2SEImageRotationAnimation'Class (This).getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.setColorProcessor := ModifierBaseProcessor_Access (SetColorProcessor_Package.getInstance);
            AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((AllBinaryJ2SEImageRotationAnimation'Class (This).getChangeBasicColor) = (null)) or else ((AllBinaryJ2SEImageRotationAnimation'Class (This).getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).changeBasicColor (basicColor);
        if changed then
            This.changeColorProcessor := ModifierBaseProcessor_Access (ChangeColorProcessor_Package.getInstance);
            AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out AllBinaryJ2SEImageRotationAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setAlpha (alpha);
        if changed then
            This.alphaProcessor := ModifierBaseProcessor_Access (AlphaProcessor_Package.getInstance);
            AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
        end if;
   end setAlpha;

   procedure setScale (This : in out AllBinaryJ2SEImageRotationAnimation; scaleX : Float; scaleY : Float) is
   begin
        This.scaleX := scaleX;
        This.scaleY := scaleY;
        if ((This.scaleX) /= (This.lastScaleX)) or else ((This.scaleY) /= (This.lastScaleY)) then
            This.scaleProcessor.update (This.realOriginalImage, This.originalImageArray, This.twoImages, This.bufferedImageIndex, This.scaleX, This.scaleY, This.maxScaleX, This.maxScaleY);
            AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
        end if;
        This.lastScaleX := This.scaleX;
        This.lastScaleY := This.scaleY;
   end setScale;

   procedure setMaxScale (This : in out AllBinaryJ2SEImageRotationAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        This.maxScaleX := maxScaleX;
        This.maxScaleY := maxScaleY;
        This.scaleProcessor.update (This.realOriginalImage, This.originalImageArray, This.twoImages, This.bufferedImageIndex, This.scaleX, This.scaleY, This.maxScaleX, This.maxScaleY);
        AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
   end setMaxScale;

   procedure nextRotation (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).nextRotation;
        AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).previousRotation;
        AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        This.imageRotationUtil.rotateImage (This.originalImageArray (0), This.twoImages (This.bufferedImageIndex), (Integer (This.angleInfo.getAngle)) + (90));
        This.alphaProcessor.updateAlpha (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.alphaP);
        This.setColorProcessor.updateColor (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.basicColor);
        This.changeColorProcessor.updateColor (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.changeBasicColorP);
        AllBinaryJ2SEImageRotationAnimation'Class (This).swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryJ2SEImageRotationAnimation; index : Integer) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setFrame (index);
        AllBinaryJ2SEImageRotationAnimation'Class (This).updateImage;
   end setFrame;

   procedure swap (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        This.imageToShow := This.twoImages (This.bufferedImageIndex);
        if (This.bufferedImageIndex) = (0) then
            This.bufferedImageIndex := 1;
        else
            This.bufferedImageIndex := 0;
        end if;
   end swap;

   procedure paintXY (This : in out AllBinaryJ2SEImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.imageToShow, x, y, This.anchor);
   end paintXY;

   --  throws Exception
   procedure close (This : in out AllBinaryJ2SEImageRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).close;
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.twoImages'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.twoImages (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.realOriginalImage);
        disposalUtil.disposeImage (This.imageToShow);
   end close;

   --  throws Throwable
   procedure finalize (This : in out AllBinaryJ2SEImageRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).finalize;
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.twoImages'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.twoImages (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.realOriginalImage);
        disposalUtil.disposeImage (This.imageToShow);
   end finalize;

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;


