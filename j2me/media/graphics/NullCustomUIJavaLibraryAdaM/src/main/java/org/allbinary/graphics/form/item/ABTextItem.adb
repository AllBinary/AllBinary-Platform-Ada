--  Generated Code Do Not Modify


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package; use org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;

package body org.allbinary.graphics.form.item.ABTextItem_Package is

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
   subtype ABStringComponent_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access;
   function "=" (Left, Right : ABStringComponent_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   subtype ABStringComponent_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABStringComponent_Package_References.ABStringComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStringComponent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABStringComponent_Package_References."=";
   procedure Initialize_Fields (This : in out ABTextItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CustomCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextItem_Access is
      This : constant ABTextItem_Access := new ABTextItem;
   begin
      ABTextItem_Package.Initialize (This.all, label, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure keyPressed (This : in out ABTextItem; keyCode : Integer) is
   begin
        null;
   end keyPressed;

   procedure paintUnselected (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintUnselected;

   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access is
   begin
        return ABStringComponent_Access (ABStringComponent_Package.NULL_STRING_COMPONENT);
   end getLabelStringComponent;

end org.allbinary.graphics.form.item.ABTextItem_Package;


