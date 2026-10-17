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


package body org.allbinary.game.displayable.canvas.EndGameInfo_Package is

   procedure Initialize_Fields (This : in out EndGameInfo'Class) is
   begin
      null;
      This.NORMAL_GAME_OVER := To_Unbounded_String ("Game Over");
      This.NORMAL_GAME_OVER_WIN := To_Unbounded_String ("You Won");
      This.gameOverStr := StringUtil_Package.getInstance.EMPTY_STRING;
      This.winStr := This.gameOverStr;
   end Initialize_Fields;


   procedure Initialize (This : in out EndGameInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EndGameInfo_Access is
      This : constant EndGameInfo_Access := new EndGameInfo;
   begin
      EndGameInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure update (This : in out EndGameInfo; gameInfo : GameInfo_Access; myCanvas : MyCanvas_Access) is
   begin
        This.setGameOverStr (This.NORMAL_GAME_OVER);
        This.setWinStr (This.NORMAL_GAME_OVER_WIN);
   end update;

   function getGameOverStr (This : in out EndGameInfo) return Unbounded_String is
   begin
        return This.gameOverStr;
   end getGameOverStr;

   procedure setGameOverStr (This : in out EndGameInfo; gameOverStr : Unbounded_String) is
   begin
        This.gameOverStr := gameOverStr;
   end setGameOverStr;

   function getWinStr (This : in out EndGameInfo) return Unbounded_String is
   begin
        return This.winStr;
   end getWinStr;

   procedure setWinStr (This : in out EndGameInfo; winStr : Unbounded_String) is
   begin
        This.winStr := winStr;
   end setWinStr;

end org.allbinary.game.displayable.canvas.EndGameInfo_Package;


