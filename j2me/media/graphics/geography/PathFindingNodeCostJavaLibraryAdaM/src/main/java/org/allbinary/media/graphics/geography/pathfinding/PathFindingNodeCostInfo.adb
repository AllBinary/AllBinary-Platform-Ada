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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out PathFindingNodeCostInfo'Class) is
   begin
      null;
      This.pathFindingNodeCostInfoData := PathFindingNodeCostInfoData_Package.getInstance;
      
      
      This.totalCostP := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNodeCostInfo'Class; costFromStart : Long_Long_Integer; costToGoal : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.costFromStartP := costFromStart;
        This.costToEndP := costToGoal;
        PathFindingNodeCostInfo'Class (This).setCalculatedTotalCost;
   end Initialize;

   function Create (costFromStart : Long_Long_Integer; costToGoal : Long_Long_Integer) return PathFindingNodeCostInfo_Access is
      This : constant PathFindingNodeCostInfo_Access := new PathFindingNodeCostInfo;
   begin
      PathFindingNodeCostInfo_Package.Initialize (This.all, costFromStart, costToGoal);
      return This;
   end Create;

   procedure setCostToEnd (This : in out PathFindingNodeCostInfo; costToEnd : Long_Long_Integer) is
   begin
        This.costToEndP := costToEnd;
   end setCostToEnd;

   procedure setTotalCost (This : in out PathFindingNodeCostInfo; totalCost : Long_Long_Integer) is
   begin
        This.totalCostP := totalCost;
   end setTotalCost;

   --  throws Exception
   procedure setCalculatedTotalCost (This : in out PathFindingNodeCostInfo) is
   begin
        This.totalCostP := (This.costFromStartP) + (This.costToEndP);
        if (This.totalCostP) > (This.pathFindingNodeCostInfoData.MAX_NODE_COST) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Max Cost Exceeded")));
        end if;
   end setCalculatedTotalCost;

   procedure setCostFromStart (This : in out PathFindingNodeCostInfo; cost : Long_Long_Integer) is
   begin
        This.costFromStartP := cost;
   end setCostFromStart;

   procedure addCostFromStart (This : in out PathFindingNodeCostInfo; cost : Long_Long_Integer) is
   begin
        This.costFromStartP := (This.costFromStartP) + (cost);
   end addCostFromStart;

   function compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Var_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class) return Integer is
      pathFindingNodeCostInfo_Var : constant PathFindingNodeCostInfo_Access := PathFindingNodeCostInfo_Access (pathFindingNodeCostInfo_Var_Param);
   begin
        return java_Package.lang.Long.compare (This.totalCostP, pathFindingNodeCostInfo_Var.totalCostP);
   end compareTo;

   function toString (This : in out PathFindingNodeCostInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (CommonLabels_Package.getInstance.COLON_SEP);
        stringBuffer.append (To_Unbounded_String ("CostFromStart: "));
        stringBuffer.appendlong (This.costFromStartP);
        stringBuffer.append (To_Unbounded_String (" CostToEnd: "));
        stringBuffer.appendlong (This.costToEndP);
        stringBuffer.append (To_Unbounded_String (" TotalCost: "));
        stringBuffer.appendlong (This.totalCostP);
        return stringBuffer.toString;
   end toString;

   procedure compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Var_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class) is
      Java_Result : constant Integer := PathFindingNodeCostInfo'Class (This).compareTo (pathFindingNodeCostInfo_Var_Param => pathFindingNodeCostInfo_Var_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;


