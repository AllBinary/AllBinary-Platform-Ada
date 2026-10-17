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


package body org.allbinary.game.resource.FeatureResourceInitializationUtil_Package is

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
        return FeatureResourceInitializationUtil_Package.instance;
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


