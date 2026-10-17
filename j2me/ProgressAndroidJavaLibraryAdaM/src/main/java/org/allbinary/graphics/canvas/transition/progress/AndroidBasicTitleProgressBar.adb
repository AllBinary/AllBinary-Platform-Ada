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


package body org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package is

   procedure Initialize_Fields (This : in out AndroidBasicTitleProgressBar'Class) is
   begin
      null;
      This.showTitleProgressBarRunnable := NullRunnable_Package.getInstance;
      This.dismissTitleProgressBarRunnable := NullRunnable_Package.getInstance;
      This.titleProgressDialogPortionSetProgressRunnable := NullRunnable_Package.getInstance;
      This.titleProgressDialogSetProgressRunnable := NullRunnable_Package.getInstance;
      This.midletActivity := AndroidUtil_Package.NULL_ACTIVITY;
      This.portion := 0;
      This.IMAGE := new Image_Access_Array'(0 .. (4) - 1 => null);
      This.image_Case := NullImage_Package.NULL_IMAGE;
      This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidBasicTitleProgressBar'Class; title : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      size : Integer;
      index : Integer;
   begin
        ProgressCanvas_Package.Initialize (This, title, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.init;
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            This.IMAGE (index) := NullImage_Package.NULL_IMAGE;
        end loop;
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return AndroidBasicTitleProgressBar_Access is
      This : constant AndroidBasicTitleProgressBar_Access := new AndroidBasicTitleProgressBar;
   begin
      Initialize (This.all, title, backgroundBasicColor, foregroundBasicColor);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e);
                end;
        end;
   end init;

   procedure initActivity (This : in out AndroidBasicTitleProgressBar; activity : Activity_Access) is
   begin
        begin
            if (This.midletActivity) /= (activity) then
                This.midletActivity := activity;
                This.showTitleProgressBarRunnable := ShowTitleProgressBarRunnable_Package.Create (This.midletActivity, This'Unchecked_Access);
                This.dismissTitleProgressBarRunnable := DismissTitleProgressBarRunnable_Package.Create (This.midletActivity, This'Unchecked_Access);
                This.titleProgressDialogSetProgressRunnable := TitleProgressBarSetProgressRunnable_Package.Create (This.midletActivity, This'Unchecked_Access);
                This.titleProgressDialogPortionSetProgressRunnable := TitleProgressBarPortionSetProgressRunnable_Package.Create (This.midletActivity, This'Unchecked_Access);
                This.loadProgressImages;
            end if;
            This.updateCurrent;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e);
                end;
        end;
   end initActivity;

   procedure updateCurrent (This : in out AndroidBasicTitleProgressBar) is
      displayInfo : DisplayInfoSingleton_Access;
      currentImage : Image_Access;
   begin
        begin
            if not (This.isBackground) then
                This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
            elsif (AndroidBasicTitleProgressBar_Package.background) /= (0) then
                displayInfo := DisplayInfoSingleton_Package.getInstance;
                currentImage := null;
                if displayInfo.isPortrait then
                    currentImage := This.getImage (0);
                else
                    currentImage := This.getImage (2);
                end if;
                if (currentImage) = (null) then
                    This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
                else
                    This.animation := ImageAnimation_Package.Create (currentImage, AnimationBehavior_Package.getInstance);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.UPDATE, e);
                end;
        end;
   end updateCurrent;

   procedure onEvent (This : in out AndroidBasicTitleProgressBar; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onDisplayChangeEvent (This : in out AndroidBasicTitleProgressBar; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        begin
            This.loadProgressImages;
            This.updateCurrent;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF ((This.commonStrings.EXCEPTION_LABEL) + (ExceptionUtil_Package.getInstance.getStackTrace (e)), This'Unchecked_Access, This.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
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
                This.setImages (0, lastWidth, lastHeight);
            else
                This.setImages (2, lastWidth, lastHeight);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (To_Unbounded_String ("IllegalArgumentException ") & Java_Image (ExceptionUtil_Package.getInstance.getStackTrace (e)), This'Unchecked_Access, To_Unbounded_String ("loadProgressImages"));
            This.animation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
                end;
        end;
   end loadProgressImages;

   function isInitialized (This : in out AndroidBasicTitleProgressBar) return Boolean is
   begin
        if (This.midletActivity) /= (AndroidUtil_Package.NULL_ACTIVITY) then
            return True;
        else
            return False;
        end if;
   end isInitialized;

   procedure start (This : in out AndroidBasicTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.START_METHOD_NAME);
            ProgressCanvas (This).start;
            This.midletActivity.runOnUiThread (This.showTitleProgressBarRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.START_METHOD_NAME, e);
                end;
        end;
   end start;

   procedure end_Id (This : in out AndroidBasicTitleProgressBar) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.END_METHOD_NAME);
            This.midletActivity.runOnUiThread (This.dismissTitleProgressBarRunnable);
            ProgressCanvas (This).end_Id;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.END_METHOD_NAME, e);
                end;
        end;
   end end_Id;

   procedure addEarlyPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        begin
            This.portion := value;
            ProgressCanvas (This).addEarlyPortion (value, text, index);
            if (This.midletActivity) /= (AndroidUtil_Package.NULL_ACTIVITY) then
                This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.ADD_PORTION, e);
                end;
        end;
   end addEarlyPortion;

   procedure addPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        begin
            This.portion := value;
            ProgressCanvas (This).addPortion (value, text, index);
            This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.ADD_PORTION, e);
                end;
        end;
   end addPortion;

   procedure addNormalPortion (This : in out AndroidBasicTitleProgressBar; value : Integer; text : Unbounded_String) is
   begin
        begin
            This.portion := value;
            ProgressCanvas (This).addNormalPortion (value, text);
            This.midletActivity.runOnUiThread (This.titleProgressDialogPortionSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.ADD_PORTION, e);
                end;
        end;
   end addNormalPortion;

   procedure setValue (This : in out AndroidBasicTitleProgressBar; value : Integer) is
   begin
        begin
            ProgressCanvas (This).setValue (value);
            This.midletActivity.runOnUiThread (This.titleProgressDialogSetProgressRunnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setValue"), e);
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
        if (image_Case) /= (NullImage_Package.NULL_IMAGE) then
            if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
                if (This.IMAGE (index)) = (NullImage_Package.NULL_IMAGE) then
                    This.IMAGE (index) := ImageScaleUtil_Package.getInstance.createImage2 (ImageCacheFactory_Package.getInstance, image_Case, Float (lastWidth), Float (image_Case.getWidth), (Float (lastHeight)) - (20.0), Float (image_Case.getHeight), False);
                end if;
            else
                nextIndex := (index) + (1);
                if (This.IMAGE (nextIndex)) = (NullImage_Package.NULL_IMAGE) then
                    This.IMAGE (nextIndex) := ImageScaleUtil_Package.getInstance.createImage2 (ImageCacheFactory_Package.getInstance, image_Case, Float (lastWidth), Float (image_Case.getWidth), (Float (lastHeight)) - (28.0), Float (image_Case.getHeight), False);
                end if;
            end if;
        end if;
   end setImages;

   --  throws Exception
   procedure initOpenGL (This : in out AndroidBasicTitleProgressBar; graphics : Graphics_Access) is
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.INIT);
        This.image_Case := GameFeatureImageCacheFactory_Package.getInstance.getWithKey (AndroidBasicTitleProgressBar_Package.RESOURCE);
        preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            if (This.IMAGE (index)) /= (NullImage_Package.NULL_IMAGE) then
                This.IMAGE (index) := preResourceImageUtil.encapsulate (This.IMAGE (index));
            end if;
        end loop;
        This.updateCurrent;
   end initOpenGL;

   --  throws Exception
   procedure update (This : in out AndroidBasicTitleProgressBar; graphics : Graphics_Access) is
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.UPDATE);
        This.initOpenGL (graphics);
        This.image_Case := GameFeatureImageCacheFactory_Package.getInstance.getWithKey (AndroidBasicTitleProgressBar_Package.RESOURCE);
        preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
        size := This.IMAGE'Length;
        for index in 0 .. (size) - 1 loop
            if (This.IMAGE (index)) /= (NullImage_Package.NULL_IMAGE) then
                preResourceImageUtil.update (graphics, This.IMAGE (index));
            end if;
        end loop;
   end update;

   --  throws Exception
   function getImage (This : in out AndroidBasicTitleProgressBar; index : Integer) return Image_Access is
      image_Case : Image_Access;
   begin
        image_Case := NullImage_Package.NULL_IMAGE;
        if Features_Package.getInstance.isFeature (MainFeatureFactory_Package.getInstance.FULL_SCREEN) then
            image_Case := This.IMAGE (index);
        else
            image_Case := This.IMAGE ((index) + (1));
        end if;
        return image_Case;
   end getImage;

   procedure paint2 (This : in out AndroidBasicTitleProgressBar; graphics : Graphics_Access) is
   begin
        begin
            This.animation.paintXY (graphics, 0, 20);
            ProgressCanvas (This).paint2 (graphics);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.canvasStrings.PAINT, e);
                end;
        end;
   end paint2;

   procedure setBackgroundResource (background : Integer) is
   begin
        AndroidBasicTitleProgressBar_Package.background := background;
   end setBackgroundResource;

   procedure setBackground (This : in out AndroidBasicTitleProgressBar; background : Boolean) is
   begin
        ProgressCanvas (This).setBackground (background);
        This.updateCurrent;
   end setBackground;

   procedure setPortion (This : in out AndroidBasicTitleProgressBar; portion : Integer) is
   begin
        This.portion := portion;
   end setPortion;

   function getPortion (This : in out AndroidBasicTitleProgressBar) return Integer is
   begin
        return This.portion;
   end getPortion;

   procedure isInitialized (This : in out AndroidBasicTitleProgressBar) is
      Java_Result : constant Boolean := AndroidBasicTitleProgressBar'Class (This).isInitialized;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInitialized;

   procedure getImage (This : in out AndroidBasicTitleProgressBar; index : Integer) is
      Java_Result : constant Image_Access := AndroidBasicTitleProgressBar'Class (This).getImage (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getPortion (This : in out AndroidBasicTitleProgressBar) is
      Java_Result : constant Integer := AndroidBasicTitleProgressBar'Class (This).getPortion;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPortion;

begin
   null;
   RESOURCE := To_Unbounded_String ("ProgressImage");
   background := 0;

end org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar_Package;


