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


package body org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package is

   procedure Initialize_Fields (This : in out LifeLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LifeLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LifeLayerFactory_Access is
      This : constant LifeLayerFactory_Access := new LifeLayerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out LifeLayerFactory) return AllBinaryLayer_Access is
   begin
        return LifeLayer_Package.Create;
   end getInstance;

   procedure getInstance (This : in out LifeLayerFactory) is
      Java_Result : constant AllBinaryLayer_Access := LifeLayerFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package;


