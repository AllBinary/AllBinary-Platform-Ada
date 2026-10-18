-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package is

   procedure Initialize_Fields (This : in out TileMapPlacementVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TileMapPlacementVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TileMapPlacementVisitor_Access is
      This : constant TileMapPlacementVisitor_Access := new TileMapPlacementVisitor;
   begin
      TileMapPlacementVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure visit (This : in out TileMapPlacementVisitor; lastMap_Param : access TiledMap_Package.TiledMap'Class; mapData : Integer_Array_Access_Array_Access) is
      lastMap : constant TiledMap_Access := TiledMap_Access (lastMap_Param);
   begin
        null;
   end visit;

end org.allbinary.game.behavior.topview.placement.TileMapPlacementVisitor_Package;


