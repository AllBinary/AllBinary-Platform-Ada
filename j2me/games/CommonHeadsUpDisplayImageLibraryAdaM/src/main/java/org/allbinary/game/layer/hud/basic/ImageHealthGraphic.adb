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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.AnimationInterface_Package_References;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with javax.microedition.lcdui.Font_Package;

package body org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype AnimationInterface_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access;
   function "=" (Left, Right : AnimationInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array;
   function "=" (Left, Right : AnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype AnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterface_Package_References."=";
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   function "=" (Left, Right : HealthInterface_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthInterface_Package_References."=";
   procedure Initialize_Fields (This : in out ImageHealthGraphic'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageHealthGraphic'Class; animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class; location : Integer; direction : Integer) is
      animationInterface : constant AnimationInterface_Access := AnimationInterface_Access (animationInterface_Param);
      healthInterface : constant HealthInterface_Access := HealthInterface_Access (healthInterface_Param);
      imageCacheFactory : ImageCacheFactory_Access;
      numOfHealth : Integer;
      index : Integer;
   begin
        HealthGraphic_Package.Initialize (This, animationInterface, healthInterface, location, direction);
        Initialize_Fields (This);
        This.image := new Image_Access_Array'(0 .. (This.healthInterface.getMaxHealth) - 1 => null);
        imageCacheFactory := ImageCacheFactory_Package.getInstance;
        for numOfHealth in 0 .. This.max loop
            This.image (numOfHealth) := imageCacheFactory.get (ImageHealthGraphic_Access'(This'Unchecked_Access), (numOfHealth) + ((1) * (10)), 10);
        end loop;
        for numOfHealth in 0 .. This.max loop
            for index in 0 .. (numOfHealth) - 1 loop
                This.animationInterface.paint (This.image (numOfHealth).getGraphics, (numOfHealth) * (10), 0);
            end loop;
        end loop;
   end Initialize;

   function Create (animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class; location : Integer; direction : Integer) return ImageHealthGraphic_Access is
      This : constant ImageHealthGraphic_Access := new ImageHealthGraphic;
   begin
      ImageHealthGraphic_Package.Initialize (This.all, animationInterface_Param, healthInterface_Param, location, direction);
      return This;
   end Create;

   procedure paint (This : in out ImageHealthGraphic; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.image (This.max), This.x, This.y, Anchor_Package.TOP_LEFT);
   end paint;

end org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package;


