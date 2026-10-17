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


package body org.allbinary.canvas.RunnableCanvasRefreshHelper_Package is

   procedure Initialize_Fields (This : in out RunnableCanvasRefreshHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RunnableCanvasRefreshHelper'Class; runnableCanvas : MyCanvas_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.runnableCanvas := runnableCanvas;
   end Initialize;

   function Create (runnableCanvas : MyCanvas_Access) return RunnableCanvasRefreshHelper_Access is
      This : constant RunnableCanvasRefreshHelper_Access := new RunnableCanvasRefreshHelper;
   begin
      RunnableCanvasRefreshHelper_Package.Initialize (This.all, runnableCanvas);
      return This;
   end Create;

   procedure process (This : in out RunnableCanvasRefreshHelper) is
   begin
        This.runnableCanvas.repaint;
   end process;

end org.allbinary.canvas.RunnableCanvasRefreshHelper_Package;


