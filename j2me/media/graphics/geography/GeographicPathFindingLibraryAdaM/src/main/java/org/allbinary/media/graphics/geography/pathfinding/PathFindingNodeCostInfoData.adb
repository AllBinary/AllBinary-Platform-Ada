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


package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package is

   procedure Initialize_Fields (This : in out PathFindingNodeCostInfoData'Class) is
   begin
      null;
      This.MAX_TOTAL_COST := Integer_Package.MAX_VALUE;
      This.MAX_NODE_COST := (Integer_Package.MAX_VALUE) / (10000);
   end Initialize_Fields;


   function getInstance return PathFindingNodeCostInfoData_Access is
   begin
        return PathFindingNodeCostInfoData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PathFindingNodeCostInfoData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PathFindingNodeCostInfoData_Access is
      This : constant PathFindingNodeCostInfoData_Access := new PathFindingNodeCostInfoData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant PathFindingNodeCostInfoData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PathFindingNodeCostInfoData_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;


