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


package body org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package is

   procedure Initialize_Fields (This : in out HighScoresCanvasLevelChangeInputProcessor'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.INSTRUCTIONS := To_Unbounded_String ("(Right = Next Track, Left = Previous Track)");
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (HighScoresCanvasLevelChangeInputProcessor_Access'(This'Unchecked_Access));
      This.anchor := Anchor_Package.TOP_LEFT;
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresCanvasLevelChangeInputProcessor'Class; highScoresCanvas_Param : access HighScoresCanvas'Class) is
      highScoresCanvas : HighScoresCanvas_Access := HighScoresCanvas_Access (highScoresCanvas_Param);
   begin
        HighScoresCanvasInputProcessor_Package.Initialize (This, highScoresCanvas);
        Initialize_Fields (This);
   end Initialize;

   function Create (highScoresCanvas_Param : access HighScoresCanvas'Class) return HighScoresCanvasLevelChangeInputProcessor_Access is
      This : constant HighScoresCanvasLevelChangeInputProcessor_Access := new HighScoresCanvasLevelChangeInputProcessor;
   begin
      HighScoresCanvasLevelChangeInputProcessor_Package.Initialize (This.all, highScoresCanvas_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure open (This : in out HighScoresCanvasLevelChangeInputProcessor) is
   begin
        GameKeyEventHandler_Package.getInstance.addListener (HighScoresCanvasLevelChangeInputProcessor_Access'(This'Unchecked_Access));
   end open;

   procedure close (This : in out HighScoresCanvasLevelChangeInputProcessor) is
   begin
        GameKeyEventHandler_Package.getInstance.removeListener (HighScoresCanvasLevelChangeInputProcessor_Access'(This'Unchecked_Access));
   end close;

   procedure update (This : in out HighScoresCanvasLevelChangeInputProcessor) is
      list : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      key : Integer;
      index : Integer;
   begin
        list := This.getGameKeyEventList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.objectArray (index);
            key := GameKeyEventUtil_Package.getKey (anyType);
            if (key) = (Canvas_Package.RIGHT) then
                This.getHighScoresCanvas.getGameInfo.nextGameLevel;
            elsif (key) = (Canvas_Package.LEFT) then
                This.getHighScoresCanvas.getGameInfo.previousGameLevel;
            end if;
            This.getHighScoresCanvas.executeUpdate;
        end loop;
        list.clear;
   end update;

   procedure paint (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      width : Integer;
      topScoresWidth : Integer;
   begin
        This.myFontProcessor.process (graphics);
        width := This.displayInfoSingleton.getLastWidth;
        topScoresWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.INSTRUCTIONS), 1));
        graphics.drawString (This.INSTRUCTIONS, ((Java_Shift_Right_Arithmetic (width, 1))) - (topScoresWidth), (This.fontHeight) * (2), This.anchor);
   end paint;

end org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package;


