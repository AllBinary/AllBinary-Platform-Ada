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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References;
with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package; use org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;
with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References;
with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;

package body org.allbinary.game.ai.path.BasicAIProcessor_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapDirectionUtil_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References."=";
   subtype BasicDirectionAIHelper_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   procedure Initialize_Fields (This : in out BasicAIProcessor'Class) is
   begin
      null;
      
      
      
      
      
      This.geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAIProcessor'Class; name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPathHistoryInfo : constant GeographicMapCellPathHistoryInfo_Access := GeographicMapCellPathHistoryInfo_Access (geographicMapCellPathHistoryInfo_Param);
      chosenPathList : constant BasicArrayList_Access := BasicArrayList_Access (chosenPathList_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
   begin
      Initialize_Fields (This);
        This.name := name;
        This.geographicMapCellHistory := geographicMapCellHistory;
        This.geographicMapCellPositionBasicArrayList := chosenPathList;
        This.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo;
        BasicAIProcessor'Class (This).setName (name);
        BasicAIProcessor'Class (This).setNewPath (geographicMapCellHistory, chosenPathList);
        This.basicAI := BasicDirectionAIHelper_Package.Create (BasicAIProcessor'Class (This).getName, angleInfo);
   end Initialize;

   function Create (name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer) return BasicAIProcessor_Access is
      This : constant BasicAIProcessor_Access := new BasicAIProcessor;
   begin
      BasicAIProcessor_Package.Initialize (This.all, name, geographicMapCellHistory_Param, geographicMapCellPathHistoryInfo_Param, chosenPathList_Param, angleInfo_Param, seed);
      return This;
   end Create;

   procedure setNewPath (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      chosenPathList : constant BasicArrayList_Access := BasicArrayList_Access (chosenPathList_Param);
   begin
        BasicAIProcessor'Class (This).setGeographicMapCellHistory (geographicMapCellHistory);
        This.geographicMapCellPositionBasicArrayList := chosenPathList;
        BasicAIProcessor'Class (This).init;
   end setNewPath;

   procedure init (This : in out BasicAIProcessor) is
   begin
        This.geographicMapCellPathHistoryInfo := GeographicMapCellPathHistoryInfo_Package.Create;
        This.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition (GeographicMapCellPosition_Access (This.geographicMapCellPositionBasicArrayList.get ((This.geographicMapCellPositionBasicArrayList.size) - (1))));
        This.geographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition (GeographicMapCellPosition_Access (This.geographicMapCellPositionBasicArrayList.get ((This.geographicMapCellPositionBasicArrayList.size) - (1))));
        BasicAIProcessor'Class (This).update;
   end init;

   --  throws Exception
   function goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer is
      currentGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentGeographicMapCellPosition_Param);
      keyDirection : Integer;
      goToGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapDirectionData : Direction_Access;
   begin
        keyDirection := -(1);
        goToGeographicMapCellPosition := This.geographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition;
        geographicMapDirectionData := This.geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition (currentGeographicMapCellPosition, goToGeographicMapCellPosition);
        if (geographicMapDirectionData) = (DirectionFactory_Package.getInstance.NOT_BORDERED_WITH) then
            geographicMapDirectionData := This.geographicMapDirectionUtil.getDirectionFromCellPositionToCellPosition (currentGeographicMapCellPosition, goToGeographicMapCellPosition);
        end if;
        keyDirection := This.basicAI.getAIKeyPressedFromDirection (geographicMapDirectionData);
        return keyDirection;
   end goTowardNextChosenOnPathPosition;

   procedure update (This : in out BasicAIProcessor) is
   begin
        This.geographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition (BasicAIProcessor'Class (This).getGeographicMapCellHistory.getFirstUnvisited);
        This.geographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition (This.geographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition);
   end update;

   --  throws Exception
   function processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer is
      myManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (myManager_Param);
      currentGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentGeographicMapCellPosition_Param);
      keyDirection : Integer;
   begin
        keyDirection := -(1);
        if This.geographicMapCellPositionBasicArrayList.contains (Java_Object_Access (currentGeographicMapCellPosition)) then
            BasicAIProcessor'Class (This).update;
            keyDirection := BasicAIProcessor'Class (This).goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition);
            This.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition (currentGeographicMapCellPosition);
        else
            keyDirection := BasicAIProcessor'Class (This).goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition);
        end if;
        return keyDirection;
   end processAI;

   function getName (This : in out BasicAIProcessor) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out BasicAIProcessor; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor) return GeographicMapCellPathHistoryInfo_Access is
   begin
        return This.geographicMapCellPathHistoryInfo;
   end getGeographicMapCellPathHistoryInfo;

   procedure setGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class) is
      geographicMapCellPathHistoryInfo : constant GeographicMapCellPathHistoryInfo_Access := GeographicMapCellPathHistoryInfo_Access (geographicMapCellPathHistoryInfo_Param);
   begin
        This.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo;
   end setGeographicMapCellPathHistoryInfo;

   function getGeographicMapCellHistory (This : in out BasicAIProcessor) return GeographicMapCellHistory_Access is
   begin
        return This.geographicMapCellHistory;
   end getGeographicMapCellHistory;

   procedure setGeographicMapCellHistory (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
   begin
        This.geographicMapCellHistory := geographicMapCellHistory;
   end setGeographicMapCellHistory;

   procedure goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Integer := BasicAIProcessor'Class (This).goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition_Param => currentGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end goTowardNextChosenOnPathPosition;

   procedure processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Integer := BasicAIProcessor'Class (This).processAI (myManager_Param => myManager_Param, currentGeographicMapCellPosition_Param => currentGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processAI;

end org.allbinary.game.ai.path.BasicAIProcessor_Package;


