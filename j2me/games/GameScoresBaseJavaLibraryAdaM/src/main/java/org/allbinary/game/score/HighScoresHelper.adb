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


package body org.allbinary.game.score.HighScoresHelper_Package is

   procedure Initialize_Fields (This : in out HighScoresHelper'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstanceAt (0, 0);
      This.lastIndex := -(1);
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoresHelper'Class) is
   begin
      HighScoresHelperBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoresHelper_Access is
      This : constant HighScoresHelper_Access := new HighScoresHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure setHighScoresArray (This : in out HighScoresHelper; highScoresArrayP : HighScores_Access_Array_Access) is
   begin
        HighScoresHelperBase (This).setHighScoresArray (highScoresArrayP);
        This.circularIndexUtil.setSize (This.highScoresArrayP'Length);
   end setHighScoresArray;

   function getNextHighScores (This : in out HighScoresHelper) return HighScores_Access is
      highScores : HighScores_Access;
      index : Integer;
   begin
        highScores := This.highScoresArrayP (This.circularIndexUtil.getIndex);
        index := 0;
        while ((((highScores.getTotal) < (1)) or else ((This.lastIndex) = (This.circularIndexUtil.getIndex)))) and then ((index) < (This.highScoresArrayP'Length)) loop
            This.circularIndexUtil.next;
            highScores := This.highScoresArrayP (This.circularIndexUtil.getIndex);
            index := index + 1;
        end loop;
        This.lastIndex := This.circularIndexUtil.getIndex;
        return highScores;
   end getNextHighScores;

   function isAnyHighScores (This : in out HighScoresHelper) return Boolean is
      anyScores : Boolean;
      highScores : HighScores_Access;
      index : Integer;
   begin
        if (This.highScoresArrayP'Length) < (1) then
            return False;
        end if;
        anyScores := False;
        highScores := null;
        for index in reverse 0 .. (This.highScoresArrayP'Length) - (1) loop
            highScores := This.highScoresArrayP (index);
            if (highScores.getTotal) > (0) then
                anyScores := True;
            end if;
        end loop;
        return anyScores;
   end isAnyHighScores;

   procedure getNextHighScores (This : in out HighScoresHelper) is
      Java_Result : constant HighScores_Access := HighScoresHelper'Class (This).getNextHighScores;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextHighScores;

   procedure isAnyHighScores (This : in out HighScoresHelper) is
      Java_Result : constant Boolean := HighScoresHelper'Class (This).isAnyHighScores;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAnyHighScores;

end org.allbinary.game.score.HighScoresHelper_Package;


