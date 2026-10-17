--  Generated Code Do Not Modify


package body org.allbinary.animation.vector.ARectangleFilledAnimation_Package is

   procedure Initialize_Fields (This : in out ARectangleFilledAnimation'Class) is
   begin
      null;
      This.x := 0;
      This.y := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ARectangleFilledAnimation'Class) is
   begin
        RectangleFilledAnimation_Package.Initialize (This, 0, 0, BasicColorFactory_Package.getInstance.BLACK);
        Initialize_Fields (This);
   end Initialize;

   function Create return ARectangleFilledAnimation_Access is
      This : constant ARectangleFilledAnimation_Access := new ARectangleFilledAnimation;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure nextFrame (This : in out ARectangleFilledAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out ARectangleFilledAnimation; graphics : Graphics_Access; unusedX : Integer; unusedY : Integer) is
   begin
        RectangleFilledAnimation (This).paintXY (graphics, This.x, This.y);
   end paintXY;

end org.allbinary.animation.vector.ARectangleFilledAnimation_Package;


