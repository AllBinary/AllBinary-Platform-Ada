-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.game.layer.SpriteFactory_Package is

   procedure Initialize_Fields (This : in out SpriteFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SpriteFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpriteFactory_Access is
      This : constant SpriteFactory_Access := new SpriteFactory;
   begin
      SpriteFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SpriteFactory_Access is
   begin
        return SpriteFactory_Package.instance;
   end getInstance;

   function createSprite (This : in out SpriteFactory; image_Param : access Image_Package.Image'Class; frameWidth : Integer; frameHeight : Integer) return Sprite_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return Sprite_Package.Create (image, frameWidth, frameHeight);
   end createSprite;

   procedure createSprite (This : in out SpriteFactory; image_Param : access Image_Package.Image'Class; frameWidth : Integer; frameHeight : Integer) is
      Java_Result : constant Sprite_Access := SpriteFactory'Class (This).createSprite (image_Param => image_Param, frameWidth => frameWidth, frameHeight => frameHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSprite;

begin
   null;
   instance := SpriteFactory_Package.Create;

end org.allbinary.game.layer.SpriteFactory_Package;


