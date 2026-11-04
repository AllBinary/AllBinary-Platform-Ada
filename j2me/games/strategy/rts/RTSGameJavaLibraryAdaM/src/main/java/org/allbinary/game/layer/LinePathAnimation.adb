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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;

package body org.allbinary.game.layer.LinePathAnimation_Package is

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
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   procedure Initialize_Fields (This : in out LinePathAnimation'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LinePathAnimation'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LinePathAnimation_Access is
      This : constant LinePathAnimation_Access := new LinePathAnimation;
   begin
      LinePathAnimation_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LinePathAnimation_Access is
   begin
        return LinePathAnimation_Access (LinePathAnimation_Package.instance);
   end getInstance;

   procedure paint (This : in out LinePathAnimation; graphics_Param : access Graphics_Package.Graphics'Class; point_Param : access GPoint_Package.GPoint'Class; nextPoint_Param : access GPoint_Package.GPoint'Class; tiledLayer_Param : access Layer_Package.Layer'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      nextPoint : constant GPoint_Access := GPoint_Access (nextPoint_Param);
      tiledLayer : constant Layer_Access := Layer_Access (tiledLayer_Param);
   begin
        graphics.drawLine (nextPoint.getX, nextPoint.getY, point.getX, point.getY);
   end paint;

begin
   null;
   instance := LinePathAnimation_Package.Create;

end org.allbinary.game.layer.LinePathAnimation_Package;


