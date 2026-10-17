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


package body org.allbinary.game.resource.FeaturedResourceFactory_Package is

   procedure Initialize_Fields (This : in out FeaturedResourceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListD_Package.Create;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.ANIMATION_FEATURES := To_Unbounded_String ("Animation Features: Vector: ");
      This.IMAGE_LABEL := To_Unbounded_String (" Image: ");
      This.IMAGE_GRAPHICS_ARRAY := To_Unbounded_String ("Image Array: ");
      This.IMAGE_GRAPHICS_ROTATION := To_Unbounded_String ("Image Rotate: ");
      This.SPRITE_QUARTER := To_Unbounded_String (" Sprite Quarter: ");
      This.SPRITE_FULL := To_Unbounded_String (" Sprite Full: ");
      This.IS_LOADING_LEVEL_LABEL := To_Unbounded_String (" isLoadingLevel ");
      This.IS_FEATURE := To_Unbounded_String (" isFeature: ");
      This.GAME_FEATURE_CONTROLLED := To_Unbounded_String ("GameFeatureControlledInterface: ");
   end Initialize_Fields;


   procedure Initialize (This : in out FeaturedResourceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FeaturedResourceFactory_Access is
      This : constant FeaturedResourceFactory_Access := new FeaturedResourceFactory;
   begin
      FeaturedResourceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out FeaturedResourceFactory; level : Integer) is
      size : Integer;
      featureInterface : GameFeatureControlledInterface_Access;
      isLoadingLevel : Boolean;
      isFeature : Boolean;
      index : Integer;
      features : Features_Access;
      graphicsFeatureFactory : GraphicsFeatureFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        size := This.list.size;
        for index in 0 .. (size) - 1 loop
            featureInterface := GameFeatureControlledInterface_Access (This.list.objectArray (index));
            isLoadingLevel := featureInterface.isLoadingLevel (level);
            isFeature := featureInterface.isFeature;
            This.logUtil.putF (StringMaker_Package.Create.append (This.GAME_FEATURE_CONTROLLED).append (featureInterface.toString).append (This.IS_LOADING_LEVEL_LABEL).append (ResourceLoadingLevelFactory_Package.getInstance.getLevelString (level)).append (CommonSeps_Package.getInstance.COLON_SEP).appendboolean (isLoadingLevel).append (This.IS_FEATURE).appendboolean (isFeature).toString, FeaturedResourceFactory_Access'(This'Unchecked_Access), This.commonStrings.INIT);
            if (isLoadingLevel) and then (isFeature) then
                featureInterface.init (level);
            end if;
        end loop;
        features := Features_Package.getInstance;
        graphicsFeatureFactory := GraphicsFeatureFactory_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.ANIMATION_FEATURES);
        stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append (This.IMAGE_LABEL);
        stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.IMAGE_GRAPHICS));
        This.logUtil.putF (stringBuffer.toString, FeaturedResourceFactory_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        if features.isFeature (graphicsFeatureFactory.IMAGE_GRAPHICS) then
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (This.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append (This.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append (This.SPRITE_QUARTER);
            stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append (This.SPRITE_FULL);
            stringBuffer.appendboolean (features.isFeature (graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            This.logUtil.putF (stringBuffer.toString, FeaturedResourceFactory_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        end if;
   end init;

   procedure clear (This : in out FeaturedResourceFactory) is
   begin
        This.list.clear;
   end clear;

   procedure add (This : in out FeaturedResourceFactory; featureInterface_Param : access GameFeatureControlledInterface_Package.GameFeatureControlledInterface'Class) is
      featureInterface : constant GameFeatureControlledInterface_Access := GameFeatureControlledInterface_Access (featureInterface_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (featureInterface)).toString, FeaturedResourceFactory_Access'(This'Unchecked_Access), This.commonStrings.ADD);
        This.list.add (featureInterface);
   end add;

   function getList (This : in out FeaturedResourceFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

end org.allbinary.game.resource.FeaturedResourceFactory_Package;


