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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;

package body org.allbinary.game.score.HighScoresCanvasInputProcessor_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype HighScoresCanvas_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access;
   function "=" (Left, Right : HighScoresCanvas_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoresCanvas_Package_References."=";
   subtype HighScoresCanvas_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array;
   function "=" (Left, Right : HighScoresCanvas_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoresCanvas_Package_References."=";
   subtype HighScoresCanvas_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoresCanvas_Package_References."=";
   subtype HighScoresCanvas_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.displayable.HighScoresCanvas_Package_References."=";
   subtype HighScoresCanvas_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.displayable.HighScoresCanvas_Package_References."=";
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


