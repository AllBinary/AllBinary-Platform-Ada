--  Generated Code Do Not Modify


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package body org.allbinary.graphics.form.item.ABCustomImageItem_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
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
   procedure Initialize_Fields (This : in out ABCustomImageItem'Class) is
   begin
      null;
      This.yOffset := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ABCustomImageItem'Class; label : Unbounded_String; image_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; yOffset : Integer) is
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        ABCustomItem_Package.Initialize (This, label, basicColor, basicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (label : Unbounded_String; image_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; yOffset : Integer) return ABCustomImageItem_Access is
      This : constant ABCustomImageItem_Access := new ABCustomImageItem;
   begin
      ABCustomImageItem_Package.Initialize (This.all, label, image_Param, layout, altText, basicColor_Param, yOffset);
      return This;
   end Create;

   function getImage (This : in out ABCustomImageItem) return Image_Access is
   begin
        return Image_Access (NullImage_Package.NULL_IMAGE);
   end getImage;

end org.allbinary.graphics.form.item.ABCustomImageItem_Package;


