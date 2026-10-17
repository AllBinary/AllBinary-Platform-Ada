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


package body org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package is

   procedure Initialize_Fields (This : in out GameCanvasPauseRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasPauseRunnable'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end Initialize;

   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return GameCanvasPauseRunnable_Access is
      This : constant GameCanvasPauseRunnable_Access := new GameCanvasPauseRunnable;
   begin
      GameCanvasPauseRunnable_Package.Initialize (This.all, allBinaryGameCanvas);
      return This;
   end Create;

   procedure run (This : in out GameCanvasPauseRunnable) is
   begin
        null;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out GameCanvasPauseRunnable) is
      features : Features_Access;
      isOpenGL : Boolean;
      commonStrings : CommonStrings_Access;
   begin
        begin
            features := Features_Package.getInstance;
            isOpenGL := features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL);
            if isOpenGL then
                This.allBinaryGameCanvas.processSleep;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
                end;
        end;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;


