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


with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.game.part.PartInterface_Package;

package body org.allbinary.game.part.PartInterfaceUtil_Package is

   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   function "=" (Left, Right : PartInterface_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   procedure Initialize_Fields (This : in out PartInterfaceUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PartInterfaceUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PartInterfaceUtil_Access is
      This : constant PartInterfaceUtil_Access := new PartInterfaceUtil;
   begin
      PartInterfaceUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getZeroArray return PartInterface_Access_Array_Access is
   begin
        return PartInterfaceUtil_Package.SINGLETON;
   end getZeroArray;

begin
   null;
   SINGLETON := new PartInterface_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.game.part.PartInterfaceUtil_Package;


