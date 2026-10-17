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


package body org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package is

   procedure Initialize_Fields (This : in out UnitTechnologySingletonFactory'Class) is
   begin
      null;
      This.damage := 0;
      This.health := 0;
      This.reload := 0;
      This.repair := 0;
      This.speed := 0;
   end Initialize_Fields;


   function getInstance return UnitTechnologySingletonFactory_Access is
   begin
        return UnitTechnologySingletonFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out UnitTechnologySingletonFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UnitTechnologySingletonFactory_Access is
      This : constant UnitTechnologySingletonFactory_Access := new UnitTechnologySingletonFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out UnitTechnologySingletonFactory) is
   begin
        This.setDamage (0);
        This.setHealth (0);
        This.setReload (0);
        This.setRepair (0);
        This.setSpeed (0);
   end init;

   function getDamage (This : in out UnitTechnologySingletonFactory) return Integer is
   begin
        return This.damage;
   end getDamage;

   procedure setDamage (This : in out UnitTechnologySingletonFactory; damage : Integer) is
   begin
        This.damage := damage;
   end setDamage;

   function getHealth (This : in out UnitTechnologySingletonFactory) return Integer is
   begin
        return This.health;
   end getHealth;

   procedure setHealth (This : in out UnitTechnologySingletonFactory; health : Integer) is
   begin
        This.health := health;
   end setHealth;

   function getReload (This : in out UnitTechnologySingletonFactory) return Integer is
   begin
        return This.reload;
   end getReload;

   procedure setReload (This : in out UnitTechnologySingletonFactory; reload : Integer) is
   begin
        This.reload := reload;
   end setReload;

   function getRepair (This : in out UnitTechnologySingletonFactory) return Integer is
   begin
        return This.repair;
   end getRepair;

   procedure setRepair (This : in out UnitTechnologySingletonFactory; repair : Integer) is
   begin
        This.repair := repair;
   end setRepair;

   function getSpeed (This : in out UnitTechnologySingletonFactory) return Integer is
   begin
        return This.speed;
   end getSpeed;

   procedure setSpeed (This : in out UnitTechnologySingletonFactory; speed : Integer) is
   begin
        This.speed := speed;
   end setSpeed;

   procedure getInstance is
      Java_Result : constant UnitTechnologySingletonFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getDamage (This : in out UnitTechnologySingletonFactory) is
      Java_Result : constant Integer := UnitTechnologySingletonFactory'Class (This).getDamage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

   procedure getHealth (This : in out UnitTechnologySingletonFactory) is
      Java_Result : constant Integer := UnitTechnologySingletonFactory'Class (This).getHealth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealth;

   procedure getReload (This : in out UnitTechnologySingletonFactory) is
      Java_Result : constant Integer := UnitTechnologySingletonFactory'Class (This).getReload;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReload;

   procedure getRepair (This : in out UnitTechnologySingletonFactory) is
      Java_Result : constant Integer := UnitTechnologySingletonFactory'Class (This).getRepair;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRepair;

   procedure getSpeed (This : in out UnitTechnologySingletonFactory) is
      Java_Result : constant Integer := UnitTechnologySingletonFactory'Class (This).getSpeed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpeed;

begin
   null;
   instance := UnitTechnologySingletonFactory_Package.Create;

end org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package;


