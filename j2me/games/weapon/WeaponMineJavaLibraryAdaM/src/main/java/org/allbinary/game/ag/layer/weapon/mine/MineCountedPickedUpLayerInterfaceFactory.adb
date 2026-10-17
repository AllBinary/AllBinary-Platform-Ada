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


package body org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out MineCountedPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      This.weaponLayerCircularStaticPool := MineLayerCircularStaticPool_Package.getInstance;
      This.weaponProperties := WeaponProperties_Package.Create (-(1), -(1), 0, 8000, Short_Integer (10));
      This.smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   procedure init is
   begin
        MineCountedPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface := MineCountedPickedUpLayerInterfaceFactory_Package.Create;
   end init;

   procedure Initialize (This : in out MineCountedPickedUpLayerInterfaceFactory'Class) is
   begin
        CountedPickedUpLayerInterfaceFactory_Package.Initialize (This, PickedUpLayerTypeFactory_Package.getInstance.MINE, IconLayerFactory_Package.getInstance (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (MineWeaponResources_Package.getInstance.DROP_ICON_RESOURCE).getInstance (0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (MineWeaponResources_Package.getInstance.DROP_RESOURCE).getInstance (0));
        Initialize_Fields (This);
   end Initialize;

   function Create return MineCountedPickedUpLayerInterfaceFactory_Access is
      This : constant MineCountedPickedUpLayerInterfaceFactory_Access := new MineCountedPickedUpLayerInterfaceFactory;
   begin
      MineCountedPickedUpLayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return MineCountedPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface;
   end getInstance;

   function getTotal (This : in out MineCountedPickedUpLayerInterfaceFactory) return Integer is
   begin
        return 3;
   end getTotal;

   --  throws Exception
   function getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      sourceLayerInterface : AllBinaryLayer_Access;
      angle : Integer;
      scoreableInterface : ScoreableInterface_Access;
   begin
        sourceLayerInterface := AllBinaryLayer_Access (hashtable.get (Java_Object_Access (This.smallIntegerSingletonFactory.getAt (0))));
        angle := Integer (hashtable.get (Java_Object_Access (This.smallIntegerSingletonFactory.getAt (1))));
        scoreableInterface := ScoreableInterface_Access (sourceLayerInterface);
        return This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (sourceLayerInterface, x, y, z, Integer (angle.intValue), 0, This.weaponProperties, scoreableInterface);
   end getNextInstance;

   procedure getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := MineCountedPickedUpLayerInterfaceFactory'Class (This).getNextInstance (hashtable_Param, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInstance;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;

end org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;


