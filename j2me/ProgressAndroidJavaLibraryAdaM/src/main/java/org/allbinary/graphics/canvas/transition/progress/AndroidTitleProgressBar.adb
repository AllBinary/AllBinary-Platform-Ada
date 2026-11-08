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
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
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

package body org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
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
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out AndroidTitleProgressBar'Class) is
   begin
      null;
      This.showTitleProgressBarRunnable_Var := ShowTitleProgressBarRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.dismissTitleProgressBarRunnable_Var := DismissTitleProgressBarRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressDialogPortionSetProgressRunnable := TitleProgressBarPortionSetProgressRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressDialogSetProgressRunnable := TitleProgressBarSetProgressRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressActivity := ProgressActivityInterface_Access (NullProgressActivity_Package.NULL_PROGRESS_ACTIVITY);
      This.portion := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ProgressCanvas_Package.Initialize (This, title, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return AndroidTitleProgressBar_Access is
      This : constant AndroidTitleProgressBar_Access := new AndroidTitleProgressBar;
   begin
      AndroidTitleProgressBar_Package.Initialize (This.all, title, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure init (This : in out AndroidTitleProgressBar; activity_Param : access ProgressActivityInterface_Package.ProgressActivityInterface'Class) is
      activity : constant ProgressActivityInterface_Access := ProgressActivityInterface_Access (activity_Param);
   begin
        This.progressActivity := activity;
   end init;

   function isInitialized (This : in out AndroidTitleProgressBar) return Boolean is
   begin
        if (Java_Object_Access (This.progressActivity)) /= (Java_Object_Access (NullProgressActivity_Package.NULL_PROGRESS_ACTIVITY)) then
            return True;
        else
            return False;
        end if;
   end isInitialized;

   procedure start (This : in out AndroidTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME);
            ProgressCanvas_Package.ProgressCanvas (This).start;
            This.progressActivity.runOnUiThread (This.showTitleProgressBarRunnable_Var);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME, e);
                end;
        end;
   end start;

   procedure end_Id (This : in out AndroidTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.END_METHOD_NAME);
            This.progressActivity.runOnUiThread (This.dismissTitleProgressBarRunnable_Var);
            ProgressCanvas_Package.ProgressCanvas (This).end_Id;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.END_METHOD_NAME, e);
                end;
        end;
   end end_Id;

   procedure addPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        begin
            ProgressCanvas_Package.ProgressCanvas (This).addPortion (value, text, index);
            This.portion := value;
            This.progressActivity.runOnUiThread (This.progressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.ADD_PORTION, e);
                end;
        end;
   end addPortion;

   procedure addNormalPortion (This : in out AndroidTitleProgressBar; value : Integer; text : Unbounded_String) is
   begin
        begin
            ProgressCanvas_Package.ProgressCanvas (This).addNormalPortion (value, text);
            This.portion := value;
            This.progressActivity.runOnUiThread (This.progressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.ADD_PORTION, e);
                end;
        end;
   end addNormalPortion;

   procedure setValue (This : in out AndroidTitleProgressBar; value : Integer) is
   begin
        begin
            ProgressCanvas_Package.ProgressCanvas (This).setValue (value);
            This.progressActivity.runOnUiThread (This.progressDialogSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), To_Unbounded_String ("setValue"), e);
                end;
        end;
   end setValue;

   procedure waitUntilDisplayed (This : in out AndroidTitleProgressBar) is
   begin
        null;
   end waitUntilDisplayed;

   procedure paint (This : in out AndroidTitleProgressBar; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

end org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package; use org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out TitleProgressBarSetProgressRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TitleProgressBarSetProgressRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) is
      androidTitleProgressBar_Var : constant AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Var_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar_Var := androidTitleProgressBar_Var;
   end Initialize;

   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return TitleProgressBarSetProgressRunnable_Access is
      This : constant TitleProgressBarSetProgressRunnable_Access := new TitleProgressBarSetProgressRunnable;
   begin
      TitleProgressBarSetProgressRunnable_Package.Initialize (This.all, androidTitleProgressBar_Var_Param);
      return This;
   end Create;
    
   procedure run (This : in out TitleProgressBarSetProgressRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      value : Integer;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            begin
                value := Integer (This.androidTitleProgressBar_Var.getValue);
                This.androidTitleProgressBar_Var.progressActivity.onTitleProgressBarSetProgress (value);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, TitleProgressBarSetProgressRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package; use org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
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
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out TitleProgressBarPortionSetProgressRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TitleProgressBarPortionSetProgressRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) is
      androidTitleProgressBar_Var : constant AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Var_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar_Var := androidTitleProgressBar_Var;
   end Initialize;

   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return TitleProgressBarPortionSetProgressRunnable_Access is
      This : constant TitleProgressBarPortionSetProgressRunnable_Access := new TitleProgressBarPortionSetProgressRunnable;
   begin
      TitleProgressBarPortionSetProgressRunnable_Package.Initialize (This.all, androidTitleProgressBar_Var_Param);
      return This;
   end Create;
    
   procedure run (This : in out TitleProgressBarPortionSetProgressRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      value : Integer;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            begin
                value := Integer (((This.androidTitleProgressBar_Var.getValue) + ((This.androidTitleProgressBar_Var.getMaxValue) / (This.androidTitleProgressBar_Var.portion))));
                This.androidTitleProgressBar_Var.progressActivity.onTitleProgressBarSetProgress (value);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, TitleProgressBarPortionSetProgressRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package; use org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
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

package body org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out ShowTitleProgressBarRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) is
      androidTitleProgressBar_Var : constant AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Var_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar_Var := androidTitleProgressBar_Var;
   end Initialize;

   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return ShowTitleProgressBarRunnable_Access is
      This : constant ShowTitleProgressBarRunnable_Access := new ShowTitleProgressBarRunnable;
   begin
      ShowTitleProgressBarRunnable_Package.Initialize (This.all, androidTitleProgressBar_Var_Param);
      return This;
   end Create;
    
   procedure run (This : in out ShowTitleProgressBarRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      maxValue : Integer;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            begin
                maxValue := Integer (This.androidTitleProgressBar_Var.getMaxValue);
                This.androidTitleProgressBar_Var.progressActivity.onShowTitleProgressBar (maxValue, False);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, ShowTitleProgressBarRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.android.activity.NullProgressActivity_Package; use org.allbinary.android.activity.NullProgressActivity_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with org.allbinary.android.activity.ProgressActivityInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package; use org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
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

package body org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   package NullProgressActivity_Package renames Standard.org.allbinary.android.activity.NullProgressActivity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype ProgressActivityInterface_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
   subtype ProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ProgressActivityInterface_Package_References.ProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ProgressActivityInterface_Package_References."=";
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
   subtype AndroidTitleProgressBar_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype AndroidTitleProgressBar_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References.AndroidTitleProgressBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidTitleProgressBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References.ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References.TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarPortionSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   subtype TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References.TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleProgressBarSetProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out DismissTitleProgressBarRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) is
      androidTitleProgressBar_Var : constant AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Var_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar_Var := androidTitleProgressBar_Var;
   end Initialize;

   function Create (androidTitleProgressBar_Var_Param : access AndroidTitleProgressBar_Package.AndroidTitleProgressBar'Class) return DismissTitleProgressBarRunnable_Access is
      This : constant DismissTitleProgressBarRunnable_Access := new DismissTitleProgressBarRunnable;
   begin
      DismissTitleProgressBarRunnable_Package.Initialize (This.all, androidTitleProgressBar_Var_Param);
      return This;
   end Create;
    
   procedure run (This : in out DismissTitleProgressBarRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            begin
                This.androidTitleProgressBar_Var.progressActivity.onDismissTitleProgressBar;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, DismissTitleProgressBarRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


