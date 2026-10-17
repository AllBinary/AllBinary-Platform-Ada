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


package body org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package is

   procedure Initialize_Fields (This : in out AllAnimationsEverywhereTileMapPlacementVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllAnimationsEverywhereTileMapPlacementVisitor'Class) is
   begin
      TileMapPlacementVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AllAnimationsEverywhereTileMapPlacementVisitor_Access is
      This : constant AllAnimationsEverywhereTileMapPlacementVisitor_Access := new AllAnimationsEverywhereTileMapPlacementVisitor;
   begin
      AllAnimationsEverywhereTileMapPlacementVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure visit (This : in out AllAnimationsEverywhereTileMapPlacementVisitor; lastMap_Param : access TiledMap'Class; mapData : Integer_Array_Access_Array_Access) is
      lastMap : TiledMap_Access := TiledMap_Access (lastMap_Param);
      size : Integer;
      size2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        size := mapData'Length;
        size2 := (mapData (0)'Length) - (7);
        for index in 0 .. (size) - 1 loop
            index2 := 0;
            while (index2) < (size2) loop
                mapData (index) (index2) := 1;
                mapData (index) ((index2) + (1)) := 17;
                mapData (index) ((index2) + (2)) := 33;
                mapData (index) ((index2) + (3)) := 49;
                mapData (index) ((index2) + (4)) := 65;
                mapData (index) ((index2) + (5)) := 81;
                mapData (index) ((index2) + (6)) := 97;
                index2 := (index2) + (7);
            end loop;
        end loop;
   end visit;

end org.allbinary.game.behavior.topview.placement.AllAnimationsEverywhereTileMapPlacementVisitor_Package;


