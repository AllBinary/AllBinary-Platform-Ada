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


package body org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package is

   procedure Initialize_Fields (This : in out PathFindingInfo'Class) is
   begin
      null;
      This.pathFinder := GeographicPathFinderBase_Package.NULL_GEOGRAPHIC_PATH_FINDER_BASE;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingInfo'Class; pathFindingNodeCostInfoFactoryInterface_Param : access PathFindingNodeCostInfoFactoryBase'Class; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class) is
      pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access := PathFindingNodeCostInfoFactoryBase_Access (pathFindingNodeCostInfoFactoryInterface_Param);
      startPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
      Initialize_Fields (This);
        This.pathFindingNodeCostInfoFactoryInterface := pathFindingNodeCostInfoFactoryInterface;
        This.startPathFindingNodeList := startPathFindingNodeList;
        This.endPathFindingNodeList := endPathFindingNodeList;
   end Initialize;

   function Create (pathFindingNodeCostInfoFactoryInterface_Param : access PathFindingNodeCostInfoFactoryBase'Class; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class) return PathFindingInfo_Access is
      This : constant PathFindingInfo_Access := new PathFindingInfo;
   begin
      PathFindingInfo_Package.Initialize (This.all, pathFindingNodeCostInfoFactoryInterface_Param, startPathFindingNodeList_Param, endPathFindingNodeList_Param);
      return This;
   end Create;

   function getStartPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access is
   begin
        return This.startPathFindingNodeList;
   end getStartPathFindingNodeList;

   function getEndPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access is
   begin
        return This.endPathFindingNodeList;
   end getEndPathFindingNodeList;

   function getPathFinder (This : in out PathFindingInfo) return GeographicPathFinderBase_Access is
   begin
        return This.pathFinder;
   end getPathFinder;

   procedure addStartPathFindingNode (This : in out PathFindingInfo; startPathFindingNode_Param : access PathFindingNode'Class) is
      startPathFindingNode : PathFindingNode_Access := PathFindingNode_Access (startPathFindingNode_Param);
   begin
        This.startPathFindingNodeList.add (startPathFindingNode);
   end addStartPathFindingNode;

   procedure addEndPathFindingNode (This : in out PathFindingInfo; endPathFindingNode_Param : access PathFindingNode'Class) is
      endPathFindingNode : PathFindingNode_Access := PathFindingNode_Access (endPathFindingNode_Param);
   begin
        This.endPathFindingNodeList.add (endPathFindingNode);
   end addEndPathFindingNode;

   procedure setPathFinder (This : in out PathFindingInfo; pathFinder_Param : access GeographicPathFinderBase'Class) is
      pathFinder : GeographicPathFinderBase_Access := GeographicPathFinderBase_Access (pathFinder_Param);
   begin
        This.pathFinder := pathFinder;
   end setPathFinder;

   function getPathFindingNodeCostInfoFactoryInterface (This : in out PathFindingInfo) return PathFindingNodeCostInfoFactoryBase_Access is
   begin
        return This.pathFindingNodeCostInfoFactoryInterface;
   end getPathFindingNodeCostInfoFactoryInterface;

begin
   null;
   NULL_PATH_FINDING_INFO := PathFindingInfo_Package.Create (PathFindingNodeCostInfoFactoryBase_Package.NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE, BasicArrayListUtil_Package.getInstance.getImmutableInstance, BasicArrayListUtil_Package.getInstance.getImmutableInstance);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;


