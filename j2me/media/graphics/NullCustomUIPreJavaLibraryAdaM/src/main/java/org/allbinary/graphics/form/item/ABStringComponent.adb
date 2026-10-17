--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABStringComponent_Package is

   procedure Initialize_Fields (This : in out ABStringComponent'Class) is
   begin
      null;
   end Initialize_Fields;


   function getBackgroundBasicColor (This : in out ABStringComponent) return BasicColor_Access is
   begin
        return BasicColorFactory_Package.getInstance.WHITE;
   end getBackgroundBasicColor;

   procedure Initialize (This : in out ABStringComponent'Class; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABStringComponent_Access is
      This : constant ABStringComponent_Access := new ABStringComponent;
   begin
      Initialize (This.all, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   function getForegroundBasicColor (This : in out ABStringComponent) return BasicColor_Access is
   begin
        return BasicColorFactory_Package.getInstance.WHITE;
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out ABStringComponent; foregroundBasicColor : BasicColor_Access) is
   begin
        null;
   end setForegroundBasicColor;

   procedure getBackgroundBasicColor (This : in out ABStringComponent) is
      Java_Result : constant BasicColor_Access := ABStringComponent'Class (This).getBackgroundBasicColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBackgroundBasicColor;

   procedure getForegroundBasicColor (This : in out ABStringComponent) is
      Java_Result : constant BasicColor_Access := ABStringComponent'Class (This).getForegroundBasicColor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForegroundBasicColor;

begin
   null;
   NULL_STRING_COMPONENT := ABStringComponent_Package.Create (BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);

end org.allbinary.graphics.form.item.ABStringComponent_Package;


