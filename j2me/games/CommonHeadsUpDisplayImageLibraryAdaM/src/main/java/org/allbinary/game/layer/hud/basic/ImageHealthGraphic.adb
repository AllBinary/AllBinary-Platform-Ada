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


package body org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package is

   procedure Initialize_Fields (This : in out ImageHealthGraphic'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageHealthGraphic'Class; animationInterface : AnimationInterface_Access; healthInterface : HealthInterface_Access; location : Integer; direction : Integer) is
      imageCacheFactory : ImageCacheFactory_Access;
      numOfHealth : Integer;
      index : Integer;
   begin
        HealthGraphic_Package.Initialize (This, animationInterface, healthInterface, location, direction);
        Initialize_Fields (This);
        This.image := new Image_Access_Array'(0 .. (This.healthInterface.getMaxHealth) - 1 => null);
        imageCacheFactory := ImageCacheFactory_Package.getInstance;
        for numOfHealth in 0 .. This.max loop
            This.image (numOfHealth) := imageCacheFactory.get (This'Unchecked_Access, (numOfHealth) + ((1) * (10)), 10);
        end loop;
        for numOfHealth in 0 .. This.max loop
            for index in 0 .. (numOfHealth) - 1 loop
                This.animationInterface.paint (This.image (numOfHealth).getGraphics, (numOfHealth) * (10), 0);
            end loop;
        end loop;
   end Initialize;

   function Create (animationInterface : AnimationInterface_Access; healthInterface : HealthInterface_Access; location : Integer; direction : Integer) return ImageHealthGraphic_Access is
      This : constant ImageHealthGraphic_Access := new ImageHealthGraphic;
   begin
      Initialize (This.all, animationInterface, healthInterface, location, direction);
      return This;
   end Create;

   procedure paint (This : in out ImageHealthGraphic; graphics : Graphics_Access) is
   begin
        graphics.drawImage (This.image (This.max), This.x, This.y, Anchor_Package.TOP_LEFT);
   end paint;

end org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package;


