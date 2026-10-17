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


package body org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out DecalAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DecalAnimationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DecalAnimationInterfaceFactory_Access is
      This : constant DecalAnimationInterfaceFactory_Access := new DecalAnimationInterfaceFactory;
   begin
      DecalAnimationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DecalAnimationInterfaceFactory_Access is
   begin
        return DecalAnimationInterfaceFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources : BasicGameResources_Access; basicColor : BasicColor_Access) return AnimationInterfaceFactoryInterface_Access is
      animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        animationInterfaceFactoryInterface := null;
        if (basicColor) = (BasicColorFactory_Package.getInstance.RED) then
            animationInterfaceFactoryInterface := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (basicGameResources.RESOURCE);
        else
            animationInterfaceFactoryInterface := NullRotationAnimationFactory_Package.getFactoryInstance;
        end if;
        return animationInterfaceFactoryInterface;
   end getAnimationFactory;

   procedure getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources : BasicGameResources_Access; basicColor : BasicColor_Access) is
      Java_Result : constant AnimationInterfaceFactoryInterface_Access := DecalAnimationInterfaceFactory'Class (This).getAnimationFactory (basicGameResources, basicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationFactory;

begin
   null;
   instance := DecalAnimationInterfaceFactory_Package.Create;

end org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package;


