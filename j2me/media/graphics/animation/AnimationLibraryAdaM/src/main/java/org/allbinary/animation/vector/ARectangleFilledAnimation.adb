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
      ARectangleFilledAnimation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure nextFrame (This : in out ARectangleFilledAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out ARectangleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; unusedX : Integer; unusedY : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        RectangleFilledAnimation (This).paintXY (graphics, This.x, This.y);
   end paintXY;

end org.allbinary.animation.vector.ARectangleFilledAnimation_Package;


