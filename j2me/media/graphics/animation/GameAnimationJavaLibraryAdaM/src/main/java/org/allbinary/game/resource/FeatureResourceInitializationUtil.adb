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


with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.resource.FeaturedResourceFactory_Package; use org.allbinary.game.resource.FeaturedResourceFactory_Package;
with org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package; use org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;
with org.allbinary.game.resource.FeaturedResourceFactory_Package;
with org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;

package body org.allbinary.game.resource.FeatureResourceInitializationUtil_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out FeatureResourceInitializationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out FeatureResourceInitializationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FeatureResourceInitializationUtil_Access is
      This : constant FeatureResourceInitializationUtil_Access := new FeatureResourceInitializationUtil;
   begin
      FeatureResourceInitializationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FeatureResourceInitializationUtil_Access is
   begin
        return FeatureResourceInitializationUtil_Access (FeatureResourceInitializationUtil_Package.instance);
   end getInstance;

   --  throws Exception
   procedure init (This : in out FeatureResourceInitializationUtil; level : Integer) is
      commonStrings : CommonStrings_Access;
      featuredResourceFactory : FeaturedResourceFactory_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (commonStrings.START, FeatureResourceInitializationUtil_Access'(This'Unchecked_Access), commonStrings.INIT);
        featuredResourceFactory := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance;
        featuredResourceFactory.init (level);
        FeaturedResourceRelativeRelationshipFactory_Package.getInstance.init (level);
   end init;

begin
   null;
   instance := FeatureResourceInitializationUtil_Package.Create;

end org.allbinary.game.resource.FeatureResourceInitializationUtil_Package;


