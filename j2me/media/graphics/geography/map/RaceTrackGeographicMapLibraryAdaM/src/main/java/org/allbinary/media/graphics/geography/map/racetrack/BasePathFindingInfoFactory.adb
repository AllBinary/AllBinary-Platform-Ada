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
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access) is
   begin
        --  Java nested class RaceTrackGeographicMapCellPositionFactoryInitVisitor: move it to its own package
        geographicMapInterface.getGeographicMapCellPositionFactory.visit (RaceTrackGeographicMapCellPositionFactoryInitVisitor_Package.Create);
   end init;

   --  throws Exception
   procedure addStartPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo : PathFindingInfo_Access; startGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        pathFindingInfo.addStartPathFindingNode (PathFindingNode_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, startGeographicMapCellPosition));
   end addStartPathFindingNode;

   --  throws Exception
   procedure addEndPathFindingNode (This : in out BasePathFindingInfoFactory; pathFindingInfo : PathFindingInfo_Access; endGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        pathFindingInfo.addEndPathFindingNode (PathFindingNode_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, endGeographicMapCellPosition));
   end addEndPathFindingNode;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstancePathFindingInfo;

   procedure getInstancePathFindingInfo (This : in out BasePathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := BasePathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface, graphArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

end org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;


