--  Generated Code Do Not Modify


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.form.item.ABCustomItem_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out ABCustomItem'Class) is
   begin
      null;
   end Initialize_Fields;


   function getNullInstance return ABCustomItem_Access is
   begin
        if (ABCustomItem_Package.NULL_CUSTOM_ITEM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ABCustomItem_Package.NULL_CUSTOM_ITEM := ABCustomItem_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return ABCustomItem_Access (ABCustomItem_Package.NULL_CUSTOM_ITEM);
   end getNullInstance;

   procedure Initialize (This : in out ABCustomItem'Class; label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (label : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomItem_Access is
      This : constant ABCustomItem_Access := new ABCustomItem;
   begin
      ABCustomItem_Package.Initialize (This.all, label, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure setOwner (This : in out ABCustomItem; owner_Param : access Screen_Package.Screen'Class) is
      owner : constant Screen_Access := Screen_Access (owner_Param);
   begin
        null;
   end setOwner;

   procedure paintXY (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintXY;

   procedure paintUnselected (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintUnselected;

   function isFocusable (This : in out ABCustomItem) return Boolean is
   begin
        return False;
   end isFocusable;

   function getLabel (This : in out ABCustomItem) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getLabel;

   procedure setLabel (This : in out ABCustomItem; label : Unbounded_String) is
   begin
        null;
   end setLabel;

   function getHeight (This : in out ABCustomItem) return Integer is
   begin
        return 0;
   end getHeight;

   procedure setHeight (This : in out ABCustomItem; height : Integer) is
   begin
        null;
   end setHeight;

   function getValue (This : in out ABCustomItem) return Float is
   begin
        return 0.0;
   end getValue;

   procedure setValue (This : in out ABCustomItem; value : Float) is
   begin
        null;
   end setValue;

   function getMinimumWidth (This : in out ABCustomItem) return Integer is
   begin
        return 0;
   end getMinimumWidth;

   function getMinimumHeight (This : in out ABCustomItem) return Integer is
   begin
        return 0;
   end getMinimumHeight;

   procedure preMeasurement (This : in out ABCustomItem; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end preMeasurement;

begin
   null;
   NULL_CUSTOM_ITEM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.form.item.ABCustomItem_Package;


