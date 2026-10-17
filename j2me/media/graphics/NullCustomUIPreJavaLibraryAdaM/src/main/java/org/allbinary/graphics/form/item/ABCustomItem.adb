--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABCustomItem_Package is

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

   procedure Initialize (This : in out ABCustomItem'Class; label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomItem_Access is
      This : constant ABCustomItem_Access := new ABCustomItem;
   begin
      Initialize (This.all, label, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure setOwner (This : in out ABCustomItem; owner : Screen_Access) is
   begin
        null;
   end setOwner;

   procedure paintXY (This : in out ABCustomItem; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        null;
   end paintXY;

   procedure paintUnselected (This : in out ABCustomItem; graphics : Graphics_Access; x : Integer; y : Integer) is
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

   procedure preMeasurement (This : in out ABCustomItem; graphics : Graphics_Access) is
   begin
        null;
   end preMeasurement;

   procedure getNullInstance is
      Java_Result : constant ABCustomItem_Access := getNullInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNullInstance;

   procedure isFocusable (This : in out ABCustomItem) is
      Java_Result : constant Boolean := ABCustomItem'Class (This).isFocusable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFocusable;

   procedure getLabel (This : in out ABCustomItem) is
      Java_Result : constant Unbounded_String := ABCustomItem'Class (This).getLabel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLabel;

   procedure getHeight (This : in out ABCustomItem) is
      Java_Result : constant Integer := ABCustomItem'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getValue (This : in out ABCustomItem) is
      Java_Result : constant Float := ABCustomItem'Class (This).getValue;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

   procedure getMinimumWidth (This : in out ABCustomItem) is
      Java_Result : constant Integer := ABCustomItem'Class (This).getMinimumWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMinimumWidth;

   procedure getMinimumHeight (This : in out ABCustomItem) is
      Java_Result : constant Integer := ABCustomItem'Class (This).getMinimumHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMinimumHeight;

begin
   null;
   NULL_CUSTOM_ITEM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.form.item.ABCustomItem_Package;


