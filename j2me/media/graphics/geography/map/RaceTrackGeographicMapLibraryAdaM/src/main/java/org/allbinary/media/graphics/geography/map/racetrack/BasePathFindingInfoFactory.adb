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


package body org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package is

   procedure Initialize_Fields (This : in out BasePathFindingInfoFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BasePathFindingInfoFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasePathFindingInfoFactory_Access is
      This : constant BasePathFindingInfoFactory_Access := new BasePathFindingInfoFactory;
   begin
      BasePathFindingInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
   begin
        --  Java nested class RaceTrackGeographicMapCellPositionFactoryInitVisitor: move it to its own package
        geographicMapInterface.getGeographicMapCellPositionFactory.visit (RaceTrackGeographicMapCellPositionFactoryInitVisitor_Package.Create);
   end init;

   --  throws Exception
   procedure addStartPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      startGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (startGeographicMapCellPosition_Param);
   begin
        pathFindingInfo.addStartPathFindingNode (PathFindingNode_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, startGeographicMapCellPosition));
   end addStartPathFindingNode;

   --  throws Exception
   procedure addEndPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; endGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      endGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (endGeographicMapCellPosition_Param);
   begin
        pathFindingInfo.addEndPathFindingNode (PathFindingNode_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, endGeographicMapCellPosition));
   end addEndPathFindingNode;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getInstancePathFindingInfo;

   procedure getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; graphArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := BasePathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface_Param, graphArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

end org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;


