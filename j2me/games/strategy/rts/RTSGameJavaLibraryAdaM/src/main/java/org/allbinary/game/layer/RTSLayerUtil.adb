-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.RTSLayerUtil_Package is

   procedure Initialize_Fields (This : in out RTSLayerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.MAX_RELOAD_TIME := (Long_Long_Integer (Integer_Package.MAX_VALUE)) / (100000);
   end Initialize_Fields;

   procedure Initialize (This : in out RTSLayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RTSLayerUtil_Access is
      This : constant RTSLayerUtil_Access := new RTSLayerUtil;
   begin
      RTSLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSLayerUtil_Access is
   begin
        return RTSLayerUtil_Package.instance;
   end getInstance;

   function createWeaponProperties (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access; currentLevel : Integer; lastLevel : Integer) return WeaponProperties_Access is
      reloadTime : Long_Long_Integer;
      newWeaponProperties : WeaponProperties_Access;
   begin
        reloadTime := weaponProperties.getReloadTime;
        if (lastLevel) > (currentLevel) then
            reloadTime := (reloadTime) + (50);
        elsif (lastLevel) < (currentLevel) then
            reloadTime := (reloadTime) - (50);
        end if;
        newWeaponProperties := WeaponProperties_Package.Create (reloadTime, weaponProperties.getTargetingTime, weaponProperties.getSpeed.getUnscaled, ((weaponProperties.getDamage) / (lastLevel)) * (currentLevel), weaponProperties.getDissipation);
        return newWeaponProperties;
   end createWeaponProperties;

   procedure downgrade (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) is
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      index : Integer;
   begin
        rtsLayer.setLevel ((rtsLayer.getLevel) - (1));
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            partInterface.setWeaponProperties (This.createWeaponProperties (partInterface.getWeaponProperties, rtsLayer.getLevel, (rtsLayer.getLevel) + (1)));
        end loop;
        rtsLayer.select_Id;
   end downgrade;

   procedure upgrade (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) is
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      index : Integer;
   begin
        rtsLayer.setLevel ((rtsLayer.getLevel) + (1));
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            partInterface.setWeaponProperties (This.createWeaponProperties (partInterface.getWeaponProperties, rtsLayer.getLevel, (rtsLayer.getLevel) - (1)));
        end loop;
        rtsLayer.select_Id;
   end upgrade;

   function getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) return Long_Long_Integer is
   begin
        return (((((cost) * (cost)) * (cost))) / (((cost) * (1000))));
   end getCostExponential;

   function getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access) return Integer is
      cost : Long_Long_Integer;
   begin
        cost := (((weaponProperties.getDamage) + (weaponProperties.getRange)) + ((Java_Shift_Right_Arithmetic (((This.MAX_RELOAD_TIME) / (weaponProperties.getReloadTime)), 1))));
        cost := This.getCostExponential (cost);
        return Integer (cost);
   end getWeaponPropertiesCost;

   function getCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer is
      total : Integer;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      index : Integer;
   begin
        total := 0;
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        weaponProperties := null;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            total := (total) + (This.getWeaponPropertiesCost (weaponProperties));
        end loop;
        return total;
   end getCost;

   function getDowngradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer is
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      downgradeCost : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      downgradeWeaponCost : Integer;
      currentWeaponCost : Integer;
      index : Integer;
   begin
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        downgradeCost := 0;
        partInterface := null;
        weaponProperties := null;
        downgradeWeaponCost := 0;
        currentWeaponCost := 0;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            downgradeWeaponCost := This.getWeaponPropertiesCost (This.createWeaponProperties (weaponProperties, (rtsLayer.getLevel) - (1), rtsLayer.getLevel));
            currentWeaponCost := This.getWeaponPropertiesCost (weaponProperties);
            downgradeCost := (downgradeCost) + (((currentWeaponCost) - (downgradeWeaponCost)));
        end loop;
        downgradeCost := ((downgradeCost) * (9)) / (10);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Total Cost: ")).appendint (downgradeCost).toString, This'Unchecked_Access, To_Unbounded_String ("getDowngradeCost"));
        return downgradeCost;
   end getDowngradeCost;

   function getUpgradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) return Integer is
      upgradeCost : Integer;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      partInterface : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      upgradedWeaponCost : Integer;
      currentWeaponCost : Integer;
      index : Integer;
   begin
        upgradeCost := 0;
        partInterfaceArray := rtsLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        partInterface := null;
        weaponProperties := null;
        upgradedWeaponCost := 0;
        currentWeaponCost := 0;
        for index in reverse 0 .. (size) - (1) loop
            partInterface := BasicWeaponPart_Access (partInterfaceArray (index));
            weaponProperties := partInterface.getWeaponProperties;
            upgradedWeaponCost := This.getWeaponPropertiesCost (This.createWeaponProperties (weaponProperties, (rtsLayer.getLevel) + (1), rtsLayer.getLevel));
            currentWeaponCost := This.getWeaponPropertiesCost (weaponProperties);
            upgradeCost := (upgradeCost) + (((upgradedWeaponCost) - (currentWeaponCost)));
        end loop;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Total Cost: ")).appendint (upgradeCost).toString, This'Unchecked_Access, To_Unbounded_String ("getUpgradeCost"));
        return upgradeCost;
   end getUpgradeCost;

   --  throws Exception
   procedure destroyAndClear (This : in out RTSLayerUtil; list : BasicArrayList_Access) is
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        rtsLayer := null;
        for index in reverse 0 .. (list.size) - (1) loop
            rtsLayer := RTSLayer_Access (list.get (index));
            rtsLayer.setDestroyed (True);
        end loop;
        list.clear;
   end destroyAndClear;

   function createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
      layerManager : FakeLayerManager_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        layerManager := FakeLayerManager_Package.Create (GameInfo_Package.NONE);
        layerManager.setGeographicMapInterface (new BasicGeographicMap_Access_Array'(0 => baseRaceTrackGeographicMap));
        hashtable.put (AllBinaryGameLayerManager_Package.ID, layerManager);
        hashtable.put (DirectionFactory_Package.getInstance.NAME, DirectionFactory_Package.getInstance.LEFT);
        hashtable.put (This.groupCommonFactory.ID, BasicGroupFactory_Package.getInstance.NONE_ARRAY);
        return hashtable;
   end createFakeRTSLayerHashtable;

   procedure createWeaponProperties (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access; currentLevel : Integer; lastLevel : Integer) is
      Java_Result : constant WeaponProperties_Access := RTSLayerUtil'Class (This).createWeaponProperties (weaponProperties, currentLevel, lastLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWeaponProperties;

   procedure getCostExponential (This : in out RTSLayerUtil; cost : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := RTSLayerUtil'Class (This).getCostExponential (cost);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCostExponential;

   procedure getWeaponPropertiesCost (This : in out RTSLayerUtil; weaponProperties : WeaponProperties_Access) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getWeaponPropertiesCost (weaponProperties);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWeaponPropertiesCost;

   procedure getCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getCost (rtsLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

   procedure getDowngradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getDowngradeCost (rtsLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDowngradeCost;

   procedure getUpgradeCost (This : in out RTSLayerUtil; rtsLayer : RTSLayer_Access) is
      Java_Result : constant Integer := RTSLayerUtil'Class (This).getUpgradeCost (rtsLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpgradeCost;

   procedure createFakeRTSLayerHashtable (This : in out RTSLayerUtil; baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access) is
      Java_Result : constant ABHashtable_Access := RTSLayerUtil'Class (This).createFakeRTSLayerHashtable (baseRaceTrackGeographicMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFakeRTSLayerHashtable;

begin
   null;
   instance := RTSLayerUtil_Package.Create;

end org.allbinary.game.layer.RTSLayerUtil_Package;


