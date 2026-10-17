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


package body org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package is

   procedure Initialize_Fields (This : in out LazyProgressCanvas'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LazyProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ProgressCanvas_Package.Initialize (This, title, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return LazyProgressCanvas_Access is
      This : constant LazyProgressCanvas_Access := new LazyProgressCanvas;
   begin
      LazyProgressCanvas_Package.Initialize (This.all, title, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure start (This : in out LazyProgressCanvas) is
   begin
        ProgressCanvas (This).start;
        This.hasPainted := False;
   end start;

   procedure end_Id (This : in out LazyProgressCanvas) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.END_METHOD_NAME);
            This.endActual;
            This.paintable := This.GAUGE_PAINTABLE;
            ImageCacheFactory_Package.getInstance.runTask;
            ImageCacheFactory_Package.getInstance.progressEnded;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.END_METHOD_NAME);
                end;
        end;
   end end_Id;

   procedure inGame (This : in out LazyProgressCanvas) is
   begin
        This.inGameProcessor := Processor_Package.getInstance;
   end inGame;

   procedure endFromInitialLazyLoadingComplete (This : in out LazyProgressCanvas) is
   begin
        ProgressCanvas (This).endFromInitialLazyLoadingComplete;
        This.paintable := NullPaintable_Package.getInstance;
   end endFromInitialLazyLoadingComplete;

   procedure endIfPaintedSinceStart (This : in out LazyProgressCanvas) is
   begin
        if ((This.paintable) = (This.GAUGE_PAINTABLE)) and then (This.hasPainted) then
            This.endFromInitialLazyLoadingComplete;
        end if;
   end endIfPaintedSinceStart;

end org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package;


