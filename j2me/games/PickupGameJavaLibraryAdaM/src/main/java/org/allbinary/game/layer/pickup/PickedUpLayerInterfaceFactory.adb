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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;
with org.allbinary.game.layer.pickup.IconLayer_Package; use org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package_References;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;

package body org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package is

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
   subtype IconLayer_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access;
   function "=" (Left, Right : IconLayer_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   procedure Initialize_Fields (This : in out PickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) is
      pickeUpLayerType : constant PickedUpLayerType_Access := PickedUpLayerType_Access (pickeUpLayerType_Param);
      iconLayer : constant IconLayer_Access := IconLayer_Access (iconLayer_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
      PickedUpLayerInterfaceFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.pickedUpLayerType := pickeUpLayerType;
        This.animationInterface := animationInterface;
        This.iconLayer := iconLayer;
   end Initialize;

   function Create (pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) return PickedUpLayerInterfaceFactory_Access is
      This : constant PickedUpLayerInterfaceFactory_Access := new PickedUpLayerInterfaceFactory;
   begin
      PickedUpLayerInterfaceFactory_Package.Initialize (This.all, pickeUpLayerType_Param, iconLayer_Param, animationInterface_Param);
      return This;
   end Create;

   function getIconLayer (This : in out PickedUpLayerInterfaceFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (This.iconLayer);
   end getIconLayer;

   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactory) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactory) return PickedUpLayerType_Access is
   begin
        return This.pickedUpLayerType;
   end getPickedUpLayerType;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;


