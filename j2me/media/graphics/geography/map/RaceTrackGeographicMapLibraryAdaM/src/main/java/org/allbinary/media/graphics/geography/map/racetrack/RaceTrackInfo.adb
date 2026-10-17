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


package body org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package is

   procedure Initialize_Fields (This : in out RaceTrackInfo'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackInfo'Class; id : Integer; name : Unbounded_String; raceTrackFrictionProperties : RaceTrackFrictionProperties_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access; qualifyTime : Integer; worstContinuePosition : Integer; totalLaps : Integer) is
   begin
      Initialize_Fields (This);
        This.id := id;
        This.name := name;
        This.raceTrackFrictionProperties := raceTrackFrictionProperties;
        This.backgroundBasicColor := backgroundBasicColor;
        This.foregroundBasicColor := foregroundBasicColor;
        This.qualifyTime := qualifyTime;
        This.worstContinuePosition := worstContinuePosition;
        This.totalLaps := totalLaps;
   end Initialize;

   function Create (id : Integer; name : Unbounded_String; raceTrackFrictionProperties : RaceTrackFrictionProperties_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access; qualifyTime : Integer; worstContinuePosition : Integer; totalLaps : Integer) return RaceTrackInfo_Access is
      This : constant RaceTrackInfo_Access := new RaceTrackInfo;
   begin
      RaceTrackInfo_Package.Initialize (This.all, id, name, raceTrackFrictionProperties, foregroundBasicColor, backgroundBasicColor, qualifyTime, worstContinuePosition, totalLaps);
      return This;
   end Create;

   function getId (This : in out RaceTrackInfo) return Integer is
   begin
        return This.id;
   end getId;

   procedure setId (This : in out RaceTrackInfo; id : Integer) is
   begin
        This.id := id;
   end setId;

   function getName (This : in out RaceTrackInfo) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out RaceTrackInfo; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getQualifyTime (This : in out RaceTrackInfo) return Integer is
   begin
        return This.qualifyTime;
   end getQualifyTime;

   procedure setQualifyTime (This : in out RaceTrackInfo; qualifyTime : Integer) is
   begin
        This.qualifyTime := qualifyTime;
   end setQualifyTime;

   function getWorstContinuePosition (This : in out RaceTrackInfo) return Integer is
   begin
        return This.worstContinuePosition;
   end getWorstContinuePosition;

   procedure setWorstContinuePosition (This : in out RaceTrackInfo; worstContinuePosition : Integer) is
   begin
        This.worstContinuePosition := worstContinuePosition;
   end setWorstContinuePosition;

   function getTotalLaps (This : in out RaceTrackInfo) return Integer is
   begin
        return This.totalLaps;
   end getTotalLaps;

   procedure setTotalLaps (This : in out RaceTrackInfo; totalLaps : Integer) is
   begin
        This.totalLaps := totalLaps;
   end setTotalLaps;

   function getForegroundBasicColor (This : in out RaceTrackInfo) return BasicColor_Access is
   begin
        return This.foregroundBasicColor;
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out RaceTrackInfo; foregroundBasicColor : BasicColor_Access) is
   begin
        This.foregroundBasicColor := foregroundBasicColor;
   end setForegroundBasicColor;

   function getBackgroundBasicColor (This : in out RaceTrackInfo) return BasicColor_Access is
   begin
        return This.backgroundBasicColor;
   end getBackgroundBasicColor;

   procedure setBackgroundBasicColor (This : in out RaceTrackInfo; backgroundBasicColor : BasicColor_Access) is
   begin
        This.backgroundBasicColor := backgroundBasicColor;
   end setBackgroundBasicColor;

   function getRaceTrackFrictionProperties (This : in out RaceTrackInfo) return RaceTrackFrictionProperties_Access is
   begin
        return This.raceTrackFrictionProperties;
   end getRaceTrackFrictionProperties;

   procedure setRaceTrackFrictionProperties (This : in out RaceTrackInfo; raceTrackFrictionProperties : RaceTrackFrictionProperties_Access) is
   begin
        This.raceTrackFrictionProperties := raceTrackFrictionProperties;
   end setRaceTrackFrictionProperties;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;


