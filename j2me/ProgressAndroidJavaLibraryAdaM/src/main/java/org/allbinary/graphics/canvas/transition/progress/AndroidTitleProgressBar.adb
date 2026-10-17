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


package body org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package is

   procedure Initialize_Fields (This : in out AndroidTitleProgressBar'Class) is
   begin
      null;
      This.showTitleProgressBarRunnable := ShowTitleProgressBarRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.dismissTitleProgressBarRunnable := DismissTitleProgressBarRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressDialogPortionSetProgressRunnable := TitleProgressBarPortionSetProgressRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressDialogSetProgressRunnable := TitleProgressBarSetProgressRunnable_Package.Create (AndroidTitleProgressBar_Access'(This'Unchecked_Access));
      This.progressActivity := NullProgressActivity_Package.NULL_PROGRESS_ACTIVITY;
      This.portion := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ProgressCanvas_Package.Initialize (This, title, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return AndroidTitleProgressBar_Access is
      This : constant AndroidTitleProgressBar_Access := new AndroidTitleProgressBar;
   begin
      AndroidTitleProgressBar_Package.Initialize (This.all, title, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure init (This : in out AndroidTitleProgressBar; activity_Param : access ProgressActivityInterface'Class) is
      activity : ProgressActivityInterface_Access := ProgressActivityInterface_Access (activity_Param);
   begin
        This.progressActivity := activity;
   end init;

   function isInitialized (This : in out AndroidTitleProgressBar) return Boolean is
   begin
        if (This.progressActivity) /= (NullProgressActivity_Package.NULL_PROGRESS_ACTIVITY) then
            return True;
        else
            return False;
        end if;
   end isInitialized;

   procedure start (This : in out AndroidTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AndroidTitleProgressBar_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME);
            ProgressCanvas (This).start;
            This.progressActivity.runOnUiThread (This.showTitleProgressBarRunnable);
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
            This.progressActivity.runOnUiThread (This.dismissTitleProgressBarRunnable);
            ProgressCanvas (This).end_Id;
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
            ProgressCanvas (This).addPortion (value, text, index);
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
            ProgressCanvas (This).addNormalPortion (value, text);
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
            ProgressCanvas (This).setValue (value);
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

   procedure paint (This : in out AndroidTitleProgressBar; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

end org.allbinary.graphics.canvas.transition.progress.AndroidTitleProgressBar_Package;


package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package is

   procedure Initialize_Fields (This : in out TitleProgressBarSetProgressRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TitleProgressBarSetProgressRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) is
      androidTitleProgressBar : AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar := androidTitleProgressBar;
   end Initialize;

   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return TitleProgressBarSetProgressRunnable_Access is
      This : constant TitleProgressBarSetProgressRunnable_Access := new TitleProgressBarSetProgressRunnable;
   begin
      TitleProgressBarSetProgressRunnable_Package.Initialize (This.all, androidTitleProgressBar_Param);
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
                value := Integer (This.androidTitleProgressBar.getValue);
                This.androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress (value);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarSetProgressRunnable_Package;


package body org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package is

   procedure Initialize_Fields (This : in out TitleProgressBarPortionSetProgressRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TitleProgressBarPortionSetProgressRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) is
      androidTitleProgressBar : AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar := androidTitleProgressBar;
   end Initialize;

   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return TitleProgressBarPortionSetProgressRunnable_Access is
      This : constant TitleProgressBarPortionSetProgressRunnable_Access := new TitleProgressBarPortionSetProgressRunnable;
   begin
      TitleProgressBarPortionSetProgressRunnable_Package.Initialize (This.all, androidTitleProgressBar_Param);
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
                value := Integer (((This.androidTitleProgressBar.getValue) + ((This.androidTitleProgressBar.getMaxValue) / (This.androidTitleProgressBar.portion))));
                This.androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress (value);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.TitleProgressBarPortionSetProgressRunnable_Package;


package body org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package is

   procedure Initialize_Fields (This : in out ShowTitleProgressBarRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ShowTitleProgressBarRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) is
      androidTitleProgressBar : AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar := androidTitleProgressBar;
   end Initialize;

   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return ShowTitleProgressBarRunnable_Access is
      This : constant ShowTitleProgressBarRunnable_Access := new ShowTitleProgressBarRunnable;
   begin
      ShowTitleProgressBarRunnable_Package.Initialize (This.all, androidTitleProgressBar_Param);
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
                maxValue := Integer (This.androidTitleProgressBar.getMaxValue);
                This.androidTitleProgressBar.progressActivity.onShowTitleProgressBar (maxValue, False);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.ShowTitleProgressBarRunnable_Package;


package body org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   procedure Initialize_Fields (This : in out DismissTitleProgressBarRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) is
      androidTitleProgressBar : AndroidTitleProgressBar_Access := AndroidTitleProgressBar_Access (androidTitleProgressBar_Param);
   begin
      Initialize_Fields (This);
            This.androidTitleProgressBar := androidTitleProgressBar;
   end Initialize;

   function Create (androidTitleProgressBar_Param : access AndroidTitleProgressBar'Class) return DismissTitleProgressBarRunnable_Access is
      This : constant DismissTitleProgressBarRunnable_Access := new DismissTitleProgressBarRunnable;
   begin
      DismissTitleProgressBarRunnable_Package.Initialize (This.all, androidTitleProgressBar_Param);
      return This;
   end Create;
    
   procedure run (This : in out DismissTitleProgressBarRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            begin
                This.androidTitleProgressBar.progressActivity.onDismissTitleProgressBar;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (commonStrings.EXCEPTION_Id, AndroidTitleProgressBar_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


