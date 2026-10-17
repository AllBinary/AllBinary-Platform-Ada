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


package body org.allbinary.game.ai.path.BasicAIProcessor_Package is

   procedure Initialize_Fields (This : in out BasicAIProcessor'Class) is
   begin
      null;
      
      
      
      
      
      This.geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAIProcessor'Class; name : Unbounded_String; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo_Access; chosenPathList : BasicArrayList_Access; angleInfo : AngleInfo_Access; seed : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.geographicMapCellHistory := geographicMapCellHistory;
        This.geographicMapCellPositionBasicArrayList := chosenPathList;
        This.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo;
        This.setName (name);
        This.setNewPath (geographicMapCellHistory, chosenPathList);
        This.basicAI := BasicDirectionAIHelper_Package.Create (This.getName, angleInfo);
   end Initialize;

   function Create (name : Unbounded_String; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo_Access; chosenPathList : BasicArrayList_Access; angleInfo : AngleInfo_Access; seed : Integer) return BasicAIProcessor_Access is
      This : constant BasicAIProcessor_Access := new BasicAIProcessor;
   begin
      Initialize (This.all, name, geographicMapCellHistory, geographicMapCellPathHistoryInfo, chosenPathList, angleInfo, seed);
      return This;
   end Create;

   procedure setNewPath (This : in out BasicAIProcessor; geographicMapCellHistory : GeographicMapCellHistory_Access; chosenPathList : BasicArrayList_Access) is
   begin
        This.setGeographicMapCellHistory (geographicMapCellHistory);
        This.geographicMapCellPositionBasicArrayList := chosenPathList;
        This.init;
   end setNewPath;

   procedure init (This : in out BasicAIProcessor) is
   begin
        This.geographicMapCellPathHistoryInfo := GeographicMapCellPathHistoryInfo_Package.Create;
        This.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition (GeographicMapCellPosition_Access (This.geographicMapCellPositionBasicArrayList.get ((This.geographicMapCellPositionBasicArrayList.size) - (1))));
        This.geographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition (GeographicMapCellPosition_Access (This.geographicMapCellPositionBasicArrayList.get ((This.geographicMapCellPositionBasicArrayList.size) - (1))));
        This.update;
   end init;

   --  throws Exception
   function goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition : GeographicMapCellPosition_Access) return Integer is
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
        This.geographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition (This.getGeographicMapCellHistory.getFirstUnvisited);
        This.geographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition (This.geographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition);
   end update;

   --  throws Exception
   function processAI (This : in out BasicAIProcessor; myManager : AllBinaryLayerManager_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access) return Integer is
      keyDirection : Integer;
   begin
        keyDirection := -(1);
        if This.geographicMapCellPositionBasicArrayList.contains (currentGeographicMapCellPosition) then
            This.update;
            keyDirection := This.goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition);
            This.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition (currentGeographicMapCellPosition);
        else
            keyDirection := This.goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition);
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

   procedure setGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor; geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo_Access) is
   begin
        This.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo;
   end setGeographicMapCellPathHistoryInfo;

   function getGeographicMapCellHistory (This : in out BasicAIProcessor) return GeographicMapCellHistory_Access is
   begin
        return This.geographicMapCellHistory;
   end getGeographicMapCellHistory;

   procedure setGeographicMapCellHistory (This : in out BasicAIProcessor; geographicMapCellHistory : GeographicMapCellHistory_Access) is
   begin
        This.geographicMapCellHistory := geographicMapCellHistory;
   end setGeographicMapCellHistory;

   procedure goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Integer := BasicAIProcessor'Class (This).goTowardNextChosenOnPathPosition (currentGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end goTowardNextChosenOnPathPosition;

   procedure processAI (This : in out BasicAIProcessor; myManager : AllBinaryLayerManager_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Integer := BasicAIProcessor'Class (This).processAI (myManager, currentGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processAI;

   procedure getName (This : in out BasicAIProcessor) is
      Java_Result : constant Unbounded_String := BasicAIProcessor'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor) is
      Java_Result : constant GeographicMapCellPathHistoryInfo_Access := BasicAIProcessor'Class (This).getGeographicMapCellPathHistoryInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPathHistoryInfo;

   procedure getGeographicMapCellHistory (This : in out BasicAIProcessor) is
      Java_Result : constant GeographicMapCellHistory_Access := BasicAIProcessor'Class (This).getGeographicMapCellHistory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellHistory;

end org.allbinary.game.ai.path.BasicAIProcessor_Package;


