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


package body org.allbinary.game.ag.layer.pickup.points.PointsResources_Package is

   procedure Initialize_Fields (This : in out PointsResources'Class) is
   begin
      null;
      This.RESOURCE := To_Unbounded_String ("points_drop_20_by_20.png");
      This.RESOURCE_2 := To_Unbounded_String ("points_2_drop_20_by_20.png");
      This.RESOURCE_3 := To_Unbounded_String ("points_3_drop_20_by_20.png");
      This.RESOURCE_4 := To_Unbounded_String ("points_4_drop_20_by_20.png");
   end Initialize_Fields;


   procedure Initialize (This : in out PointsResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PointsResources_Access is
      This : constant PointsResources_Access := new PointsResources;
   begin
      PointsResources_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return PointsResources_Access is
   begin
        return PointsResources_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := PointsResources_Package.Create;

end org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;


