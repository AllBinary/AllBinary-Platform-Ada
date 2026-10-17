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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package; use org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.score.displayable.HighScoreUtil_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package HighScoreNamePersistanceSingleton_Package renames Standard.org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package HighScoresHelperBaseInterface_Package renames Standard.org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
   package HighScoresResultsListener_Package renames Standard.org.allbinary.game.score.HighScoresResultsListener_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type HighScoreUtil is tagged;
   type HighScoreUtil_Access is access all HighScoreUtil'Class;
   type HighScoreUtil_Access_Array is array (Natural range <>) of HighScoreUtil_Access;
   type HighScoreUtil_Access_Array_Access is access all HighScoreUtil_Access_Array;

   type HighScoreUtil is new HighScoresResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      highScoresFactoryInterface : HighScoresFactoryInterface_Access;
      highScoresArray : HighScores_Access_Array_Access;
      highScore : HighScore_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      gameInfo : GameInfo_Access;
      highScoresHelper : HighScoresHelperBaseInterface_Access;
      firstTime : Boolean;
   end record;
   SUBMIT_TEXTBOX_COMMAND : Command_Access;

   procedure Initialize (This : in out HighScoreUtil'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class);
   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class) return HighScoreUtil_Access;
   procedure setHighScoresArray (This : in out HighScoreUtil; highScoresArray : HighScores_Access_Array_Access);
   procedure update (This : in out HighScoreUtil; name : Unbounded_String);
   procedure saveHighScore (This : in out HighScoreUtil);
   procedure submit (This : in out HighScoreUtil; myCanvas_Param : access MyCanvas_Package.MyCanvas'Class);

end org.allbinary.game.score.displayable.HighScoreUtil_Package;


