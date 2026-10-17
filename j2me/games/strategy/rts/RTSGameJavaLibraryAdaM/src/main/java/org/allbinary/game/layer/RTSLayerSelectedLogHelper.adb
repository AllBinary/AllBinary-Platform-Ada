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


package body org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package is

   procedure Initialize_Fields (This : in out RTSLayerSelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.positionStrings := PositionStrings_Package.getInstance;
      This.TRACKTO_TURNTO := To_Unbounded_String ("trackTo:turnTo");
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayerSelectedLogHelper'Class) is
   begin
      RTSLayerLogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayerSelectedLogHelper_Access is
      This : constant RTSLayerSelectedLogHelper_Access := new RTSLayerSelectedLogHelper;
   begin
      RTSLayerSelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayerSelectedLogHelper_Access is
   begin
        return RTSLayerSelectedLogHelper_Package.instanceC;
   end getInstance;

   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.START);
        stringBuffer.appendint (pathsList.size);
        stringBuffer.append (To_Unbounded_String (" -> "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (pathsList));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: setClosestGeographicMapCellHistory"));
   end setClosestGeographicMapCellHistory;

   procedure trackTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; dx : Integer; dy : Integer; reason : Unbounded_String) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (StringUtil_Package.getInstance.toString (nextUnvisitedPathGeographicMapCellPosition));
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (reason);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: trackTo"));
   end trackTo;

   procedure turnTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer; angleInfo : AngleInfo_Access; angle : Integer; movementAngle : NamedAngle_Access; evading : Boolean; targetAngle : Integer) is
      stringBuffer : StringMaker_Access;
      angleIncrement : Short_Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" steering - "));
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        stringBuffer.append (To_Unbounded_String (" angle: "));
        stringBuffer.appendint (angle);
        stringBuffer.append (To_Unbounded_String (" movementAngle: "));
        stringBuffer.append (movementAngle.name);
        stringBuffer.append (This.commonSeps.FORWARD_SLASH);
        stringBuffer.appendshort (Short_Integer (movementAngle.getValue));
        if (angleInfo) /= (null) then
            angleIncrement := angleInfo.getAngleIncrementInfo.getAngleIncrement;
            stringBuffer.append (To_Unbounded_String (" angleIncrement: "));
            stringBuffer.appendshort (angleIncrement);
        end if;
        stringBuffer.append (To_Unbounded_String (" Evading: "));
        stringBuffer.appendboolean (evading);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end turnTo;

   procedure doneMoving (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - done moving 0,0")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end doneMoving;

   procedure closeEnough (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - close enough")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end closeEnough;

   procedure movingLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - allow movingLeft")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end movingLeft;

   procedure movingRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - allow movingRight")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end movingRight;

   procedure movingUp (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - allow movingUp")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end movingUp;

   procedure movingDown (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - allow movingDown")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end movingDown;

   procedure currentMoveEnded (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - correct angle, but movement not needed for current deltas so reseting movement angle")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end currentMoveEnded;

   procedure evade (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - evade")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end evade;

   procedure rotateLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - rotating left")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end rotateLeft;

   procedure rotateRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - rotating right")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end rotateRight;

   procedure handle (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; movementAngle : NamedAngle_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - movementAngle: ")).append (movementAngle.name).append (This.commonSeps.FORWARD_SLASH).appendshort (Short_Integer (movementAngle.getValue)).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end handle;

   procedure noRotation (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" steering - Do not rotate")).toString, This'Unchecked_Access, This.TRACKTO_TURNTO);
   end noRotation;

   procedure notOnPath (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access; pathList : BasicArrayList_Access) is
      stringUtil : StringUtil_Access;
   begin
        stringUtil := StringUtil_Package.getInstance;
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (CommonSeps_Package.getInstance.SPACE).appendint (Integer (geographicMapCellHistory.getTotalVisited)).append (CommonSeps_Package.getInstance.SPACE).append (stringUtil.toString (currentGeographicMapCellPosition)).append (To_Unbounded_String (" - trying to move but not on path: ")).append (stringUtil.toString (pathList)).toString, This'Unchecked_Access, To_Unbounded_String ("turnTo"));
   end notOnPath;

begin
   null;
   instanceC := RTSLayerSelectedLogHelper_Package.Create;

end org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package;


