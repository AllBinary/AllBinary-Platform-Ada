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


package body org.allbinary.game.input.form.PrimaryWaypointHelper_Package is

   procedure Initialize_Fields (This : in out PrimaryWaypointHelper'Class) is
   begin
      null;
      This.waypointLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
   end Initialize_Fields;


   function getInstance return PrimaryWaypointHelper_Access is
   begin
        return PrimaryWaypointHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PrimaryWaypointHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PrimaryWaypointHelper_Access is
      This : constant PrimaryWaypointHelper_Access := new PrimaryWaypointHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getWaypointLayer (This : in out PrimaryWaypointHelper) return PathFindingLayerInterface_Access is
   begin
        return This.waypointLayer;
   end getWaypointLayer;

   procedure setWaypointLayer (This : in out PrimaryWaypointHelper; waypointLayer : WaypointLayer_Access) is
   begin
        This.waypointLayer := waypointLayer;
   end setWaypointLayer;

   procedure getInstance is
      Java_Result : constant PrimaryWaypointHelper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getWaypointLayer (This : in out PrimaryWaypointHelper) is
      Java_Result : constant PathFindingLayerInterface_Access := PrimaryWaypointHelper'Class (This).getWaypointLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWaypointLayer;

begin
   null;
   instance := PrimaryWaypointHelper_Package.Create;

end org.allbinary.game.input.form.PrimaryWaypointHelper_Package;


