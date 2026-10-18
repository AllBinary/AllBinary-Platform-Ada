--  Generated Code Do Not Modify



package body org.allbinary.game.collision.Collision2DProcessor_Package is

   procedure Initialize_Fields (This : in out Collision2DProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Collision2DProcessor'Class) is
   begin
      CollisionProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return Collision2DProcessor_Access is
      This : constant Collision2DProcessor_Access := new Collision2DProcessor;
   begin
      Collision2DProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function isCollision (This : in out Collision2DProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      myLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer_Param);
      myLayer2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer2_Param);
   begin
        if ((((myLayer2.getXP) >= (myLayer.getX2)) or else ((myLayer2.getYP) >= (myLayer.getY2))) or else ((myLayer2.getX2) <= (myLayer.getXP))) or else ((myLayer2.getY2) <= (myLayer.getYP)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   procedure isCollision (This : in out Collision2DProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := Collision2DProcessor'Class (This).isCollision (myLayer_Param => myLayer_Param, myLayer2_Param => myLayer2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.collision.Collision2DProcessor_Package;


