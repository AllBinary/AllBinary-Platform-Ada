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


package body org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package is

   procedure Initialize_Fields (This : in out HighScoresCanvasChangeLevelInputProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoresCanvasChangeLevelInputProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoresCanvasChangeLevelInputProcessorFactory_Access is
      This : constant HighScoresCanvasChangeLevelInputProcessorFactory_Access := new HighScoresCanvasChangeLevelInputProcessorFactory;
   begin
      HighScoresCanvasChangeLevelInputProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access is
      highScoresCanvas : constant HighScoresCanvas_Access := HighScoresCanvas_Access (highScoresCanvas_Param);
   begin
        return HighScoresCanvasLevelChangeInputProcessor_Package.Create (highScoresCanvas);
   end getInstance;

   procedure getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) is
      Java_Result : constant HighScoresCanvasInputProcessor_Access := HighScoresCanvasChangeLevelInputProcessorFactory'Class (This).getInstance (highScoresCanvas_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package;


