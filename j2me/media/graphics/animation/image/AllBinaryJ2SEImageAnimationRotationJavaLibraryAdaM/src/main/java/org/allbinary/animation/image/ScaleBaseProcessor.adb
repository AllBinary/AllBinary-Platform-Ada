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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package body org.allbinary.animation.image.ScaleBaseProcessor_Package is

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
   procedure Initialize_Fields (This : in out ScaleBaseProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScaleBaseProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScaleBaseProcessor_Access is
      This : constant ScaleBaseProcessor_Access := new ScaleBaseProcessor;
   begin
      ScaleBaseProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScaleBaseProcessor_Access is
   begin
        return ScaleBaseProcessor_Access (ScaleBaseProcessor_Package.instance);
   end getInstance;

   procedure update (This : in out ScaleBaseProcessor; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; imageToShowArray : Image_Access_Array_Access; index : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        null;
   end update;

begin
   null;
   instance := ScaleBaseProcessor_Package.Create;

end org.allbinary.animation.image.ScaleBaseProcessor_Package;


