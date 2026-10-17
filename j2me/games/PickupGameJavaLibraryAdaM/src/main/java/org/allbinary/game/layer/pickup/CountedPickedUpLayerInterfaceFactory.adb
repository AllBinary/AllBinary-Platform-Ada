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


package body org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out CountedPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType'Class; iconLayer_Param : access IconLayer'Class; animationInterface_Param : access Animation'Class) is
      pickeUpLayerType : PickedUpLayerType_Access := PickedUpLayerType_Access (pickeUpLayerType_Param);
      iconLayer : IconLayer_Access := IconLayer_Access (iconLayer_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      list : BasicArrayList_Access;
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, pickeUpLayerType, iconLayer, animationInterface);
        Initialize_Fields (This);
        list := CountedPickedUpLayerInterfaceFactoryPool_Package.getInstance.getList;
        This.id := list.size;
        list.add (CountedPickedUpLayerInterfaceFactory_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (pickeUpLayerType_Param : access PickedUpLayerType'Class; iconLayer_Param : access IconLayer'Class; animationInterface_Param : access Animation'Class) return CountedPickedUpLayerInterfaceFactory_Access is
      This : constant CountedPickedUpLayerInterfaceFactory_Access := new CountedPickedUpLayerInterfaceFactory;
   begin
      CountedPickedUpLayerInterfaceFactory_Package.Initialize (This.all, pickeUpLayerType_Param, iconLayer_Param, animationInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end getNextInstance;

   function getTotal (This : in out CountedPickedUpLayerInterfaceFactory) return Integer is
   begin
        return -(1);
   end getTotal;

   function getId (This : in out CountedPickedUpLayerInterfaceFactory) return Integer is
   begin
        return This.id;
   end getId;

   procedure getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := CountedPickedUpLayerInterfaceFactory'Class (This).getNextInstance (hashtable_Param, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextInstance;

begin
   null;
   NULL_COUNTED_PICKUP_LAYER_FACTORY := CountedPickedUpLayerInterfaceFactory_Package.Create (PickedUpLayerTypeFactory_Package.getInstance.NONE, IconLayer_Package.NULL_ICON_LAYER, NullAnimationFactory_Package.getFactoryInstance.getInstance (0));

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;


