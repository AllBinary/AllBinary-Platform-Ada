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


package body org.allbinary.game.score.HighScores_Package is

   procedure Initialize_Fields (This : in out HighScores'Class) is
   begin
      null;
      This.orderedHighScoresList := BasicArrayListD_Package.Create;
      
      
      This.columnOneHeading := To_Unbounded_String ("Name");
      
   end Initialize_Fields;


   procedure Initialize (This : in out HighScores'Class; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.heading := heading;
        This.columnTwoHeading := columnTwoHeading;
   end Initialize;

   function Create (name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String) return HighScores_Access is
      This : constant HighScores_Access := new HighScores;
   begin
      HighScores_Package.Initialize (This.all, name, heading, columnTwoHeading);
      return This;
   end Create;

   procedure setList (This : in out HighScores; orderedHighScoresList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      orderedHighScoresList : constant BasicArrayList_Access := BasicArrayList_Access (orderedHighScoresList_Param);
   begin
        This.orderedHighScoresList := orderedHighScoresList;
   end setList;

   function getList (This : in out HighScores) return BasicArrayList_Access is
   begin
        return This.orderedHighScoresList;
   end getList;

   function getName (This : in out HighScores) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getTotal (This : in out HighScores) return Integer is
   begin
        return HighScores'Class (This).getList.size;
   end getTotal;

   procedure addHighScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) is
      newHighScore : constant HighScore_Access := HighScore_Access (newHighScore_Param);
   begin
        This.orderedHighScoresList.add (newHighScore);
   end addHighScore;

   function getHeading (This : in out HighScores) return Unbounded_String is
   begin
        return This.heading;
   end getHeading;

   function getColumnOneHeading (This : in out HighScores) return Unbounded_String is
   begin
        return This.columnOneHeading;
   end getColumnOneHeading;

   function getColumnTwoHeading (This : in out HighScores) return Unbounded_String is
   begin
        return This.columnTwoHeading;
   end getColumnTwoHeading;

   --  throws Exception
   function isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) return Boolean is
      newHighScore : constant HighScore_Access := HighScore_Access (newHighScore_Param);
   begin
        return False;
   end isBestScore;

   function toString (This : in out HighScores) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("HighScores: "));
        stringBuffer.append (This.heading);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.TOTAL_LABEL);
        stringBuffer.appendint (This.orderedHighScoresList.size);
        return stringBuffer.toString;
   end toString;

   procedure isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) is
      Java_Result : constant Boolean := HighScores'Class (This).isBestScore (newHighScore_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBestScore;

end org.allbinary.game.score.HighScores_Package;


