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


package body org.allbinary.game.layer.pickup.IconLayerFactory_Package is

   procedure Initialize_Fields (This : in out IconLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out IconLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return IconLayerFactory_Access is
      This : constant IconLayerFactory_Access := new IconLayerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (animationInterface : Animation_Access; width : Integer; height : Integer) return IconLayer_Access is
   begin
        return IconLayer_Package.Create (animationInterface, width, height);
   end getInstance;

   procedure getInstance (animationInterface : Animation_Access; width : Integer; height : Integer) is
      Java_Result : constant IconLayer_Access := getInstance (animationInterface, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.pickup.IconLayerFactory_Package;


