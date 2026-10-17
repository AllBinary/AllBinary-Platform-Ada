--
-- AllBinary Open License Version 1
-- Copyright (c) 2006 AllBinary
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


package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package is

   procedure Initialize_Fields (This : in out PathFindingNodeCost'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNodeCost'Class; parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access) is
   begin
        PathFindingNode_Package.Initialize (This, parent, geographicMapCellPosition);
        Initialize_Fields (This);
        This.pathFindingNodeCostInfoP := pathFindingNodeCostInfo;
        if (This.geographicMapCellPosition) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No GeographicMapCellPosition")));
        end if;
        if (This.getPathFindingNodeCostInfo) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No PathFindingNodeCostInfo")));
        end if;
   end Initialize;

   function Create (parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access) return PathFindingNodeCost_Access is
      This : constant PathFindingNodeCost_Access := new PathFindingNodeCost;
   begin
      Initialize (This.all, parent, geographicMapCellPosition, pathFindingNodeCostInfo);
      return This;
   end Create;

   function getPathFindingNodeCostInfo (This : in out PathFindingNodeCost) return PathFindingNodeCostInfo_Access is
   begin
        return This.pathFindingNodeCostInfoP;
   end getPathFindingNodeCostInfo;

   procedure setPathFindingNodeCostInfo (This : in out PathFindingNodeCost; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access) is
   begin
        This.pathFindingNodeCostInfoP := pathFindingNodeCostInfo;
   end setPathFindingNodeCostInfo;

   function compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost : PathFindingNodeCost_Access) return Integer is
   begin
        return This.pathFindingNodeCostInfoP.compareTo (pathFindingNodeCost.pathFindingNodeCostInfoP);
   end compareTo;

   function toString (This : in out PathFindingNodeCost) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      pathFindingNode : PathFindingNode_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (CommonLabels_Package.getInstance.COLON_SEP);
        stringBuffer.append (This.getPathFindingNodeCostInfo.toString);
        stringBuffer.append (To_Unbounded_String (" Path: "));
        stringBuffer.append (This.geographicMapCellPosition.toString);
        pathFindingNode := PathFindingNode_Access (This.parent);
        while (pathFindingNode) /= (null) loop
            stringBuffer.append (pathFindingNode.geographicMapCellPosition.toString);
            stringBuffer.append (This.commonSeps.SPACE);
            pathFindingNode := PathFindingNode_Access (pathFindingNode.parent);
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure getPathFindingNodeCostInfo (This : in out PathFindingNodeCost) is
      Java_Result : constant PathFindingNodeCostInfo_Access := PathFindingNodeCost'Class (This).getPathFindingNodeCostInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathFindingNodeCostInfo;

   procedure compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost : PathFindingNodeCost_Access) is
      Java_Result : constant Integer := PathFindingNodeCost'Class (This).compareTo (pathFindingNodeCost);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure toString (This : in out PathFindingNodeCost) is
      Java_Result : constant Unbounded_String := PathFindingNodeCost'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY := new PathFindingNodeCost_Access_Array_Access_Array'(0 .. (0) - 1 => new PathFindingNodeCost_Access_Array'(0 .. (0) - 1 => null));

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;


