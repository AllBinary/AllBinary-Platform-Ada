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


package body org.allbinary.game.layer.LayerPlacementTypeFactory_Package is

   procedure Initialize_Fields (This : in out LayerPlacementTypeFactory'Class) is
   begin
      null;
      This.MAP := LayerPlacementType_Package.Create (Integer_Package.MAX_VALUE);
      This.LEFT := LayerPlacementType_Package.Create (DirectionFactory_Package.getInstance.LEFT.getValue);
      This.DOWN := LayerPlacementType_Package.Create (DirectionFactory_Package.getInstance.DOWN.getValue);
      This.UP := LayerPlacementType_Package.Create (DirectionFactory_Package.getInstance.UP.getValue);
      This.RIGHT := LayerPlacementType_Package.Create (DirectionFactory_Package.getInstance.RIGHT.getValue);
   end Initialize_Fields;

   procedure Initialize (This : in out LayerPlacementTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerPlacementTypeFactory_Access is
      This : constant LayerPlacementTypeFactory_Access := new LayerPlacementTypeFactory;
   begin
      LayerPlacementTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerPlacementTypeFactory_Access is
   begin
        return LayerPlacementTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := LayerPlacementTypeFactory_Package.Create;

end org.allbinary.game.layer.LayerPlacementTypeFactory_Package;


