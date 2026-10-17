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


package body org.allbinary.thread.ConcurrentImageLoadingProcessor_Package is

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
        This.runnable := ImageCacheRunnable_Package.Create (imageCache);
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


package body org.allbinary.thread.ImageCacheRunnable_Package is

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
                This.setRunning (True);
                This.imageCache.waitForLoadNow;
                This.imageCache.loadImages;
                This.imageCache.loadRemainingAnimations;
                This.setRunning (False);
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                if not (progressCanvas.inProgress) then
                    progressCanvas.endFromInitialLazyLoadingComplete;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.setRunning (False);
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, ConcurrentImageLoadingProcessor_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.thread.ImageCacheRunnable_Package;


