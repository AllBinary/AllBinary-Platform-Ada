--  Generated Code Do Not Modify


package body org.allbinary.game.collision.CollisionProcessor_Package is

   procedure Initialize_Fields (This : in out CollisionProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollisionProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollisionProcessor_Access is
      This : constant CollisionProcessor_Access := new CollisionProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function isCollision (This : in out CollisionProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) return Boolean is
   begin
        return False;
   end isCollision;

   procedure isCollision (This : in out CollisionProcessor; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := CollisionProcessor'Class (This).isCollision (myLayer, myLayer2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.collision.CollisionProcessor_Package;


