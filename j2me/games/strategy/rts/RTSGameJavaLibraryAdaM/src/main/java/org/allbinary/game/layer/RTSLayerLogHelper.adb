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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayerLogHelper_Access is
   begin
        return RTSLayerLogHelper_Package.instance;
   end getInstance;

   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access) is
   begin
        null;
   end setClosestGeographicMapCellHistory;

   procedure trackTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; dx : Integer; dy : Integer; reason : Unbounded_String) is
   begin
        null;
   end trackTo;

   procedure turnTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer; angleInfo : AngleInfo_Access; angle : Integer; movementAngle : NamedAngle_Access; evading : Boolean; targetAngle : Integer) is
   begin
        null;
   end turnTo;

   procedure doneMoving (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end doneMoving;

   procedure closeEnough (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end closeEnough;

   procedure movingLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end movingLeft;

   procedure movingRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end movingRight;

   procedure movingUp (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end movingUp;

   procedure movingDown (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end movingDown;

   procedure currentMoveEnded (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end currentMoveEnded;

   procedure evade (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end evade;

   procedure rotateLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end rotateLeft;

   procedure rotateRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end rotateRight;

   procedure handle (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; movementAngle : NamedAngle_Access) is
   begin
        null;
   end handle;

   procedure noRotation (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end noRotation;

   procedure notOnPath (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access; pathList : BasicArrayList_Access) is
   begin
        null;
   end notOnPath;

   procedure getInstance is
      Java_Result : constant RTSLayerLogHelper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := RTSLayerLogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayerLogHelper_Package;


