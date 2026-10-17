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


package body org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package is

   procedure Initialize_Fields (This : in out CountedPickedUpLayerInterfaceFactoryPool'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactoryPool'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return CountedPickedUpLayerInterfaceFactoryPool_Access is
      This : constant CountedPickedUpLayerInterfaceFactoryPool_Access := new CountedPickedUpLayerInterfaceFactoryPool;
   begin
      CountedPickedUpLayerInterfaceFactoryPool_Package.Initialize (This.all);
      return This;
   end Create;

   function getList (This : in out CountedPickedUpLayerInterfaceFactoryPool) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

   function getInstance return CountedPickedUpLayerInterfaceFactoryPool_Access is
   begin
        return CountedPickedUpLayerInterfaceFactoryPool_Package.SINGLETON;
   end getInstance;

   procedure init is
   begin
        CountedPickedUpLayerInterfaceFactoryPool_Package.SINGLETON := CountedPickedUpLayerInterfaceFactoryPool_Package.Create;
   end init;

begin
   null;
   SINGLETON := CountedPickedUpLayerInterfaceFactoryPool_Package.Create;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;


