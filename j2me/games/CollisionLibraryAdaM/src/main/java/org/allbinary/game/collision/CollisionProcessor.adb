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
      CollisionProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      myLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer_Param);
      myLayer2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer2_Param);
   begin
        return False;
   end isCollision;

   procedure isCollision (This : in out CollisionProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := CollisionProcessor'Class (This).isCollision (myLayer_Param, myLayer2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.collision.CollisionProcessor_Package;


