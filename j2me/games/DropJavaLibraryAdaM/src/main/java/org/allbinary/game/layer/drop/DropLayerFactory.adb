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


with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;

package body org.allbinary.game.layer.drop.DropLayerFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   procedure Initialize_Fields (This : in out DropLayerFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DropLayerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DropLayerFactory_Access is
      This : constant DropLayerFactory_Access := new DropLayerFactory;
   begin
      DropLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out DropLayerFactory) is
   begin
        This.list.clear;
   end clear;

   function getInstance return DropLayerFactory_Access is
   begin
        return DropLayerFactory_Access (DropLayerFactory_Package.DROP_LAYER_FACTORY);
   end getInstance;

   function getSize (This : in out DropLayerFactory) return Integer is
   begin
        return This.list.size;
   end getSize;

   function getRandomInstance (This : in out DropLayerFactory) return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return PickedUpLayerInterfaceFactoryInterface_Access (This.basicArrayListUtil.getRandom (This.list));
   end getRandomInstance;

   procedure add (This : in out DropLayerFactory; layerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class) is
      layerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        This.list.add (PickedUpLayerInterfaceFactoryInterface_Package.Java_Object_Access_From_PickedUpLayerInterfaceFactoryInterface (layerInterfaceFactoryInterface));
   end add;

   function getList (This : in out DropLayerFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

begin
   null;
   DROP_LAYER_FACTORY := DropLayerFactory_Package.Create;

end org.allbinary.game.layer.drop.DropLayerFactory_Package;


