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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package RaceTrackRoadsGeographicMapCellHistoryFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
   package PathFindingNodeCostInfoFactoryBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out PathFindingInfoFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return PathFindingInfoFactory_Access is
   begin
        return PathFindingInfoFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PathFindingInfoFactory'Class) is
   begin
      BasePathFindingInfoFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PathFindingInfoFactory_Access is
      This : constant PathFindingInfoFactory_Access := new PathFindingInfoFactory;
   begin
      PathFindingInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      commonStrings : CommonStrings_Access;
      pathFindingInfo : PathFindingInfo_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (commonStrings.START, PathFindingInfoFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        pathFindingInfo := PathFindingInfo_Package.Create (PathFindingNodeCostInfoFactoryBase_Package.Create, BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance.init;
        PathFindingInfoFactory'Class (This).init (geographicMapInterface, pathFindingInfo, graphArray);
        return pathFindingInfo;
   end getInstancePathFindingInfo;

   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := PathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface_Param => geographicMapInterface_Param, graphArray => graphArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

begin
   null;
   instance := PathFindingInfoFactory_Package.Create;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


