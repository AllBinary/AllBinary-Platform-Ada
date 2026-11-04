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
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package; use org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;

package body org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
   procedure Initialize_Fields (This : in out CountedPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) is
      pickeUpLayerType : constant PickedUpLayerType_Access := PickedUpLayerType_Access (pickeUpLayerType_Param);
      iconLayer : constant IconLayer_Access := IconLayer_Access (iconLayer_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      list : BasicArrayList_Access;
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, pickeUpLayerType, iconLayer, animationInterface);
        Initialize_Fields (This);
        list := CountedPickedUpLayerInterfaceFactoryPool_Package.getInstance.getList;
        This.id := list.size;
        list.add (CountedPickedUpLayerInterfaceFactory_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) return CountedPickedUpLayerInterfaceFactory_Access is
      This : constant CountedPickedUpLayerInterfaceFactory_Access := new CountedPickedUpLayerInterfaceFactory;
   begin
      CountedPickedUpLayerInterfaceFactory_Package.Initialize (This.all, pickeUpLayerType_Param, iconLayer_Param, animationInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
        return null;
   end getNextInstance;

   function getTotal (This : in out CountedPickedUpLayerInterfaceFactory) return Integer is
   begin
        return -(1);
   end getTotal;

   function getId (This : in out CountedPickedUpLayerInterfaceFactory) return Integer is
   begin
        return This.id;
   end getId;

   procedure getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := CountedPickedUpLayerInterfaceFactory'Class (This).getNextInstance (hashtable_Param => hashtable_Param, x => x, y => y, z => z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInstance;

begin
   null;
   NULL_COUNTED_PICKUP_LAYER_FACTORY := CountedPickedUpLayerInterfaceFactory_Package.Create (PickedUpLayerTypeFactory_Package.getInstance.NONE, IconLayer_Package.NULL_ICON_LAYER, NullAnimationFactory_Package.getFactoryInstance.getInstance (0));

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;


