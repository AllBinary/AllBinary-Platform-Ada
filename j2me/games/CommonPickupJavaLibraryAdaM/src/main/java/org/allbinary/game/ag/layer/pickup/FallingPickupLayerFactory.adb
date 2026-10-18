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


with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package; use org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;

package body org.allbinary.game.ag.layer.pickup.FallingPickupLayerFactory_Package is

   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   procedure Initialize_Fields (This : in out FallingPickupLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FallingPickupLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FallingPickupLayerFactory_Access is
      This : constant FallingPickupLayerFactory_Access := new FallingPickupLayerFactory;
   begin
      FallingPickupLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out FallingPickupLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (FallingPickupLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO));
   end getInstance;

end org.allbinary.game.ag.layer.pickup.FallingPickupLayerFactory_Package;


