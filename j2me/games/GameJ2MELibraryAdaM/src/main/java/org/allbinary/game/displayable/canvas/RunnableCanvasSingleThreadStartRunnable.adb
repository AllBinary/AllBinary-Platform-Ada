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


package body org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package is

   procedure Initialize_Fields (This : in out RunnableCanvasSingleThreadStartRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RunnableCanvasSingleThreadStartRunnable'Class; demoCanvas : RunnableCanvas_Access) is
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.runnableCanvas := demoCanvas;
   end Initialize;

   function Create (demoCanvas : RunnableCanvas_Access) return RunnableCanvasSingleThreadStartRunnable_Access is
      This : constant RunnableCanvasSingleThreadStartRunnable_Access := new RunnableCanvasSingleThreadStartRunnable;
   begin
      Initialize (This.all, demoCanvas);
      return This;
   end Create;

   procedure run (This : in out RunnableCanvasSingleThreadStartRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.runnableCanvas.run;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
                end;
        end;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out RunnableCanvasSingleThreadStartRunnable) is
   begin
        This.runnableCanvas.processLoopSleep;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;


