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


with org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package; use org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package;

package body org.allbinary.game.rts.technology.RepairTechnology_Package is

   procedure Initialize_Fields (This : in out RepairTechnology'Class) is
   begin
      null;
      This.level := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RepairTechnology'Class; maxLevel : Integer) is
   begin
      Initialize_Fields (This);
        This.maxLevel := maxLevel;
   end Initialize;

   function Create (maxLevel : Integer) return RepairTechnology_Access is
      This : constant RepairTechnology_Access := new RepairTechnology;
   begin
      RepairTechnology_Package.Initialize (This.all, maxLevel);
      return This;
   end Create;

   function isCompleted (This : in out RepairTechnology) return Boolean is
   begin
        return False;
   end isCompleted;

   function getPercentComplete (This : in out RepairTechnology) return Integer is
   begin
        return 0;
   end getPercentComplete;

   function getLevel (This : in out RepairTechnology) return Integer is
   begin
        return This.level;
   end getLevel;

   function getMaxLevel (This : in out RepairTechnology) return Integer is
   begin
        return This.maxLevel;
   end getMaxLevel;

   function getCost (This : in out RepairTechnology) return Integer is
   begin
        return 0;
   end getCost;

   procedure downgrade (This : in out RepairTechnology) is
   begin
        null;
   end downgrade;

   function getDowngradeCost (This : in out RepairTechnology) return Integer is
   begin
        return 0;
   end getDowngradeCost;

   function isDowngradeable (This : in out RepairTechnology) return Boolean is
   begin
        return False;
   end isDowngradeable;

   function getUpgradeCost (This : in out RepairTechnology) return Integer is
   begin
        return (((RepairTechnology'Class (This).getLevel) * (RepairTechnology'Class (This).getLevel))) * (1000);
   end getUpgradeCost;

   function isUpgradeable (This : in out RepairTechnology) return Boolean is
   begin
        if (RepairTechnology'Class (This).getLevel) < (RepairTechnology'Class (This).getMaxLevel) then
            return True;
        else
            return False;
        end if;
   end isUpgradeable;

   procedure upgrade (This : in out RepairTechnology) is
      unitTechnologySingletonFactory : UnitTechnologySingletonFactory_Access;
   begin
        This.level := This.level + 1;
        unitTechnologySingletonFactory := UnitTechnologySingletonFactory_Package.getInstance;
        unitTechnologySingletonFactory.setRepair ((unitTechnologySingletonFactory.getRepair) + (((RepairTechnology'Class (This).getLevel) * (10))));
   end upgrade;

   function isSelfUpgradeable (This : in out RepairTechnology) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

end org.allbinary.game.rts.technology.RepairTechnology_Package;


