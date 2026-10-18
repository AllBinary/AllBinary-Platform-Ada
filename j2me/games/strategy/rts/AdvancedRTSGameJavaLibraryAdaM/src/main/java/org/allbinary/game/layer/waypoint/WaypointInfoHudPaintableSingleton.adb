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



package body org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package is

   procedure Initialize_Fields (This : in out WaypointInfoHudPaintableSingleton'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointInfoHudPaintableSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointInfoHudPaintableSingleton_Access is
      This : constant WaypointInfoHudPaintableSingleton_Access := new WaypointInfoHudPaintableSingleton;
   begin
      WaypointInfoHudPaintableSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointInfoHudPaintable_Access is
   begin
        return WaypointInfoHudPaintableSingleton_Package.instance;
   end getInstance;

begin
   null;
   instance := WaypointInfoHudPaintable_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package;


