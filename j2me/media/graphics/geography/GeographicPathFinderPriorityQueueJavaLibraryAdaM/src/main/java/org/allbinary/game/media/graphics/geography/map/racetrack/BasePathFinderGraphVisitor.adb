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


   procedure Initialize (This : in out BasePathFinderGraphVisitor'Class; geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) is
   begin
      PathFinderGraphVisitorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.geographicMapInterface := geographicMapInterface;
        This.edgeMinimum := edgeMinimum;
        This.minPathWeight := minPathWeight;
        This.maxPathWeight := maxPathWeight;
   end Initialize;

   function Create (geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return BasePathFinderGraphVisitor_Access is
      This : constant BasePathFinderGraphVisitor_Access := new BasePathFinderGraphVisitor;
   begin
      BasePathFinderGraphVisitor_Package.Initialize (This.all, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out BasePathFinderGraphVisitor; graph : Java_Object_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access) is
   begin
        null;
   end visit;

   --  throws Exception
   procedure fixPath (This : in out BasePathFinderGraphVisitor; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; pathList : BasicArrayList_Access) is
      startPathFindingNode : PathFindingNode_Access;
      index : Integer;
   begin
        startPathFindingNode := null;
        for index in reverse 0 .. (startPathFindingNodeList.size) - (1) loop
            startPathFindingNode := PathFindingNode_Access (startPathFindingNodeList.get (index));
            pathList.remove (startPathFindingNode.geographicMapCellPosition);
            pathList.addAt (0, startPathFindingNode.geographicMapCellPosition);
        end loop;
   end fixPath;

   function isValid (This : in out BasePathFinderGraphVisitor; graphPath : Java_Object_Access) return Boolean is
   begin
        return False;
   end isValid;

   function getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath : Java_Object_Access) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getInvalidReason;

   procedure isValid (This : in out BasePathFinderGraphVisitor; graphPath : Java_Object_Access) is
      Java_Result : constant Boolean := BasePathFinderGraphVisitor'Class (This).isValid (graphPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath : Java_Object_Access) is
      Java_Result : constant Unbounded_String := BasePathFinderGraphVisitor'Class (This).getInvalidReason (graphPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInvalidReason;

end org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;


