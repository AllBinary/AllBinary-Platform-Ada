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


package body org.allbinary.game.score.HighScoresPaintable_Package is

   procedure Initialize_Fields (This : in out HighScoresPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      This.highScores := NullHighScoresSingletonFactory_Package.getInstance;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.charHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HighScoresPaintable_Access is
      This : constant HighScoresPaintable_Access := new HighScoresPaintable;
   begin
      HighScoresPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out HighScoresPaintable; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out HighScoresPaintable; eventObject : AllBinaryEventObject_Access) is
      colorChangeEvent : ColorChangeEvent_Access;
   begin
        colorChangeEvent := ColorChangeEvent_Access (eventObject);
        This.basicColor := colorChangeEvent.getBasicColorP;
   end onEvent;

   procedure paint (This : in out HighScoresPaintable; graphics : Graphics_Access) is
      width : Integer;
      height : Integer;
      heading : Unbounded_String;
      topScoresWidth : Integer;
      charHeight : Integer;
      columnTwoHeading : Unbounded_String;
      columnTwoHeadingWidth : Integer;
      index : Integer;
      largestSecondColumnWidth : Integer;
      list : BasicArrayList_Access;
      size : Integer;
      vectorIndex : Integer;
      highScore : HighScore_Access;
      nextScoreWidth : Integer;
   begin
        This.myFontProcessor.process (graphics);
        width := This.displayInfoSingleton.getLastWidth;
        height := This.displayInfoSingleton.getLastHeight;
        graphics.setColor (This.getBasicColorP.intValue);
        heading := This.highScores.getHeading;
        topScoresWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (heading), 1));
        charHeight := This.charHeight;
        graphics.drawString (heading, ((Java_Shift_Right_Arithmetic (width, 1))) - (topScoresWidth), charHeight, This.anchor);
        graphics.drawString (This.highScores.getColumnOneHeading, 10, (charHeight) * (3), This.anchor);
        columnTwoHeading := This.highScores.getColumnTwoHeading;
        columnTwoHeadingWidth := graphics.getFont.stringWidth (columnTwoHeading);
        graphics.drawString (columnTwoHeading, ((width) - (10)) - (columnTwoHeadingWidth), (charHeight) * (3), This.anchor);
        index := 4;
        largestSecondColumnWidth := columnTwoHeadingWidth;
        list := This.highScores.getList;
        size := list.size;
        vectorIndex := 0;
        highScore := null;
        while ((vectorIndex) < (size)) and then (((charHeight) * (index)) < ((height) - (((charHeight) * (2))))) loop
            highScore := HighScore_Access (list.objectArray (vectorIndex));
            nextScoreWidth := graphics.getFont.stringWidth (highScore.getScoreString);
            if (nextScoreWidth) > (largestSecondColumnWidth) then
                largestSecondColumnWidth := nextScoreWidth;
            end if;
            vectorIndex := vectorIndex + 1;
        end loop;
        vectorIndex := 0;
        while ((vectorIndex) < (size)) and then (((charHeight) * (index)) < ((height) - (((charHeight) * (2))))) loop
            highScore := HighScore_Access (list.objectArray (vectorIndex));
            graphics.drawString (highScore.getName, 10, (charHeight) * (index), This.anchor);
            graphics.drawString (highScore.getScoreString, ((width) - (10)) - (largestSecondColumnWidth), (charHeight) * (index), This.anchor);
            index := index + 1;
            vectorIndex := vectorIndex + 1;
        end loop;
   end paint;

   procedure setBasicColorP (This : in out HighScoresPaintable; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out HighScoresPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setHighScores (This : in out HighScoresPaintable; highScores : HighScores_Access) is
   begin
        This.highScores := highScores;
   end setHighScores;

end org.allbinary.game.score.HighScoresPaintable_Package;


