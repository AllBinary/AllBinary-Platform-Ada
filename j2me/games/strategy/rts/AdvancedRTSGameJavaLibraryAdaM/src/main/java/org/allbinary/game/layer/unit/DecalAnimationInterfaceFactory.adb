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


with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.NullRotationAnimationFactory_Package; use org.allbinary.animation.NullRotationAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package body org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package NullRotationAnimationFactory_Package renames Standard.org.allbinary.animation.NullRotationAnimationFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   subtype BasicGameResources_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access;
   function "=" (Left, Right : BasicGameResources_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array;
   function "=" (Left, Right : BasicGameResources_Access_Array) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
        return DecalAnimationInterfaceFactory_Access (DecalAnimationInterfaceFactory_Package.instance);
   end getInstance;

   --  throws Exception
   function getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AnimationInterfaceFactoryInterface_Access is
      basicGameResources : constant BasicGameResources_Access := BasicGameResources_Access (basicGameResources_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        animationInterfaceFactoryInterface := null;
        if (basicColor) = (BasicColorFactory_Package.getInstance.RED) then
            animationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (basicGameResources.RESOURCE));
        else
            animationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullRotationAnimationFactory_Package.getFactoryInstance);
        end if;
        return animationInterfaceFactoryInterface;
   end getAnimationFactory;

   procedure getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant AnimationInterfaceFactoryInterface_Access := DecalAnimationInterfaceFactory'Class (This).getAnimationFactory (basicGameResources_Param => basicGameResources_Param, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationFactory;

begin
   null;
   instance := DecalAnimationInterfaceFactory_Package.Create;

end org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package;


