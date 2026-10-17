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


package body org.allbinary.game.score.remote.RemoteHighScores_Package is

   procedure Initialize_Fields (This : in out RemoteHighScores'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      
      
      This.ascending_Case := null;
      This.ASCENDING := To_Unbounded_String ("ASCENDING");
   end Initialize_Fields;


   procedure Initialize (This : in out RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
   begin
        HighScores_Package.Initialize (This, gameInfo.toString, heading, columnTwoHeading);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.softwareInformation := softwareInformation;
        This.setAscending (ascending_Case);
        if preload then
            RemoteHighScoresProcessorFactory_Package.getInstance.process (RemoteHighScores_Access'(This'Unchecked_Access), This.abeClientInformation, gameInfo);
        end if;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean) return RemoteHighScores_Access is
      This : constant RemoteHighScores_Access := new RemoteHighScores;
   begin
      RemoteHighScores_Package.Initialize (This.all, abeClientInformation_Param, softwareInformation_Param, gameInfo_Param, heading, columnTwoHeading, ascending_Case, preload);
      return This;
   end Create;

   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) return HighScores_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
   begin
        return RemoteHighScores_Package.getInstancePreload (abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, True);
   end getInstance;

   function getInstancePreload (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) return HighScores_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
      logUtil : LogUtil_Access;
      highScores : HighScores_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            highScores := HighScores_Access (RemoteHighScores_Package.hashTable.get (gameInfo));
            if (highScores) = (null) then
                highScores := RemoteHighScores_Package.Create (abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload);
                RemoteHighScores_Package.hashTable.put (gameInfo, highScores);
            end if;
            return highScores;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, RemoteErrorHighScoresSingletonFactory_Package.getInstance, commonStrings.GET_INSTANCE, e);
            return RemoteErrorHighScoresSingletonFactory_Package.getInstance;
                end;
        end;
   end getInstancePreload;

   procedure addHighScore (This : in out RemoteHighScores; newHighScore_Param : access HighScore'Class) is
      newHighScore : HighScore_Access := HighScore_Access (newHighScore_Param);
   begin
        RemoteHighScoresSubmissionProcessorFactory_Package.getInstance.process (RemoteHighScores_Access'(This'Unchecked_Access), This.abeClientInformation, newHighScore);
   end addHighScore;

   procedure update (This : in out RemoteHighScores; hashtable_Param : access ABHashtable'Class) is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      vector : BasicArrayList_Access;
      NEXT_ELEMENT : Unbounded_String;
      commonStrings : CommonStrings_Access;
      enumeration : Enumeration_Access;
      nextElement : Java_Object_Access;
      size : Integer;
      highScoreVector : BasicArrayList_Access;
      displayName : Unbounded_String;
      score : Unbounded_String;
      longScore : Long_Long_Integer;
      highScore : HighScore_Access;
      index : Integer;
   begin
        This.getList.clear;
        vector := BasicArrayList_Access (hashtable.get (Java_Object_Access (RemoteHighScoresData_Package.getInstance.HIGH_SCORES)));
        if (vector) /= (null) then
            size := vector.size;
            for index in 0 .. (size) - 1 loop
                highScoreVector := BasicArrayList_Access (vector.get (index));
                displayName := Unbounded_String (highScoreVector.get (0));
                score := Unbounded_String (highScoreVector.get (1));
                longScore := Long_Long_Integer'Value (To_String (score));
                highScore := HighScore_Package.Create (-(1), displayName, null, longScore);
                This.getList.add (highScore);
            end loop;
        else
            NEXT_ELEMENT := StringMaker_Package.Create.append (CommonLabels_Package.getInstance.NEXT).append (To_Unbounded_String ("Element: ")).toString;
            commonStrings := CommonStrings_Package.getInstance;
            enumeration := hashtable.elements;
            nextElement := null;
            while This.enumerationUtil.hasMoreElements (enumeration) loop
                nextElement := This.enumerationUtil.nextElement (enumeration);
                This.logUtil.putF (NEXT_ELEMENT & Java_Image (nextElement), RemoteHighScores_Access'(This'Unchecked_Access), commonStrings.PROCESS);
            end loop;
        end if;
   end update;

   procedure setAscending (This : in out RemoteHighScores; ascending_Case : Boolean) is
   begin
        This.ascending_Case := ascending_Case;
   end setAscending;

   function getAscending (This : in out RemoteHighScores) return Boolean is
   begin
        return This.ascending_Case;
   end getAscending;

   function getSoftwareInformation (This : in out RemoteHighScores) return SoftwareInformation_Access is
   begin
        return This.softwareInformation;
   end getSoftwareInformation;

   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) is
      Java_Result : constant HighScores_Access := getInstance (abeClientInformation_Param, softwareInformation_Param, gameInfo_Param, heading, columnTwoHeading, isAscending);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstancePreload (abeClientInformation_Param : access AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation'Class; gameInfo_Param : access GameInfo'Class; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) is
      Java_Result : constant HighScores_Access := getInstancePreload (abeClientInformation_Param, softwareInformation_Param, gameInfo_Param, heading, columnTwoHeading, isAscending, preload);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePreload;

begin
   null;
   hashTable := StdUtil_Package.getInstance.createHashtable;

end org.allbinary.game.score.remote.RemoteHighScores_Package;


