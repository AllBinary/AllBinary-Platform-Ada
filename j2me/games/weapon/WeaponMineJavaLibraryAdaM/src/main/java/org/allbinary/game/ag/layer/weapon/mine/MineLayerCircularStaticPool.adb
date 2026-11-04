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


with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package; use org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;

package body org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package is

   subtype WeaponLayerCircularPool_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype ViewPositionFactoryInterface_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out MineLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MineLayerCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MineLayerCircularStaticPool_Access is
      This : constant MineLayerCircularStaticPool_Access := new MineLayerCircularStaticPool;
   begin
      MineLayerCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class) is
      viewPositionFactoryInterface : constant ViewPositionFactoryInterface_Access := ViewPositionFactoryInterface_Access (viewPositionFactoryInterface_Param);
   begin
        MineCountedPickedUpLayerInterfaceFactory_Package.init;
        MineLayerCircularStaticPool_Package.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool (MineLayerFactory_Package.Create (viewPositionFactoryInterface), 20);
   end init;

   function getInstance return WeaponLayerCircularPool_Access is
   begin
        return WeaponLayerCircularPool_Access (MineLayerCircularStaticPool_Package.WEAPON_LAYER_CIRCULAR_STATIC_POOL);
   end getInstance;

begin
   null;
   WEAPON_LAYER_CIRCULAR_STATIC_POOL := WeaponLayerCircularPool_Package.Create;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package;


