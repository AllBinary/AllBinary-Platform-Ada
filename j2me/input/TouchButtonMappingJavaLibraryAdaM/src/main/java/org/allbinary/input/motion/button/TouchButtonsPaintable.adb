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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package; use org.allbinary.input.motion.button.TouchButtonFactory_Package;
with org.allbinary.input.motion.button.TouchButtonFactory_Package_References;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.input.motion.button.TouchButtonsPaintable_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype TouchButtonFactory_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access;
   function "=" (Left, Right : TouchButtonFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array;
   function "=" (Left, Right : TouchButtonFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   subtype TouchButtonFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonFactory_Package_References.TouchButtonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonFactory_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonsPaintable'Class) is
   begin
      null;
      
      
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.touchButtonFactory := TouchButtonFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonsPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.foregroundBasicColor := basicColor;
        This.foregroundColor := basicColor.intValue;
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsPaintable_Access is
      This : constant TouchButtonsPaintable_Access := new TouchButtonsPaintable;
   begin
      TouchButtonsPaintable_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure paint (This : in out TouchButtonsPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      list : BasicArrayList_Access;
      touchButton : TouchButton_Access;
      index : Integer;
   begin
        list := This.touchButtonFactory.getList;
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.foregroundBasicColor, This.foregroundColor);
        touchButton := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            touchButton := TouchButton_Access (list.objectArray (index));
            touchButton.paint (graphics);
        end loop;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            touchButton := TouchButton_Access (list.objectArray (index));
            touchButton.paintHint (graphics);
        end loop;
   end paint;

end org.allbinary.input.motion.button.TouchButtonsPaintable_Package;


