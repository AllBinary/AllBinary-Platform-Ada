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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package body org.allbinary.game.score.NullHighScoresSingletonFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   procedure Initialize_Fields (This : in out NullHighScoresSingletonFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullHighScoresSingletonFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullHighScoresSingletonFactory_Access is
      This : constant NullHighScoresSingletonFactory_Access := new NullHighScoresSingletonFactory;
   begin
      NullHighScoresSingletonFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScores_Access is
   begin
        return HighScores_Access (NullHighScoresSingletonFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := HighScores_Package.Create (CommonStrings_Package.getInstance.LOADING, To_Unbounded_String ("High Scores Not Loaded"), CommonStrings_Package.getInstance.PERIODS);

end org.allbinary.game.score.NullHighScoresSingletonFactory_Package;


