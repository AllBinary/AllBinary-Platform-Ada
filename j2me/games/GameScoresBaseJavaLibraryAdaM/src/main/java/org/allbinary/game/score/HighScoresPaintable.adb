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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.ColorChangeEvent_Package; use org.allbinary.graphics.color.ColorChangeEvent_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;

package body org.allbinary.game.score.HighScoresPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ColorChangeEvent_Package renames Standard.org.allbinary.graphics.color.ColorChangeEvent_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out HighScoresPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (HighScoresPaintable_Access'(This'Unchecked_Access)));
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

   procedure updateMeasurement (This : in out HighScoresPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out HighScoresPaintable; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      colorChangeEvent : ColorChangeEvent_Access;
   begin
        colorChangeEvent := ColorChangeEvent_Access (eventObject);
        This.basicColor := colorChangeEvent.getBasicColorP;
   end onEvent;

   procedure paint (This : in out HighScoresPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
        graphics.setColor (HighScoresPaintable'Class (This).getBasicColorP.intValue);
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

   procedure setBasicColorP (This : in out HighScoresPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out HighScoresPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setHighScores (This : in out HighScoresPaintable; highScores_Param : access HighScores_Package.HighScores'Class) is
      highScores : constant HighScores_Access := HighScores_Access (highScores_Param);
   begin
        This.highScores := highScores;
   end setHighScores;

end org.allbinary.game.score.HighScoresPaintable_Package;


