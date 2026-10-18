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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.score.HighScoresCanvasInputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out HighScoresCanvasInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresCanvasInputProcessor'Class; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) is
      highScoresCanvas : constant HighScoresCanvas_Access := HighScoresCanvas_Access (highScoresCanvas_Param);
   begin
        PlayerGameInput_Package.Initialize (This, BasicArrayListD_Package.Create, BasicArrayListD_Package.Create, -(1));
        Initialize_Fields (This);
        This.highScoresCanvas := highScoresCanvas;
   end Initialize;

   function Create (highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access is
      This : constant HighScoresCanvasInputProcessor_Access := new HighScoresCanvasInputProcessor;
   begin
      HighScoresCanvasInputProcessor_Package.Initialize (This.all, highScoresCanvas_Param);
      return This;
   end Create;

   procedure open (This : in out HighScoresCanvasInputProcessor) is
   begin
        null;
   end open;

   procedure close (This : in out HighScoresCanvasInputProcessor) is
   begin
        null;
   end close;

   procedure onPressGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput (This).onPressGameKeyEvent (gameKeyEvent);
        HighScoresCanvasInputProcessor'Class (This).update;
   end onPressGameKeyEvent;

   procedure onDownGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput (This).onDownGameKeyEvent (gameKeyEvent);
        HighScoresCanvasInputProcessor'Class (This).update;
   end onDownGameKeyEvent;

   procedure onUpGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput (This).onUpGameKeyEvent (gameKeyEvent);
        HighScoresCanvasInputProcessor'Class (This).update;
   end onUpGameKeyEvent;

   procedure paint (This : in out HighScoresCanvasInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   function getHighScoresCanvas (This : in out HighScoresCanvasInputProcessor) return HighScoresCanvas_Access is
   begin
        return This.highScoresCanvas;
   end getHighScoresCanvas;

end org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;


