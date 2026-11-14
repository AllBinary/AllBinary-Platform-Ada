-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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



package body org.allbinary.game.layer.RTSGameStrings_Package is

   procedure Initialize_Fields (This : in out RTSGameStrings'Class) is
   begin
      null;
      This.DRAG_TO_SPOT := To_Unbounded_String ("Please Drag");
      This.NOT_YOURS := To_Unbounded_String ("Not Yours");
      This.NEW_UNIT := To_Unbounded_String ("New Unit");
      This.NEW_WAYPOINT := To_Unbounded_String ("New Waypoint");
      This.BUILDING := To_Unbounded_String ("Building");
      This.UPGRADE := To_Unbounded_String ("Upgrading");
      This.DOWNGRADE := To_Unbounded_String ("Downgrading");
      This.NO_MONEY := To_Unbounded_String ("Not Enough Money");
      This.SPOT_TAKEN := To_Unbounded_String ("Spot Taken");
      This.BUILDING_COLLISION := To_Unbounded_String ("Building Collision");
      This.STRUCTURE_TO_CLOSE := To_Unbounded_String ("Building To Close");
      This.MAP_EDGE := To_Unbounded_String ("Map Edge");
      This.ROAD_COLLISION := To_Unbounded_String ("Road Collision");
      This.SELECT_BUILD_SPOT := To_Unbounded_String ("Select Build Spot");
      This.BUILD_ON_PATH := To_Unbounded_String ("Not On Path");
      This.DRAGGABLE := To_Unbounded_String ("Draggable");
   end Initialize_Fields;

   procedure Initialize (This : in out RTSGameStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSGameStrings_Access is
      This : constant RTSGameStrings_Access := new RTSGameStrings;
   begin
      RTSGameStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSGameStrings_Access is
   begin
        return RTSGameStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := RTSGameStrings_Package.Create;

end org.allbinary.game.layer.RTSGameStrings_Package;


