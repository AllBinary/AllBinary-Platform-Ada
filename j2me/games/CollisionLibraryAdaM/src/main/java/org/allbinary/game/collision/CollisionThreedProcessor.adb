--  Generated Code Do Not Modify


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package body org.allbinary.game.collision.CollisionThreedProcessor_Package is

   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
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
      CollisionThreedProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      myLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer_Param);
      myLayer2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer2_Param);
   begin
        if ((((((myLayer2.getXP) >= (myLayer.getX2)) or else ((myLayer2.getYP) >= (myLayer.getY2))) or else ((myLayer2.getX2) <= (myLayer.getXP))) or else ((myLayer2.getY2) <= (myLayer.getYP))) or else ((myLayer2.getZP) < (myLayer.getZ2))) or else ((myLayer2.getZ2) > (myLayer.getZP)) then
            return False;
        else
            return True;
        end if;
   end isCollision;

   procedure isCollision (This : in out CollisionThreedProcessor; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := CollisionThreedProcessor'Class (This).isCollision (myLayer_Param => myLayer_Param, myLayer2_Param => myLayer2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

end org.allbinary.game.collision.CollisionThreedProcessor_Package;


