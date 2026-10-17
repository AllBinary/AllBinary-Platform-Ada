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


package body org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package is

   procedure Initialize_Fields (This : in out MineLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MineLayerFactory'Class; viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface'Class) is
      viewPositionFactoryInterface : ViewPositionFactoryInterface_Access := ViewPositionFactoryInterface_Access (viewPositionFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.viewPositionFactoryInterface := viewPositionFactoryInterface;
   end Initialize;

   function Create (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface'Class) return MineLayerFactory_Access is
      This : constant MineLayerFactory_Access := new MineLayerFactory;
   begin
      MineLayerFactory_Package.Initialize (This.all, viewPositionFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out MineLayerFactory) return AllBinaryLayer_Access is
   begin
        return MineLayer_Package.Create (This.viewPositionFactoryInterface.getInstance);
   end getInstance;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;


