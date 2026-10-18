--  Generated Code Do Not Modify


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;

package body org.allbinary.graphics.form.item.ABCustomImageItem_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
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
        return NullImage_Package.NULL_IMAGE;
   end getImage;

end org.allbinary.graphics.form.item.ABCustomImageItem_Package;


