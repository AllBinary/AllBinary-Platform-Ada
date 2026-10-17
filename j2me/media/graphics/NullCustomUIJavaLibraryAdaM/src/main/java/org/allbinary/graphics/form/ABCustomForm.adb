--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.ABCustomForm_Package is

   procedure Initialize_Fields (This : in out ABCustomForm'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ABCustomForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
      CustomScreen_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomForm_Access is
      This : constant ABCustomForm_Access := new ABCustomForm;
   begin
      Initialize (This.all, title, items, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   function getAllitems (This : in out ABCustomForm) return ABCustomItem_Access_Array_Access is
   begin
        return new ABCustomItem_Access_Array'(0 .. (0) - 1 => null);
   end getAllitems;

   function size (This : in out ABCustomForm) return Integer is
   begin
        return 0;
   end size;

   procedure setSelectedIndex (This : in out ABCustomForm; index : Integer) is
   begin
        null;
   end setSelectedIndex;

   function getSelectedIndex (This : in out ABCustomForm) return Integer is
   begin
        return 0;
   end getSelectedIndex;

   procedure deleteAll (This : in out ABCustomForm) is
   begin
        null;
   end deleteAll;

   procedure delete (This : in out ABCustomForm; itemNum : Integer) is
   begin
        null;
   end delete;

   function append (This : in out ABCustomForm; item : ABCustomItem_Access) return Integer is
   begin
        return -(1);
   end append;

   procedure insert (This : in out ABCustomForm; itemNum : Integer; item : ABCustomItem_Access) is
   begin
        null;
   end insert;

   procedure set (This : in out ABCustomForm; itemNum : Integer; item : ABCustomItem_Access) is
   begin
        null;
   end set;

   function get (This : in out ABCustomForm; itemNum : Integer) return ABCustomItem_Access is
   begin
        return ABCustomItem_Package.getNullInstance;
   end get;

   function getWidth (This : in out ABCustomForm) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWidth;

   procedure paint (This : in out ABCustomForm; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   function getTitle (This : in out ABCustomForm) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getTitle;

   procedure getAllitems (This : in out ABCustomForm) is
      Java_Result : constant ABCustomItem_Access_Array_Access := ABCustomForm'Class (This).getAllitems;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllitems;

   procedure size (This : in out ABCustomForm) is
      Java_Result : constant Integer := ABCustomForm'Class (This).size;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end size;

   procedure getSelectedIndex (This : in out ABCustomForm) is
      Java_Result : constant Integer := ABCustomForm'Class (This).getSelectedIndex;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedIndex;

   procedure append (This : in out ABCustomForm; item : ABCustomItem_Access) is
      Java_Result : constant Integer := ABCustomForm'Class (This).append (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end append;

   procedure get (This : in out ABCustomForm; itemNum : Integer) is
      Java_Result : constant ABCustomItem_Access := ABCustomForm'Class (This).get (itemNum);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getWidth (This : in out ABCustomForm) is
      Java_Result : constant Integer := ABCustomForm'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getTitle (This : in out ABCustomForm) is
      Java_Result : constant Unbounded_String := ABCustomForm'Class (This).getTitle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTitle;

end org.allbinary.graphics.form.ABCustomForm_Package;


