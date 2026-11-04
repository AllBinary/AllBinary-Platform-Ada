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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
with org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package; use org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package body org.allbinary.game.score.displayable.HighScoreUtil_Package is

   package HighScoreNamePersistanceSingleton_Package renames Standard.org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   function "=" (Left, Right : HighScore_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
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
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out HighScoreUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      
      
      This.firstTime := True;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoreUtil'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class) is
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      highScoresHelper : constant HighScoresHelperBaseInterface_Access := HighScoresHelperBaseInterface_Access (highScoresHelper_Param);
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      highScore : constant HighScore_Access := HighScore_Access (highScore_Param);
   begin
      Initialize_Fields (This);
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        This.highScoresHelper := highScoresHelper;
        This.highScoresArray := This.highScoresHelper.getHighScoresArray;
        This.highScore := highScore;
        This.abeClientInformation := abeClientInformation;
        This.gameInfo := gameInfo;
   end Initialize;

   function Create (highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresHelper_Param : access HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; highScore_Param : access HighScore_Package.HighScore'Class) return HighScoreUtil_Access is
      This : constant HighScoreUtil_Access := new HighScoreUtil;
   begin
      HighScoreUtil_Package.Initialize (This.all, highScoresFactoryInterface_Param, highScoresHelper_Param, abeClientInformation_Param, gameInfo_Param, cmdListener_Param, name, highScore_Param);
      return This;
   end Create;

   procedure setHighScoresArray (This : in out HighScoreUtil; highScoresArray : HighScores_Access_Array_Access) is
   begin
        This.highScoresArray := highScoresArray;
        This.firstTime := False;
        HighScoreUtil'Class (This).saveHighScore;
   end setHighScoresArray;

   procedure update (This : in out HighScoreUtil; name : Unbounded_String) is
   begin
        HighScoreNamePersistanceSingleton_Package.getInstance.save (This.abeClientInformation, This.gameInfo, name);
        This.highScore.setName (name);
   end update;

   procedure saveHighScore (This : in out HighScoreUtil) is
      size : Integer;
      highScores : HighScores_Access;
      highScoresAsString : Unbounded_String;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (StringUtil_Package.getInstance.toString (This.highScore)).toString, HighScoreUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveHighScore"));
        size := This.highScoresArray'Length;
        if (This.firstTime) and then ((size) = (0)) then
            This.logUtil.putF (To_Unbounded_String ("Games canvas did not give us any HighScores"), HighScoreUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveHighScore"));
            This.highScoresFactoryInterface.fetchHighScores (This.gameInfo, HighScoreUtil_Access'(This'Unchecked_Access));
            return;
        end if;
        highScores := null;
        highScoresAsString := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            highScores := This.highScoresArray (index);
            highScores.addHighScore (This.highScore);
            highScoresAsString := highScores.toString;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Added/Adding Score: ")).append (highScoresAsString).toString, HighScoreUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("saveHighScore"));
        end loop;
        This.highScoresHelper.setHighScoresArray (This.highScoresArray);
   end saveHighScore;

   procedure submit (This : in out HighScoreUtil; myCanvas_Param : access MyCanvas_Package.MyCanvas'Class) is
      myCanvas : constant MyCanvas_Access := MyCanvas_Access (myCanvas_Param);
      commandListener : CommandListener_Access;
   begin
        commandListener := myCanvas.getCustomCommandListener;
        commandListener.commandAction (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND, myCanvas);
   end submit;

begin
   null;
   SUBMIT_TEXTBOX_COMMAND := Command_Package.Create (To_Unbounded_String ("Submit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);

end org.allbinary.game.score.displayable.HighScoreUtil_Package;


