--  Generated Code Do Not Modify


with org.allbinary.game.testgamedemo.R_Package; use org.allbinary.game.testgamedemo.R_Package;
with org.allbinary.game.testgamedemo.R_Package_References;

package body org.allbinary.AndroidResources_Package is

   subtype R_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access;
   function "=" (Left, Right : R_Access) return Boolean renames org.allbinary.game.testgamedemo.R_Package_References."=";
   subtype R_Access_Array is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array;
   function "=" (Left, Right : R_Access_Array) return Boolean renames org.allbinary.game.testgamedemo.R_Package_References."=";
   subtype R_Access_Array_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access;
   function "=" (Left, Right : R_Access_Array_Access) return Boolean renames org.allbinary.game.testgamedemo.R_Package_References."=";
   subtype R_Access_Array_Access_Array is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access_Array;
   function "=" (Left, Right : R_Access_Array_Access_Array) return Boolean renames org.allbinary.game.testgamedemo.R_Package_References."=";
   subtype R_Access_Array_Access_Array_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access_Array_Access;
   function "=" (Left, Right : R_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.testgamedemo.R_Package_References."=";
   procedure Initialize_Fields (This : in out AndroidResources'Class) is
   begin
      null;
      This.drawable := drawable_Package.Create;
      This.id := id_Package.Create;
      This.layout := layout_Package.Create;
      This.raw := raw_Package.Create;
      This.string_Id := string_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidResources_Access is
      This : constant AndroidResources_Access := new AndroidResources;
   begin
      AndroidResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidResources_Access is
   begin
        return AndroidResources_Access (AndroidResources_Package.instance);
   end getInstance;

begin
   null;
   instance := AndroidResources_Package.Create;

end org.allbinary.AndroidResources_Package;


