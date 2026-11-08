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
with android.app.Activity_Package; use android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.thread.ARunnable_Package_References;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package PreResourceImageUtil_Package renames Standard.org.allbinary.image.PreResourceImageUtil_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package ImageAnimation_Package renames Standard.org.allbinary.animation.image.ImageAnimation_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;
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
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   function "=" (Left, Right : Activity_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   function "=" (Left, Right : Activity_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   function "=" (Left, Right : Activity_Access_Array_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
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
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype ARunnable_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access;
   function "=" (Left, Right : ARunnable_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array;
   function "=" (Left, Right : ARunnable_Access_Array) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access;
   function "=" (Left, Right : ARunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array_Access_Array is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ARunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   subtype ARunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ARunnable_Package_References.ARunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ARunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ARunnable_Package_References."=";
   procedure Initialize_Fields (This : in out AndroidBasicTitleProgressBar'Class) is
   begin
      null;
      This.showTitleProgressBarRunnable := ARunnable_Access (NullRunnable_Package.getInstance);
      This.dismissTitleProgressBarRunnable := ARunnable_Access (NullRunnable_Package.getInstance);
      This.titleProgressDialogPortionSetProgressRunnable := ARunnable_Access (NullRunnable_Package.getInstance);
      This.titleProgressDialogSetProgressRunnable := ARunnable_Access (NullRunnable_Package.getInstance);
      This.midletActivity := Activity_Access (AndroidUtil_Package.NULL_ACTIVITY);
      This.portion := 0;
      This.IMAGE := new Image_Access_Array'(0 .. (4) - 1 => null);
      This.image_Case := Image_Access (NullImage_Package.NULL_IMAGE);
      This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidBasicTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      size : Integer;
      index : Integer;
   begin
        ProgressCanvas_Package.Initialize (This, title, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        AndroidBasicTitleProgressBar'Class (This).init;
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access));
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            This.IMAGE (index) := Image_Access (NullImage_Package.NULL_IMAGE);
        end loop;
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return AndroidBasicTitleProgressBar_Access is
      This : constant AndroidBasicTitleProgressBar_Access := new AndroidBasicTitleProgressBar;
   begin
      AndroidBasicTitleProgressBar_Package.Initialize (This.all, title, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure init (This : in out AndroidBasicTitleProgressBar) is
   begin
        begin
            if (AndroidBasicTitleProgressBar_Package.background) /= (0) then
                ResourceUtil_Package.getInstance.addResource (AndroidBasicTitleProgressBar_Package.RESOURCE, AndroidBasicTitleProgressBar_Package.background);
                GameFeatureImageCacheFactory_Package.init;
                This.image_Case := ImageCacheFactory_Package.getInstance.getWithKey (AndroidBasicTitleProgressBar_Package.RESOURCE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure initActivity (This : in out AndroidBasicTitleProgressBar; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
        begin
            if (This.midletActivity) /= (activity) then
                This.midletActivity := activity;
                This.showTitleProgressBarRunnable := ARunnable_Access (ShowTitleProgressBarRunnable_Package.Create (This.midletActivity, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access)));
                This.dismissTitleProgressBarRunnable := ARunnable_Access (DismissTitleProgressBarRunnable_Package.Create (This.midletActivity, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access)));
                This.titleProgressDialogSetProgressRunnable := ARunnable_Access (TitleProgressBarSetProgressRunnable_Package.Create (This.midletActivity, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access)));
                This.titleProgressDialogPortionSetProgressRunnable := ARunnable_Access (TitleProgressBarPortionSetProgressRunnable_Package.Create (This.midletActivity, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access)));
                AndroidBasicTitleProgressBar'Class (This).loadProgressImages;
            end if;
            AndroidBasicTitleProgressBar'Class (This).updateCurrent;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
                end;
        end;
   end initActivity;

   procedure updateCurrent (This : in out AndroidBasicTitleProgressBar) is
      displayInfo : DisplayInfoSingleton_Access;
      currentImage : Image_Access;
   begin
        begin
            if not (AndroidBasicTitleProgressBar'Class (This).isBackground) then
                This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
            elsif (AndroidBasicTitleProgressBar_Package.background) /= (0) then
                displayInfo := DisplayInfoSingleton_Package.getInstance;
                currentImage := null;
                if displayInfo.isPortrait then
                    currentImage := AndroidBasicTitleProgressBar'Class (This).getImage (0);
                else
                    currentImage := AndroidBasicTitleProgressBar'Class (This).getImage (2);
                end if;
                if (currentImage) = (null) then
                    This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
                else
                    This.animation := Animation_Access (ImageAnimation_Package.Create (currentImage, AnimationBehavior_Package.getInstance));
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end updateCurrent;

   procedure onEvent (This : in out AndroidBasicTitleProgressBar; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out AndroidBasicTitleProgressBar; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        begin
            AndroidBasicTitleProgressBar'Class (This).loadProgressImages;
            AndroidBasicTitleProgressBar'Class (This).updateCurrent;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (Java_Image (This.commonStrings.EXCEPTION_LABEL) & ExceptionUtil_Package.getInstance.getStackTrace (e), AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
                end;
        end;
   end onDisplayChangeEvent;

   procedure loadProgressImages (This : in out AndroidBasicTitleProgressBar) is
      displayInfo : DisplayInfoSingleton_Access;
      lastWidth : Integer;
      lastHeight : Integer;
   begin
        begin
            displayInfo := DisplayInfoSingleton_Package.getInstance;
            lastWidth := displayInfo.getLastWidth;
            lastHeight := displayInfo.getLastHeight;
            if displayInfo.isPortraitWH (lastWidth, lastHeight) then
                AndroidBasicTitleProgressBar'Class (This).setImages (0, lastWidth, lastHeight);
            else
                AndroidBasicTitleProgressBar'Class (This).setImages (2, lastWidth, lastHeight);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (To_Unbounded_String ("IllegalArgumentException ") & ExceptionUtil_Package.getInstance.getStackTrace (e), AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), To_Unbounded_String ("loadProgressImages"));
            This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
                end;
        end;
   end loadProgressImages;

   function isInitialized (This : in out AndroidBasicTitleProgressBar) return Boolean is
   begin
        if (Java_Object_Access (This.midletActivity)) /= (Java_Object_Access (AndroidUtil_Package.NULL_ACTIVITY)) then
            return True;
        else
            return False;
        end if;
   end isInitialized;

   procedure start (This : in out AndroidBasicTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME);
            ProgressCanvas_Package.ProgressCanvas (This).start;
            This.midletActivity.runOnUiThread (This.showTitleProgressBarRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME, e);
                end;
        end;
   end start;

   procedure end_Id (This : in out AndroidBasicTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.END_METHOD_NAME);
            This.midletActivity.runOnUiThread (This.dismissTitleProgressBarRunnable);
            ProgressCanvas_Package.ProgressCanvas (This).end_Id;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.END_METHOD_NAME, e);
                end;
        end;
   end end_Id;

   procedure addEarlyPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        begin
            This.portion := value;
            ProgressCanvas_Package.ProgressCanvas (This).addEarlyPortion (value, text, index);
            if (Java_Object_Access (This.midletActivity)) /= (Java_Object_Access (AndroidUtil_Package.NULL_ACTIVITY)) then
                This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.ADD_PORTION, e);
                end;
        end;
   end addEarlyPortion;

   procedure addPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        begin
            This.portion := value;
            ProgressCanvas_Package.ProgressCanvas (This).addPortion (value, text, index);
            This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.ADD_PORTION, e);
                end;
        end;
   end addPortion;

   procedure addNormalPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String) is
   begin
        begin
            This.portion := value;
            ProgressCanvas_Package.ProgressCanvas (This).addNormalPortion (value, text);
            This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.ADD_PORTION, e);
                end;
        end;
   end addNormalPortion;

   procedure setValue (This : in out AndroidBasicTitleProgressBar; value : Integer) is
   begin
        begin
            ProgressCanvas_Package.ProgressCanvas (This).setValue (value);
            This.midletActivity.runOnUiThread (This.titleProgressDialogSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), To_Unbounded_String ("setValue"), e);
                end;
        end;
   end setValue;

   procedure waitUntilDisplayed (This : in out AndroidBasicTitleProgressBar) is
   begin
        null;
   end waitUntilDisplayed;

   --  throws Exception
   procedure setImages (This : in out AndroidBasicTitleProgressBar; index : Integer; lastWidth : Integer; lastHeight : Integer) is
      image_Case : Image_Access;
      nextIndex : Integer;
   begin
        image_Case := This.image_Case;
        if (Java_Object_Access (image)) /= (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
            if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
                if (Java_Object_Access (This.IMAGE (index))) = (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
                    This.IMAGE (index) := ImageScaleUtil_Package.getInstance.createImage2 (ImageCacheFactory_Package.getInstance, image, Float (lastWidth), Float (image.getWidth), (Float (lastHeight)) - (20.0), Float (image.getHeight), False);
                end if;
            else
                nextIndex := (index) + (1);
                if (Java_Object_Access (This.IMAGE (nextIndex))) = (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
                    This.IMAGE (nextIndex) := ImageScaleUtil_Package.getInstance.createImage2 (ImageCacheFactory_Package.getInstance, image, Float (lastWidth), Float (image.getWidth), (Float (lastHeight)) - (28.0), Float (image.getHeight), False);
                end if;
            end if;
        end if;
   end setImages;

   --  throws Exception
   procedure initOpenGL (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        This.image_Case := GameFeatureImageCacheFactory_Package.getInstance.getWithKey (AndroidBasicTitleProgressBar_Package.RESOURCE);
        preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            if (Java_Object_Access (This.IMAGE (index))) /= (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
                This.IMAGE (index) := preResourceImageUtil.encapsulate (This.IMAGE (index));
            end if;
        end loop;
        AndroidBasicTitleProgressBar'Class (This).updateCurrent;
   end initOpenGL;

   --  throws Exception
   procedure update (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        AndroidBasicTitleProgressBar'Class (This).initOpenGL (graphics);
        This.image_Case := GameFeatureImageCacheFactory_Package.getInstance.getWithKey (AndroidBasicTitleProgressBar_Package.RESOURCE);
        preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            if (Java_Object_Access (This.IMAGE (index))) /= (Java_Object_Access (NullImage_Package.NULL_IMAGE)) then
                preResourceImageUtil.update (graphics, This.IMAGE (index));
            end if;
        end loop;
   end update;

   --  throws Exception
   function getImage (This : in out AndroidBasicTitleProgressBar; index : Integer) return Image_Access is
      image_Case : Image_Access;
   begin
        image_Case := Image_Access (NullImage_Package.NULL_IMAGE);
        if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
            image := This.IMAGE (index);
        else
            image := This.IMAGE ((index) + (1));
        end if;
        return image;
   end getImage;

   procedure paint2 (This : in out AndroidBasicTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        begin
            This.animation.paintXY (graphics, 0, 20);
            ProgressCanvas_Package.ProgressCanvas (This).paint2 (graphics);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidBasicTitleProgressBar_Access'(This'Unchecked_Access), This.canvasStrings.PAINT, e);
                end;
        end;
   end paint2;

   procedure setBackgroundResource (background : Integer) is
   begin
        AndroidBasicTitleProgressBar_Package.background := background;
   end setBackgroundResource;

   procedure setBackground (This : in out AndroidBasicTitleProgressBar; background : Boolean) is
   begin
        ProgressCanvas_Package.ProgressCanvas (This).setBackground (background);
        AndroidBasicTitleProgressBar'Class (This).updateCurrent;
   end setBackground;

   procedure setPortion (This : in out AndroidBasicTitleProgressBar; portion : Integer) is
   begin
        This.portion := portion;
   end setPortion;

   function getPortion (This : in out AndroidBasicTitleProgressBar) return Integer is
   begin
        return This.portion;
   end getPortion;

   procedure getImage (This : in out AndroidBasicTitleProgressBar; index : Integer) is
      Java_Result : constant Image_Access := AndroidBasicTitleProgressBar'Class (This).getImage (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

begin
   null;
   RESOURCE := To_Unbounded_String ("ProgressImage");
   background := 0;

end org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package;


