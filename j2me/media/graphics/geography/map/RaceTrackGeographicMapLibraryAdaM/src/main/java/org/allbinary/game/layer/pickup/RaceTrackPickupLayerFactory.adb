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


package body org.allbinary.game.layer.pickup.RaceTrackPickupLayerFactory_Package is

   procedure Initialize_Fields (This : in out RaceTrackPickupLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RaceTrackPickupLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RaceTrackPickupLayerFactory_Access is
      This : constant RaceTrackPickupLayerFactory_Access := new RaceTrackPickupLayerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out RaceTrackPickupLayerFactory) return AllBinaryLayer_Access is
   begin
        return RaceTrackPickupLayer_Package.Create;
   end getInstance;

   procedure getInstance (This : in out RaceTrackPickupLayerFactory) is
      Java_Result : constant AllBinaryLayer_Access := RaceTrackPickupLayerFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.pickup.RaceTrackPickupLayerFactory_Package;


