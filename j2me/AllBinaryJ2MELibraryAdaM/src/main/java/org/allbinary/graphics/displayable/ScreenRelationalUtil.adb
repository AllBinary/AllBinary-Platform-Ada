--  Generated Code Do Not Modify


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;

package body org.allbinary.graphics.displayable.ScreenRelationalUtil_Package is

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
   procedure Initialize_Fields (This : in out ScreenRelationalUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenRelationalUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenRelationalUtil_Access is
      This : constant ScreenRelationalUtil_Access := new ScreenRelationalUtil;
   begin
      ScreenRelationalUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScreenRelationalUtil_Access is
   begin
        return ScreenRelationalUtil_Access (ScreenRelationalUtil_Package.instance);
   end getInstance;

   function getScaleImage (This : in out ScreenRelationalUtil; image_Param : access Image_Package.Image'Class) return Float is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return ScreenRelationalUtil'Class (This).getScaleWH (image.getWidth, image.getHeight);
   end getScaleImage;

   function getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Float is
   begin
        return ScreenRelationalUtil'Class (This).getScaleWHA (aWidth, aHeight, 20);
   end getScaleWH;

   function getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Float is
      displayInfoSingleton : DisplayInfoSingleton_Access;
      last : Integer_Array_Access;
      width : Float;
      height : Float;
      largestSize : Float;
      scale : Float;
   begin
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        last := displayInfoSingleton.getLast;
        width := Float (last (displayInfoSingleton.WIDTH));
        height := Float (last (displayInfoSingleton.HEIGHT));
        largestSize := width;
        if (largestSize) < (height) then
            largestSize := height;
        end if;
        scale := ((largestSize)) / (Float (aWidth));
        return scale;
   end getScaleWHA;

   function getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) return Integer is
   begin
        return Integer (((ScreenRelationalUtil'Class (This).getScaleWH (aWidth, aHeight)) * (Float (aHeight))));
   end getScaledHeight;

   function getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) return Integer is
   begin
        return Integer (((ScreenRelationalUtil'Class (This).getScaleWHA (aWidth, aHeight, add)) * (Float (aHeight))));
   end getScaledHeightAdd;

   procedure getScaleImage (This : in out ScreenRelationalUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Float := ScreenRelationalUtil'Class (This).getScaleImage (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaleImage;

   procedure getScaleWH (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) is
      Java_Result : constant Float := ScreenRelationalUtil'Class (This).getScaleWH (aWidth => aWidth, aHeight => aHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaleWH;

   procedure getScaleWHA (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) is
      Java_Result : constant Float := ScreenRelationalUtil'Class (This).getScaleWHA (aWidth => aWidth, aHeight => aHeight, add => add);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaleWHA;

   procedure getScaledHeight (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer) is
      Java_Result : constant Integer := ScreenRelationalUtil'Class (This).getScaledHeight (aWidth => aWidth, aHeight => aHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaledHeight;

   procedure getScaledHeightAdd (This : in out ScreenRelationalUtil; aWidth : Integer; aHeight : Integer; add : Integer) is
      Java_Result : constant Integer := ScreenRelationalUtil'Class (This).getScaledHeightAdd (aWidth => aWidth, aHeight => aHeight, add => add);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaledHeightAdd;

begin
   null;
   instance := ScreenRelationalUtil_Package.Create;

end org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;


