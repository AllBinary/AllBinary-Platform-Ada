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


package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package is

   procedure Initialize_Fields (This : in out PathFinderGraphHackVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        BasePathFinderGraphVisitor_Package.Initialize (This, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access is
      This : constant PathFinderGraphHackVisitor_Access := new PathFinderGraphHackVisitor;
   begin
      PathFinderGraphHackVisitor_Package.Initialize (This.all, geographicMapInterface_Param, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant Java_Object_Access := Java_Object_Access (graph_Param);
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        This.fixStart (graph, startPathFindingNodeList);
        This.fixEnd (graph, endPathFindingNodeList);
        This.fixOverPassEdges (graph);
   end visit;

   --  throws Exception
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant Java_Object_Access := Java_Object_Access (graph_Param);
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
   begin
        null;
   end fixStart;

   --  throws Exception
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      graph : constant Java_Object_Access := Java_Object_Access (graph_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
   begin
        null;
   end fixEnd;

   --  throws Exception
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class) is
      graph : constant Java_Object_Access := Java_Object_Access (graph_Param);
   begin
        null;
   end fixOverPassEdges;

   --  throws Exception
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      startPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (startPathFindingNodeList_Param);
      endPathFindingNodeList : constant BasicArrayList_Access := BasicArrayList_Access (endPathFindingNodeList_Param);
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
   begin
        null;
   end fixPath;

   --  throws Exception
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
   begin
        null;
   end removeOverPassEdges;

   function isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access Java_Object'Class) return Boolean is
      graphPath : constant Java_Object_Access := Java_Object_Access (graphPath_Param);
   begin
        return False;
   end isValid;

   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := PathFinderGraphHackVisitor'Class (This).isValid (graphPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


