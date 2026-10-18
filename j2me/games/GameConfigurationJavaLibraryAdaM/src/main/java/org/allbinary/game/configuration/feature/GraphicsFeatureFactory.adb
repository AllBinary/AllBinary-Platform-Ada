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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out GraphicsFeatureFactory'Class) is
   begin
      null;
      This.NONE := GraphicsFeature_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
      This.TRANSPARENT_IMAGE_CREATION := GraphicsFeature_Package.Create (To_Unbounded_String ("Transparent Image Creation"));
      This.IMAGE_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("Image Graphics"));
      This.IMAGE_ROTATION_ON_THE_FLY := GraphicsFeature_Package.Create (To_Unbounded_String ("Image Rotated On The Fly"));
      This.IMAGE_TO_ARRAY_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("Image To Array Graphics"));
      This.SPRITE_QUARTER_ROTATION_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("Sprite Quarter Rotation Graphics"));
      This.SPRITE_FULL_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("Sprite Full Rotation Graphics"));
      This.VECTOR_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("BasicArrayList Graphics"));
      This.VECTOR_TO_IMAGE_GRAPHICS := GraphicsFeature_Package.Create (To_Unbounded_String ("BasicArrayList To Image Graphics"));
   end Initialize_Fields;


   function getInstance return GraphicsFeatureFactory_Access is
   begin
        return GraphicsFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GraphicsFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GraphicsFeatureFactory_Access is
      This : constant GraphicsFeatureFactory_Access := new GraphicsFeatureFactory;
   begin
      GraphicsFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GraphicsFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;


