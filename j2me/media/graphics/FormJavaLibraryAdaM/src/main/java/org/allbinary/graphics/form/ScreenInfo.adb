--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.ScreenInfo_Package is

   procedure Initialize_Fields (This : in out ScreenInfo'Class) is
   begin
      null;
      This.SMALL_WIDTH := 320;
      This.SMALL_HEIGHT := 240;
      This.MEDIUM_WIDTH := 800;
      This.MEDIUM_HEIGHT := 600;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenInfo'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenInfo_Access is
      This : constant ScreenInfo_Access := new ScreenInfo;
   begin
      ScreenInfo_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScreenInfo_Access is
   begin
        return ScreenInfo_Package.instance;
   end getInstance;

begin
   null;
   instance := ScreenInfo_Package.Create;

end org.allbinary.graphics.form.ScreenInfo_Package;


