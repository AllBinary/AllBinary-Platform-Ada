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


package body org.allbinary.game.layer.RTSLayerLogHelper_Package is

   procedure Initialize_Fields (This : in out RTSLayerLogHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayerLogHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayerLogHelper_Access is
      This : constant RTSLayerLogHelper_Access := new RTSLayerLogHelper;
   begin
      RTSLayerLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayerLogHelper_Access is
   begin
        return RTSLayerLogHelper_Package.instance;
   end getInstance;

   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      pathsList : BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        null;
   end setClosestGeographicMapCellHistory;

   procedure trackTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; dx : Integer; dy : Integer; reason : Unbounded_String) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextUnvisitedPathGeographicMapCellPosition_Param);
   begin
        null;
   end trackTo;

   procedure turnTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; dx : Integer; dy : Integer; angleInfo_Param : access AngleInfo'Class; angle : Integer; movementAngle_Param : access NamedAngle'Class; evading : Boolean; targetAngle : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      angleInfo : AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      movementAngle : NamedAngle_Access := NamedAngle_Access (movementAngle_Param);
   begin
        null;
   end turnTo;

   procedure doneMoving (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end doneMoving;

   procedure closeEnough (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end closeEnough;

   procedure movingLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end movingLeft;

   procedure movingRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end movingRight;

   procedure movingUp (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end movingUp;

   procedure movingDown (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end movingDown;

   procedure currentMoveEnded (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end currentMoveEnded;

   procedure evade (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end evade;

   procedure rotateLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end rotateLeft;

   procedure rotateRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end rotateRight;

   procedure handle (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; movementAngle_Param : access NamedAngle'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      movementAngle : NamedAngle_Access := NamedAngle_Access (movementAngle_Param);
   begin
        null;
   end handle;

   procedure noRotation (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end noRotation;

   procedure notOnPath (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; pathList_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      geographicMapCellHistory : GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      currentGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentGeographicMapCellPosition_Param);
      pathList : BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
   begin
        null;
   end notOnPath;

begin
   null;
   instance := RTSLayerLogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayerLogHelper_Package;


