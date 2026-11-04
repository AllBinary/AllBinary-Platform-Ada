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



package body org.allbinary.logic.control.workflow.WorkFlowData_Package is

   procedure Initialize_Fields (This : in out WorkFlowData'Class) is
   begin
      null;
      This.WORKFLOWS := To_Unbounded_String ("WORKFLOWS");
      This.WORKFLOW := To_Unbounded_String ("WORKFLOW");
      This.NAME := To_Unbounded_String ("WORKFLOW_NAME");
      This.DATA := To_Unbounded_String ("WORKFLOW_DATA");
   end Initialize_Fields;


   function getInstance return WorkFlowData_Access is
   begin
        return WorkFlowData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out WorkFlowData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WorkFlowData_Access is
      This : constant WorkFlowData_Access := new WorkFlowData;
   begin
      WorkFlowData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := WorkFlowData_Package.Create;

end org.allbinary.logic.control.workflow.WorkFlowData_Package;


