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


package body org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package is

   procedure Initialize_Fields (This : in out HighScoresCanvasNoInputProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoresCanvasNoInputProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoresCanvasNoInputProcessorFactory_Access is
      This : constant HighScoresCanvasNoInputProcessorFactory_Access := new HighScoresCanvasNoInputProcessorFactory;
   begin
      HighScoresCanvasNoInputProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas : HighScoresCanvas_Access) return HighScoresCanvasInputProcessor_Access is
   begin
        return HighScoresCanvasInputProcessor_Package.Create (highScoresCanvas);
   end getInstance;

   procedure getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas : HighScoresCanvas_Access) is
      Java_Result : constant HighScoresCanvasInputProcessor_Access := HighScoresCanvasNoInputProcessorFactory'Class (This).getInstance (highScoresCanvas);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package;


