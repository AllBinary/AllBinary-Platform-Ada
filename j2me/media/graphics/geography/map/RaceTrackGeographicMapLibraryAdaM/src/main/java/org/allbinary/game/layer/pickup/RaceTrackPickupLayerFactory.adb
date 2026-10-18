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


with org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package; use org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;

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
      RaceTrackPickupLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out RaceTrackPickupLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (RaceTrackPickupLayer_Package.Create);
   end getInstance;

end org.allbinary.game.layer.pickup.RaceTrackPickupLayerFactory_Package;


