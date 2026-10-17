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


package body org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPathHistoryInfo'Class) is
   begin
      null;
      This.previousGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.previousOnPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.nextUnvisitedOnPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.nextOnPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.nextChosenOnPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicMapCellPathHistoryInfo'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicMapCellPathHistoryInfo_Access is
      This : constant GeographicMapCellPathHistoryInfo_Access := new GeographicMapCellPathHistoryInfo;
   begin
      GeographicMapCellPathHistoryInfo_Package.Initialize (This.all);
      return This;
   end Create;


   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access is
   begin
        return This.previousGeographicMapCellPosition;
   end getPreviousGeographicMapCellPosition;

   procedure setPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      previousGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (previousGeographicMapCellPosition_Param);
   begin
        This.previousGeographicMapCellPosition := previousGeographicMapCellPosition;
   end setPreviousGeographicMapCellPosition;

   function getPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access is
   begin
        return This.previousOnPathGeographicMapCellPosition;
   end getPreviousOnPathGeographicMapCellPosition;

   procedure setPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      previousOnPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (previousOnPathGeographicMapCellPosition_Param);
   begin
        This.previousOnPathGeographicMapCellPosition := previousOnPathGeographicMapCellPosition;
   end setPreviousOnPathGeographicMapCellPosition;

   function getNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access is
   begin
        return This.nextUnvisitedOnPathGeographicMapCellPosition;
   end getNextUnvisitedOnPathGeographicMapCellPosition;

   procedure setNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextUnvisitedOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      nextUnvisitedOnPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextUnvisitedOnPathGeographicMapCellPosition_Param);
   begin
        This.nextUnvisitedOnPathGeographicMapCellPosition := nextUnvisitedOnPathGeographicMapCellPosition;
   end setNextUnvisitedOnPathGeographicMapCellPosition;

   function getNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access is
   begin
        return This.nextOnPathGeographicMapCellPosition;
   end getNextOnPathGeographicMapCellPosition;

   procedure setNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      nextOnPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextOnPathGeographicMapCellPosition_Param);
   begin
        This.nextOnPathGeographicMapCellPosition := nextOnPathGeographicMapCellPosition;
   end setNextOnPathGeographicMapCellPosition;

   function getNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access is
   begin
        return This.nextChosenOnPathGeographicMapCellPosition;
   end getNextChosenOnPathGeographicMapCellPosition;

   procedure setNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextChosenOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      nextChosenOnPathGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextChosenOnPathGeographicMapCellPosition_Param);
   begin
        This.nextChosenOnPathGeographicMapCellPosition := nextChosenOnPathGeographicMapCellPosition;
   end setNextChosenOnPathGeographicMapCellPosition;

end org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;


