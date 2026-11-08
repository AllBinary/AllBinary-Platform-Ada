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
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.game.layer.pickup.IconLayer_Package; use org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package_References;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with javax.microedition.lcdui.Image_Package;

package body org.allbinary.game.layer.pickup.IconLayerFactory_Package is

   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype IconLayer_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access;
   function "=" (Left, Right : IconLayer_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   subtype IconLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IconLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayer_Package_References."=";
   procedure Initialize_Fields (This : in out IconLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out IconLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return IconLayerFactory_Access is
      This : constant IconLayerFactory_Access := new IconLayerFactory;
   begin
      IconLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return IconLayer_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return IconLayer_Package.Create (animationInterface, width, height);
   end getInstance;

   procedure getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) is
      Java_Result : constant IconLayer_Access := getInstance (animationInterface_Param => animationInterface_Param, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.pickup.IconLayerFactory_Package;


