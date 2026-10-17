--  Generated Code Do Not Modify


package body org.allbinary.game.collision.CollisionThreedProcessor_Package is

   procedure Initialize_Fields (This : in out CollisionThreedProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollisionThreedProcessor'Class) is
   begin
      CollisionProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CollisionThreedProcessor_Access is
      This : constant CollisionThreedProcessor_Access := new CollisionThreedProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function isCollision (This : in out CollisionThreedProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) return Boolean is
   begin
        if ((((((myLayer2.getXP) >= (myLayer.getX2)) or else ((myLayer2.getYP) >= (myLayer.getY2))) or else ((myLayer2.getX2) <= (myLayer.getXP))) or else ((myLayer2.getY2) <= (myLayer.getYP))) or else ((myLayer2.getZP) < (myLayer.getZ2))) or else ((myLayer2.getZ2) > (myLayer.getZP)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   procedure isCollision (This : in out CollisionThreedProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := CollisionThreedProcessor'Class (This).isCollision (myLayer, myLayer2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.collision.CollisionThreedProcessor_Package;


