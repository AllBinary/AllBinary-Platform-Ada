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


package body org.allbinary.game.layer.Aggression_Package is

   procedure Initialize_Fields (This : in out Aggression'Class) is
   begin
      null;
      This.ram := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
      This.projectile := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
      This.drops := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
   end Initialize_Fields;


   procedure Initialize (This : in out Aggression'Class; ram : Integer; projectile : Integer; drops : Integer) is
   begin
      Initialize_Fields (This);
        This.setRam (ram);
        This.setProjectile (projectile);
        This.setDrops (drops);
   end Initialize;

   function Create (ram : Integer; projectile : Integer; drops : Integer) return Aggression_Access is
      This : constant Aggression_Access := new Aggression;
   begin
      Initialize (This.all, ram, projectile, drops);
      return This;
   end Create;

   function getRam (This : in out Aggression) return Integer is
   begin
        return This.ram;
   end getRam;

   procedure setRam (This : in out Aggression; ram : Integer) is
   begin
        This.ram := ram;
   end setRam;

   function getProjectile (This : in out Aggression) return Integer is
   begin
        return This.projectile;
   end getProjectile;

   procedure setProjectile (This : in out Aggression; projectile : Integer) is
   begin
        This.projectile := projectile;
   end setProjectile;

   function getDrops (This : in out Aggression) return Integer is
   begin
        return This.drops;
   end getDrops;

   procedure setDrops (This : in out Aggression; drops : Integer) is
   begin
        This.drops := drops;
   end setDrops;

   procedure getRam (This : in out Aggression) is
      Java_Result : constant Integer := Aggression'Class (This).getRam;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRam;

   procedure getProjectile (This : in out Aggression) is
      Java_Result : constant Integer := Aggression'Class (This).getProjectile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProjectile;

   procedure getDrops (This : in out Aggression) is
      Java_Result : constant Integer := Aggression'Class (This).getDrops;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDrops;

end org.allbinary.game.layer.Aggression_Package;


