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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package body org.allbinary.game.health.HealthBarAnimation_Package is

   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   procedure Initialize_Fields (This : in out HealthBarAnimation'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.x2 := 0;
      This.thickness := 0;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBarAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      basicHudFactory : BasicHudFactory_Access;
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.allbinaryLayer := layerInterface;
        This.location := location;
        basicHudFactory := BasicHudFactory_Package.getInstance;
        if ((This.location) /= (basicHudFactory.TOPLEFT)) and then ((This.location) /= (basicHudFactory.BOTTOMLEFT)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Location Not Valid")));
        end if;
        if (layerInterface.getWidth) > (40) then
            This.thickness := 3;
        elsif (layerInterface.getWidth) > (20) then
            This.thickness := 2;
        else
            This.thickness := 1;
        end if;
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarAnimation_Access is
      This : constant HealthBarAnimation_Access := new HealthBarAnimation;
   begin
      HealthBarAnimation_Package.Initialize (This.all, layerInterface_Param, location);
      return This;
   end Create;

   procedure onHealthChange (This : in out HealthBarAnimation; newX2 : Integer) is
      quarter : Integer;
   begin
        This.x2 := newX2;
        quarter := (Java_Shift_Right_Arithmetic (This.allbinaryLayer.getWidth, 2));
        if (This.x2) > ((quarter) * (3)) then
            This.basicColor := This.basicColorFactory.GREEN;
            This.colorP := This.basicColor.intValue;
        elsif (This.x2) > ((quarter) * (2)) then
            This.basicColor := This.basicColorFactory.YELLOW;
            This.colorP := This.basicColor.intValue;
        elsif (This.x2) > (quarter) then
            This.basicColor := This.basicColorFactory.ORANGE;
            This.colorP := This.basicColor.intValue;
        else
            This.basicColor := This.basicColorFactory.RED;
            This.colorP := This.basicColor.intValue;
        end if;
   end onHealthChange;

   function getY (This : in out HealthBarAnimation) return Integer is
      basicHudFactory : BasicHudFactory_Access;
   begin
        basicHudFactory := BasicHudFactory_Package.getInstance;
        if (This.location) = (basicHudFactory.TOPLEFT) then
            return (This.allbinaryLayer.getViewPosition.getY) - (4);
        elsif (This.location) = (basicHudFactory.BOTTOMLEFT) then
            return (This.allbinaryLayer.getViewPosition.getY2) + (4);
        end if;
        return -(1);
   end getY;

end org.allbinary.game.health.HealthBarAnimation_Package;


