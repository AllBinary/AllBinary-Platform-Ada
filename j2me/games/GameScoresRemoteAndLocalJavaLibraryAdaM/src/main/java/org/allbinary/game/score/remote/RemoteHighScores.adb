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


   procedure Initialize (This : in out RemoteHighScores'Class; abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean) is
   begin
        HighScores_Package.Initialize (This, gameInfo.toString, heading, columnTwoHeading);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.softwareInformation := softwareInformation;
        This.setAscending (ascending_Case);
        if preload then
            RemoteHighScoresProcessorFactory_Package.getInstance.process (This'Unchecked_Access, This.abeClientInformation, gameInfo);
        end if;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; ascending_Case : Boolean; preload : Boolean) return RemoteHighScores_Access is
      This : constant RemoteHighScores_Access := new RemoteHighScores;
   begin
      Initialize (This.all, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending_Case, preload);
      return This;
   end Create;

   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) return HighScores_Access is
   begin
        return RemoteHighScores_Package.getInstancePreload (abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, True);
   end getInstance;

   function getInstancePreload (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) return HighScores_Access is
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
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, RemoteErrorHighScoresSingletonFactory_Package.getInstance, commonStrings.GET_INSTANCE, e);
            return RemoteErrorHighScoresSingletonFactory_Package.getInstance;
        end;
   end getInstancePreload;

   procedure addHighScore (This : in out RemoteHighScores; newHighScore : HighScore_Access) is
   begin
        RemoteHighScoresSubmissionProcessorFactory_Package.getInstance.process (This'Unchecked_Access, This.abeClientInformation, newHighScore);
   end addHighScore;

   procedure update (This : in out RemoteHighScores; hashtable : ABHashtable_Access) is
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
                This.logUtil.putF (NEXT_ELEMENT & Java_Image (nextElement), This'Unchecked_Access, commonStrings.PROCESS);
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

   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean) is
      Java_Result : constant HighScores_Access := getInstance (abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstancePreload (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access; gameInfo : GameInfo_Access; heading : Unbounded_String; columnTwoHeading : Unbounded_String; isAscending : Boolean; preload : Boolean) is
      Java_Result : constant HighScores_Access := getInstancePreload (abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePreload;

   procedure getAscending (This : in out RemoteHighScores) is
      Java_Result : constant Boolean := RemoteHighScores'Class (This).getAscending;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAscending;

   procedure getSoftwareInformation (This : in out RemoteHighScores) is
      Java_Result : constant SoftwareInformation_Access := RemoteHighScores'Class (This).getSoftwareInformation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSoftwareInformation;

begin
   null;
   hashTable := StdUtil_Package.getInstance.createHashtable;

end org.allbinary.game.score.remote.RemoteHighScores_Package;


