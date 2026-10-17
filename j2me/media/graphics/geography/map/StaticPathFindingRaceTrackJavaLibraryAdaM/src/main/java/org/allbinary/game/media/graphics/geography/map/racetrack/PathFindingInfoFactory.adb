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


package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      commonStrings : CommonStrings_Access;
      pathFindingInfo : PathFindingInfo_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (commonStrings.START, This'Unchecked_Access, commonStrings.GET_INSTANCE);
        pathFindingInfo := PathFindingInfo_Package.Create (PathFindingNodeCostInfoFactoryBase_Package.Create, BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance.init;
        This.init (geographicMapInterface, pathFindingInfo, graphArray);
        return pathFindingInfo;
   end getInstancePathFindingInfo;

   procedure getInstance is
      Java_Result : constant PathFindingInfoFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; graphArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := PathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface, graphArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

begin
   null;
   instance := PathFindingInfoFactory_Package.Create;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


