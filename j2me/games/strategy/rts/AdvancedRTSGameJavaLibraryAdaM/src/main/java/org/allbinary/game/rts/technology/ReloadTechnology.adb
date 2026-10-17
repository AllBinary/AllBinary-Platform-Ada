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


package body org.allbinary.game.rts.technology.ReloadTechnology_Package is

   procedure Initialize_Fields (This : in out ReloadTechnology'Class) is
   begin
      null;
      This.level := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ReloadTechnology'Class; maxLevel : Integer) is
   begin
      Initialize_Fields (This);
        This.maxLevel := maxLevel;
   end Initialize;

   function Create (maxLevel : Integer) return ReloadTechnology_Access is
      This : constant ReloadTechnology_Access := new ReloadTechnology;
   begin
      Initialize (This.all, maxLevel);
      return This;
   end Create;

   function isCompleted (This : in out ReloadTechnology) return Boolean is
   begin
        return False;
   end isCompleted;

   function getPercentComplete (This : in out ReloadTechnology) return Integer is
   begin
        return 0;
   end getPercentComplete;

   function getLevel (This : in out ReloadTechnology) return Integer is
   begin
        return This.level;
   end getLevel;

   function getMaxLevel (This : in out ReloadTechnology) return Integer is
   begin
        return This.maxLevel;
   end getMaxLevel;

   function getCost (This : in out ReloadTechnology) return Integer is
   begin
        return 0;
   end getCost;

   procedure downgrade (This : in out ReloadTechnology) is
   begin
        null;
   end downgrade;

   function getDowngradeCost (This : in out ReloadTechnology) return Integer is
   begin
        return 0;
   end getDowngradeCost;

   function isDowngradeable (This : in out ReloadTechnology) return Boolean is
   begin
        return False;
   end isDowngradeable;

   function getUpgradeCost (This : in out ReloadTechnology) return Integer is
   begin
        return (((This.getLevel) * (This.getLevel))) * (1000);
   end getUpgradeCost;

   function isUpgradeable (This : in out ReloadTechnology) return Boolean is
   begin
        if (This.getLevel) < (This.getMaxLevel) then
            return True;
        else
            return False;
        end if;
   end isUpgradeable;

   procedure upgrade (This : in out ReloadTechnology) is
      unitTechnologySingletonFactory : UnitTechnologySingletonFactory_Access;
   begin
        This.level := This.level + 1;
        unitTechnologySingletonFactory := UnitTechnologySingletonFactory_Package.getInstance;
        unitTechnologySingletonFactory.setReload ((unitTechnologySingletonFactory.getReload) + (((This.getLevel) * (10))));
   end upgrade;

   function isSelfUpgradeable (This : in out ReloadTechnology) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

   procedure isCompleted (This : in out ReloadTechnology) is
      Java_Result : constant Boolean := ReloadTechnology'Class (This).isCompleted;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCompleted;

   procedure getPercentComplete (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getPercentComplete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPercentComplete;

   procedure getLevel (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLevel;

   procedure getMaxLevel (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getMaxLevel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxLevel;

   procedure getCost (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

   procedure getDowngradeCost (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getDowngradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDowngradeCost;

   procedure isDowngradeable (This : in out ReloadTechnology) is
      Java_Result : constant Boolean := ReloadTechnology'Class (This).isDowngradeable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDowngradeable;

   procedure getUpgradeCost (This : in out ReloadTechnology) is
      Java_Result : constant Integer := ReloadTechnology'Class (This).getUpgradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpgradeCost;

   procedure isUpgradeable (This : in out ReloadTechnology) is
      Java_Result : constant Boolean := ReloadTechnology'Class (This).isUpgradeable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUpgradeable;

   procedure isSelfUpgradeable (This : in out ReloadTechnology) is
      Java_Result : constant Boolean := ReloadTechnology'Class (This).isSelfUpgradeable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSelfUpgradeable;

end org.allbinary.game.rts.technology.ReloadTechnology_Package;


