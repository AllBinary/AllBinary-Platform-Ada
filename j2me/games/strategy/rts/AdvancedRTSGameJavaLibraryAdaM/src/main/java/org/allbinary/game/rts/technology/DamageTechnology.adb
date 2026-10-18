-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.rts.technology.DamageTechnology_Package is

   procedure Initialize_Fields (This : in out DamageTechnology'Class) is
   begin
      null;
      This.level := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DamageTechnology'Class; maxLevel : Integer) is
   begin
      Initialize_Fields (This);
        This.maxLevel := maxLevel;
   end Initialize;

   function Create (maxLevel : Integer) return DamageTechnology_Access is
      This : constant DamageTechnology_Access := new DamageTechnology;
   begin
      DamageTechnology_Package.Initialize (This.all, maxLevel);
      return This;
   end Create;

   function isCompleted (This : in out DamageTechnology) return Boolean is
   begin
        return False;
   end isCompleted;

   function getPercentComplete (This : in out DamageTechnology) return Integer is
   begin
        return 0;
   end getPercentComplete;

   function getLevel (This : in out DamageTechnology) return Integer is
   begin
        return This.level;
   end getLevel;

   function getMaxLevel (This : in out DamageTechnology) return Integer is
   begin
        return This.maxLevel;
   end getMaxLevel;

   function getCost (This : in out DamageTechnology) return Integer is
   begin
        return 0;
   end getCost;

   procedure downgrade (This : in out DamageTechnology) is
   begin
        null;
   end downgrade;

   function getDowngradeCost (This : in out DamageTechnology) return Integer is
   begin
        return 0;
   end getDowngradeCost;

   function isDowngradeable (This : in out DamageTechnology) return Boolean is
   begin
        return False;
   end isDowngradeable;

   function getUpgradeCost (This : in out DamageTechnology) return Integer is
   begin
        return (((DamageTechnology'Class (This).getLevel) * (DamageTechnology'Class (This).getLevel))) * (1000);
   end getUpgradeCost;

   function isUpgradeable (This : in out DamageTechnology) return Boolean is
   begin
        if (DamageTechnology'Class (This).getLevel) < (DamageTechnology'Class (This).getMaxLevel) then
            return True;
        else
            return False;
        end if;
   end isUpgradeable;

   procedure upgrade (This : in out DamageTechnology) is
      unitTechnologySingletonFactory : UnitTechnologySingletonFactory_Access;
   begin
        This.level := This.level + 1;
        unitTechnologySingletonFactory := UnitTechnologySingletonFactory_Package.getInstance;
        unitTechnologySingletonFactory.setDamage ((unitTechnologySingletonFactory.getDamage) + (((DamageTechnology'Class (This).getLevel) * (100))));
   end upgrade;

   function isSelfUpgradeable (This : in out DamageTechnology) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

end org.allbinary.game.rts.technology.DamageTechnology_Package;


