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


   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
   begin
        BasePathFinderGraphVisitor_Package.Initialize (This, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
   end Initialize;

   function Create (geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access is
      This : constant PathFinderGraphHackVisitor_Access := new PathFinderGraphHackVisitor;
   begin
      PathFinderGraphHackVisitor_Package.Initialize (This.all, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out PathFinderGraphHackVisitor; graph : Java_Object_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access) is
   begin
        This.fixStart (graph, startPathFindingNodeList);
        This.fixEnd (graph, endPathFindingNodeList);
        This.fixOverPassEdges (graph);
   end visit;

   --  throws Exception
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph : Java_Object_Access; startPathFindingNodeList : BasicArrayList_Access) is
   begin
        null;
   end fixStart;

   --  throws Exception
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph : Java_Object_Access; endPathFindingNodeList : BasicArrayList_Access) is
   begin
        null;
   end fixEnd;

   --  throws Exception
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph : Java_Object_Access) is
   begin
        null;
   end fixOverPassEdges;

   --  throws Exception
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; pathList : BasicArrayList_Access) is
   begin
        null;
   end fixPath;

   --  throws Exception
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList : BasicArrayList_Access) is
   begin
        null;
   end removeOverPassEdges;

   function isValid (This : in out PathFinderGraphHackVisitor; graphPath : Java_Object_Access) return Boolean is
   begin
        return False;
   end isValid;

   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath : Java_Object_Access) is
      Java_Result : constant Boolean := PathFinderGraphHackVisitor'Class (This).isValid (graphPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


