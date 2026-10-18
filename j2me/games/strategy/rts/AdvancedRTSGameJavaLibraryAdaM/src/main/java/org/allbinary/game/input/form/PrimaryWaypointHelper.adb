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


with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;

package body org.allbinary.game.input.form.PrimaryWaypointHelper_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
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
      PrimaryWaypointHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getWaypointLayer (This : in out PrimaryWaypointHelper) return PathFindingLayerInterface_Access is
   begin
        return This.waypointLayer;
   end getWaypointLayer;

   procedure setWaypointLayer (This : in out PrimaryWaypointHelper; waypointLayer_Param : access WaypointLayer_Package.WaypointLayer'Class) is
      waypointLayer : constant WaypointLayer_Access := WaypointLayer_Access (waypointLayer_Param);
   begin
        This.waypointLayer := PathFindingLayerInterface_Access (waypointLayer);
   end setWaypointLayer;

begin
   null;
   instance := PrimaryWaypointHelper_Package.Create;

end org.allbinary.game.input.form.PrimaryWaypointHelper_Package;


