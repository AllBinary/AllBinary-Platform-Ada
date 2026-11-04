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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   procedure Initialize_Fields (This : in out CountedPickedUpLayerInterfaceFactoryPool'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactoryPool'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        return CountedPickedUpLayerInterfaceFactoryPool_Access (CountedPickedUpLayerInterfaceFactoryPool_Package.SINGLETON);
   end getInstance;

   procedure init is
   begin
        CountedPickedUpLayerInterfaceFactoryPool_Package.SINGLETON := CountedPickedUpLayerInterfaceFactoryPool_Package.Create;
   end init;

begin
   null;
   SINGLETON := CountedPickedUpLayerInterfaceFactoryPool_Package.Create;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;


