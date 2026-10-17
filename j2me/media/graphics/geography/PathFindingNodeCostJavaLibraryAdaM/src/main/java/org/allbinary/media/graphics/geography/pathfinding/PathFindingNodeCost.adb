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


   procedure Initialize (This : in out PathFindingNodeCost'Class; parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo'Class) is
      parent : Java_Object_Access := Java_Object_Access (parent_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access := PathFindingNodeCostInfo_Access (pathFindingNodeCostInfo_Param);
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

   function Create (parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo'Class) return PathFindingNodeCost_Access is
      This : constant PathFindingNodeCost_Access := new PathFindingNodeCost;
   begin
      PathFindingNodeCost_Package.Initialize (This.all, parent_Param, geographicMapCellPosition_Param, pathFindingNodeCostInfo_Param);
      return This;
   end Create;

   function getPathFindingNodeCostInfo (This : in out PathFindingNodeCost) return PathFindingNodeCostInfo_Access is
   begin
        return This.pathFindingNodeCostInfoP;
   end getPathFindingNodeCostInfo;

   procedure setPathFindingNodeCostInfo (This : in out PathFindingNodeCost; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo'Class) is
      pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access := PathFindingNodeCostInfo_Access (pathFindingNodeCostInfo_Param);
   begin
        This.pathFindingNodeCostInfoP := pathFindingNodeCostInfo;
   end setPathFindingNodeCostInfo;

   function compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost_Param : access PathFindingNodeCost'Class) return Integer is
      pathFindingNodeCost : PathFindingNodeCost_Access := PathFindingNodeCost_Access (pathFindingNodeCost_Param);
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

   procedure compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost_Param : access PathFindingNodeCost'Class) is
      Java_Result : constant Integer := PathFindingNodeCost'Class (This).compareTo (pathFindingNodeCost_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

begin
   null;
   NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY := new PathFindingNodeCost_Access_Array_Access_Array'(0 .. (0) - 1 => new PathFindingNodeCost_Access_Array'(0 .. (0) - 1 => null));

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;


