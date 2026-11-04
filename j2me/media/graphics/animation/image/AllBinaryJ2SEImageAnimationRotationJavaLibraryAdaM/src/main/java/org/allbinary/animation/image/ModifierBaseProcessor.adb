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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;

package body org.allbinary.animation.image.ModifierBaseProcessor_Package is

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
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ModifierBaseProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ModifierBaseProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ModifierBaseProcessor_Access is
      This : constant ModifierBaseProcessor_Access := new ModifierBaseProcessor;
   begin
      ModifierBaseProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ModifierBaseProcessor_Access is
   begin
        return ModifierBaseProcessor_Access (ModifierBaseProcessor_Package.instance);
   end getInstance;

   procedure updateColor (This : in out ModifierBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      imageModifierUtil : constant ImageModifierUtil_Access := ImageModifierUtil_Access (imageModifierUtil_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      imageToShow : constant Image_Access := Image_Access (imageToShow_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end updateColor;

   procedure updateAlpha (This : in out ModifierBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; alpha : Integer) is
      imageModifierUtil : constant ImageModifierUtil_Access := ImageModifierUtil_Access (imageModifierUtil_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      imageToShow : constant Image_Access := Image_Access (imageToShow_Param);
   begin
        null;
   end updateAlpha;

begin
   null;
   instance := ModifierBaseProcessor_Package.Create;

end org.allbinary.animation.image.ModifierBaseProcessor_Package;


