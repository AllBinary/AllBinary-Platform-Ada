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


package body org.allbinary.game.score.HighScoresHelper2_Package is

   procedure Initialize_Fields (This : in out HighScoresHelper2'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstanceAt (0, 0);
      This.selectedHighScores := NullHighScoresSingletonFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoresHelper2'Class) is
   begin
      HighScoresHelperBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoresHelper2_Access is
      This : constant HighScoresHelper2_Access := new HighScoresHelper2;
   begin
      HighScoresHelper2_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setSelectedHighScores (This : in out HighScoresHelper2; selectedHighScores_Param : access HighScores'Class) is
      selectedHighScores : HighScores_Access := HighScores_Access (selectedHighScores_Param);
   begin
        This.selectedHighScores := selectedHighScores;
   end setSelectedHighScores;

   function getSelectedHighScores (This : in out HighScoresHelper2) return HighScores_Access is
   begin
        return This.selectedHighScores;
   end getSelectedHighScores;

   procedure setHighScoresArray (This : in out HighScoresHelper2; highScoresArrayP : HighScores_Access_Array_Access) is
   begin
        HighScoresHelperBase (This).setHighScoresArray (highScoresArrayP);
        This.circularIndexUtil.setSize (This.highScoresArrayP'Length);
        This.selectHighScores;
   end setHighScoresArray;

   procedure selectHighScores (This : in out HighScoresHelper2) is
      highScores : HighScores_Access;
      index : Integer;
   begin
        if (This.highScoresArrayP'Length) = (0) then
            This.setSelectedHighScores (NullHighScoresSingletonFactory_Package.getInstance);
            return;
        end if;
        This.circularIndexUtil.next;
        highScores := This.highScoresArrayP (This.circularIndexUtil.getIndex);
        index := 0;
        while ((highScores.getTotal) < (1)) and then ((index) < (This.highScoresArrayP'Length)) loop
            highScores := This.highScoresArrayP (This.circularIndexUtil.next);
            index := index + 1;
        end loop;
        This.setSelectedHighScores (highScores);
   end selectHighScores;

end org.allbinary.game.score.HighScoresHelper2_Package;


