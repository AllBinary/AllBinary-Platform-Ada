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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out GameCanvasPauseRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameCanvasPauseRunnable'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end Initialize;

   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasPauseRunnable_Access is
      This : constant GameCanvasPauseRunnable_Access := new GameCanvasPauseRunnable;
   begin
      GameCanvasPauseRunnable_Package.Initialize (This.all, allBinaryGameCanvas_Param);
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
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameCanvasPauseRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;


