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


package body org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package is

   procedure Initialize_Fields (This : in out BasePathFinderGraphVisitor'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasePathFinderGraphVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
      PathFinderGraphVisitorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.geographicMapInterface := geographicMapInterface;
        This.edgeMinimum := edgeMinimum;
        This.minPathWeight := minPathWeight;
        This.maxPathWeight := maxPathWeight;
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return BasePathFinderGraphVisitor_Access is
      This : constant BasePathFinderGraphVisitor_Access := new BasePathFinderGraphVisitor;
   begin
      BasePathFinderGraphVisitor_Package.Initialize (This.all, geographicMapInterface_Param, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out BasePathFinderGraphVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant SimpleWeightedGraph_Access := SimpleWeightedGraph_Access (graph_Param);
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        null;
   end visit;

   --  throws Exception
   procedure fixPath (This : in out BasePathFinderGraphVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      startPathFindingNode : PathFindingNode_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (startPathFindingNodeList.size) - (1) loop
            startPathFindingNode := PathFindingNode_Access (startPathFindingNodeList.get (index));
            pathList.remove (startPathFindingNode.geographicMapCellPosition);
            pathList.addAt (0, startPathFindingNode.geographicMapCellPosition);
        end loop;
   end fixPath;

   function isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Boolean is
      graphPath : constant GraphPath_Access := GraphPath_Access (graphPath_Param);
   begin
        if (((graphPath.getEdgeList.size) > (This.edgeMinimum)) and then ((graphPath.getWeight) < (This.maxPathWeight))) and then ((graphPath.getWeight) > (This.minPathWeight)) then
            return True;
        else
            return False;
        end if;
   end isValid;

   function getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Unbounded_String is
      graphPath : constant GraphPath_Access := GraphPath_Access (graphPath_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        if (graphPath.getEdgeList.size) < (This.edgeMinimum) then
            stringBuffer.append (To_Unbounded_String ("Ignoring Small: ") & Java_Image (graphPath.getEdgeList.size));
        end if;
        if (graphPath.getWeight) <= (This.minPathWeight) then
            stringBuffer.append (To_Unbounded_String (" Low Weighted Path: ") & Java_Image (graphPath.getWeight));
        end if;
        if (graphPath.getWeight) >= (This.maxPathWeight) then
            stringBuffer.append (To_Unbounded_String (" To High Weighted Path: ") & Java_Image (graphPath.getWeight));
        end if;
        return stringBuffer.toString;
   end getInvalidReason;

   procedure isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) is
      Java_Result : constant Boolean := BasePathFinderGraphVisitor'Class (This).isValid (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) is
      Java_Result : constant Unbounded_String := BasePathFinderGraphVisitor'Class (This).getInvalidReason (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInvalidReason;

end org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;


