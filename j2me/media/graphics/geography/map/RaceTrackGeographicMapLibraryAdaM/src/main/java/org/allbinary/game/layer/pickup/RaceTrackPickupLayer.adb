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


package body org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package is

   procedure Initialize_Fields (This : in out RaceTrackPickupLayer'Class) is
   begin
      null;
      This.viewPositionEventHandler := ViewPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RaceTrackPickupLayer'Class) is
   begin
        PickupLayer_Package.Initialize (This, NAME, RemoteInfo_Package.REMOTE_INFO, 0, CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory_Package.getFactoryInstance.getInstance (0), Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), TileLayerPositionIntoViewPosition_Package.Create);
        Initialize_Fields (This);
   end Initialize;

   function Create return RaceTrackPickupLayer_Access is
      This : constant RaceTrackPickupLayer_Access := new RaceTrackPickupLayer;
   begin
      RaceTrackPickupLayer_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setTiledLayer (This : in out RaceTrackPickupLayer; tiledLayer_Param : access AllBinaryTiledLayer'Class) is
      tiledLayer : AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      viewPosition : TileLayerPositionIntoViewPosition_Access;
   begin
        viewPosition := TileLayerPositionIntoViewPosition_Access (This.getViewPosition);
        viewPosition.setTiledLayer (tiledLayer);
        This.viewPositionEventHandler.addListener (AllBinaryLayer_Access (RaceTrackPickupLayer_Access'(This'Unchecked_Access)));
   end setTiledLayer;

   procedure setDestroyed (This : in out RaceTrackPickupLayer; destroyed : Boolean) is
   begin
        PickupLayer (This).setDestroyed (destroyed);
        if This.isDestroyed then
            This.viewPositionEventHandler.removeListener (RaceTrackPickupLayer_Access'(This'Unchecked_Access));
        end if;
   end setDestroyed;

begin
   null;
   NAME := To_Unbounded_String ("RaceTrackPickupLayer");

end org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;


