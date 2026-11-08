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


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ImageCacheRunnable_Package; use org.allbinary.thread.ImageCacheRunnable_Package;
with org.allbinary.thread.ImageThreadPool_Package; use org.allbinary.thread.ImageThreadPool_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.thread.ImageCacheRunnable_Package;
with org.allbinary.thread.ImageThreadPool_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;

package body org.allbinary.thread.ConcurrentImageLoadingProcessor_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
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
   procedure Initialize_Fields (This : in out ConcurrentImageLoadingProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ConcurrentImageLoadingProcessor'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
   begin
      BaseImageLoadingProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.runnable := ABRunnable_Access (ImageCacheRunnable_Package.Create (imageCache));
   end Initialize;

   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ConcurrentImageLoadingProcessor_Access is
      This : constant ConcurrentImageLoadingProcessor_Access := new ConcurrentImageLoadingProcessor;
   begin
      ConcurrentImageLoadingProcessor_Package.Initialize (This.all, imageCache_Param);
      return This;
   end Create;

   procedure runTask (This : in out ConcurrentImageLoadingProcessor) is
   begin
        if not (This.runnable.isRunning) then
            ImageThreadPool_Package.getInstance.runTask (This.runnable);
        end if;
   end runTask;

end org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;


with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package; use org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.thread.ImageThreadPool_Package; use org.allbinary.thread.ImageThreadPool_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.ConcurrentImageLoadingProcessor_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.thread.ImageThreadPool_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;

package body org.allbinary.thread.ImageCacheRunnable_Package is

   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
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
   procedure Initialize_Fields (This : in out ImageCacheRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ImageCacheRunnable'Class; imageCache_Param : access ImageCache_Package.ImageCache'Class) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
   begin
      ABRunnable_Package.Initialize (This);
      Initialize_Fields (This);
            This.imageCache := imageCache;
   end Initialize;

   function Create (imageCache_Param : access ImageCache_Package.ImageCache'Class) return ImageCacheRunnable_Access is
      This : constant ImageCacheRunnable_Access := new ImageCacheRunnable;
   begin
      ImageCacheRunnable_Package.Initialize (This.all, imageCache_Param);
      return This;
   end Create;
    
   procedure run (This : in out ImageCacheRunnable) is
      logUtil : LogUtil_Access;
      progressCanvas : ProgressCanvas_Access;
      commonStrings : CommonStrings_Access;
   begin
            logUtil := LogUtil_Package.getInstance;
            begin
                ImageCacheRunnable'Class (This).setRunning (True);
                This.imageCache.waitForLoadNow;
                This.imageCache.loadImages;
                This.imageCache.loadRemainingAnimations;
                ImageCacheRunnable'Class (This).setRunning (False);
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                if not (progressCanvas.inProgress) then
                    progressCanvas.endFromInitialLazyLoadingComplete;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                ImageCacheRunnable'Class (This).setRunning (False);
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, ImageCacheRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.thread.ImageCacheRunnable_Package;


