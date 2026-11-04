-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;

package body org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package is

   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype PickedUpLayerType_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access;
   function "=" (Left, Right : PickedUpLayerType_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array;
   function "=" (Left, Right : PickedUpLayerType_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   subtype PickedUpLayerType_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References."=";
   procedure Initialize_Fields (This : in out PickedUpLayerInterfaceFactoryBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PickedUpLayerInterfaceFactoryBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PickedUpLayerInterfaceFactoryBase_Access is
      This : constant PickedUpLayerInterfaceFactoryBase_Access := new PickedUpLayerInterfaceFactoryBase;
   begin
      PickedUpLayerInterfaceFactoryBase_Package.Initialize (This.all);
      return This;
   end Create;


   function getIconLayer (This : in out PickedUpLayerInterfaceFactoryBase) return AllBinaryLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getIconLayer;

   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryBase) return Animation_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getAnimationInterface;

   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryBase) return PickedUpLayerType_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getPickedUpLayerType;

begin
   null;
   NULL_PICKED_UP_LAYER_FACTORY_BASE := PickedUpLayerInterfaceFactoryBase_Package.Create;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;


