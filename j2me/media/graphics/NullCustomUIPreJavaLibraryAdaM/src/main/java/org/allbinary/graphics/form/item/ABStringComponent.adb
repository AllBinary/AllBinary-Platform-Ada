--  Generated Code Do Not Modify


with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package body org.allbinary.graphics.form.item.ABStringComponent_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out ABStringComponent'Class) is
   begin
      null;
   end Initialize_Fields;


   function getBackgroundBasicColor (This : in out ABStringComponent) return BasicColor_Access is
   begin
        return BasicColor_Access (BasicColorFactory_Package.getInstance.WHITE);
   end getBackgroundBasicColor;

   procedure Initialize (This : in out ABStringComponent'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABStringComponent_Access is
      This : constant ABStringComponent_Access := new ABStringComponent;
   begin
      ABStringComponent_Package.Initialize (This.all, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   function getForegroundBasicColor (This : in out ABStringComponent) return BasicColor_Access is
   begin
        return BasicColor_Access (BasicColorFactory_Package.getInstance.WHITE);
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out ABStringComponent; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        null;
   end setForegroundBasicColor;

begin
   null;
   NULL_STRING_COMPONENT := ABStringComponent_Package.Create (BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);

end org.allbinary.graphics.form.item.ABStringComponent_Package;


