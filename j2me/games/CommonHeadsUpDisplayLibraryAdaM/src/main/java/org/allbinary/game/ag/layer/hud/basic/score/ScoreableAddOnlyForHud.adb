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


package body org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package is

   procedure Initialize_Fields (This : in out ScoreableAddOnlyForHud'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScoreableAddOnlyForHud'Class; scoreVectorGraphic_Param : access ScoreHudWidget'Class) is
      scoreVectorGraphic : ScoreHudWidget_Access := ScoreHudWidget_Access (scoreVectorGraphic_Param);
   begin
        Scoreable_Package.Initialize (This, 0);
        Initialize_Fields (This);
        This.scoreHudWidget := scoreVectorGraphic;
        This.getScoreHudWidget.set (0);
   end Initialize;

   function Create (scoreVectorGraphic_Param : access ScoreHudWidget'Class) return ScoreableAddOnlyForHud_Access is
      This : constant ScoreableAddOnlyForHud_Access := new ScoreableAddOnlyForHud;
   begin
      ScoreableAddOnlyForHud_Package.Initialize (This.all, scoreVectorGraphic_Param);
      return This;
   end Create;

   procedure removePoints (This : in out ScoreableAddOnlyForHud; points : Integer) is
   begin
        null;
   end removePoints;

   procedure addPoints (This : in out ScoreableAddOnlyForHud; points : Integer) is
   begin
        Scoreable (This).addPoints (points);
        This.getScoreHudWidget.add (points);
   end addPoints;

   function getScoreHudWidget (This : in out ScoreableAddOnlyForHud) return ScoreHudWidget_Access is
   begin
        return This.scoreHudWidget;
   end getScoreHudWidget;

end org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud_Package;


