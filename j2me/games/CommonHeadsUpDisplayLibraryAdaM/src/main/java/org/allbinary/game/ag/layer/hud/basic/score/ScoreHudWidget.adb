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


package body org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package is

   procedure Initialize_Fields (This : in out ScoreHudWidget'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function getInstance (maxscore : Integer; location : Integer; direction : Integer) return ScoreHudWidget_Access is
   begin
        return ScoreHudWidget_Package.Create (maxscore, location, direction, 2, BasicColorFactory_Package.getInstance.GREY);
   end getInstance;

   procedure Initialize (This : in out ScoreHudWidget'Class; maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        NumberStringHud_Package.Initialize (This, To_Unbounded_String ("Pts "), maxscore, location, direction, bufferZone, basicColor);
        This.updateMaxHeight := 14;
   end Initialize;

   function Create (maxscore : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor'Class) return ScoreHudWidget_Access is
      This : constant ScoreHudWidget_Access := new ScoreHudWidget;
   begin
      ScoreHudWidget_Package.Initialize (This.all, maxscore, location, direction, bufferZone, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out ScoreHudWidget; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.updateMaxWidth := (font.getSize) * (5);
        NumberStringHud (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure getInstance (maxscore : Integer; location : Integer; direction : Integer) is
      Java_Result : constant ScoreHudWidget_Access := getInstance (maxscore, location, direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget_Package;


