-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.score.LastFetchHighScoresFactory_Package; use org.allbinary.game.score.LastFetchHighScoresFactory_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.LastFetchHighScoresFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.score.HighScoresHelperBase_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   function "=" (Left, Right : HighScores_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   procedure Initialize_Fields (This : in out HighScoresHelperBase'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.highScoresArrayP := LastFetchHighScoresFactory_Package.getInstance.highScoresArray;
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoresHelperBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoresHelperBase_Access is
      This : constant HighScoresHelperBase_Access := new HighScoresHelperBase;
   begin
      HighScoresHelperBase_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setHighScoresArray (This : in out HighScoresHelperBase; highScoresArrayP : HighScores_Access_Array_Access) is
      commonStrings : CommonStrings_Access;
   begin
        if (highScoresArrayP) /= (null) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (StringMaker_Package.Create.append (commonStrings.START).appendint (highScoresArrayP'Length).toString, HighScoresHelperBase_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
        else
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, HighScoresHelperBase_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
        end if;
        This.highScoresArrayP := highScoresArrayP;
   end setHighScoresArray;

   function getNextHighScores (This : in out HighScoresHelperBase) return HighScores_Access is
   begin
        return NullHighScoresSingletonFactory_Package.getInstance;
   end getNextHighScores;

   function isAnyHighScores (This : in out HighScoresHelperBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isAnyHighScores;

   procedure setSelectedHighScores (This : in out HighScoresHelperBase; selectedHighScores_Param : access HighScores_Package.HighScores'Class) is
      selectedHighScores : constant HighScores_Access := HighScores_Access (selectedHighScores_Param);
   begin
        null;
   end setSelectedHighScores;

   function getSelectedHighScores (This : in out HighScoresHelperBase) return HighScores_Access is
   begin
        return NullHighScoresSingletonFactory_Package.getInstance;
   end getSelectedHighScores;

   function getHighScoresArray (This : in out HighScoresHelperBase) return HighScores_Access_Array_Access is
   begin
        return This.highScoresArrayP;
   end getHighScoresArray;

   procedure selectHighScores (This : in out HighScoresHelperBase) is
   begin
        null;
   end selectHighScores;

end org.allbinary.game.score.HighScoresHelperBase_Package;


